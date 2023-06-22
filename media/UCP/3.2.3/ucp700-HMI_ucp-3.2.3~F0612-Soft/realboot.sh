#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
#set -x

# import common functions for all reliability tests
# . ../common-functions/common-functions.sh

TEST_NAME="REALBOOT"

if [ $# -ne "6" ]
then
	printf "Usage %s SSH_USER SSH_PASS SSH_IP REBOOTS PLATFORM REBOOT_TYPE\n" "$(basename "${0}")"
	exit 1
else
	SSH_USER=${1}
	SSH_PASS=${2}
	SSH_IP=${3}
	REBOOTS=${4}
        PLATFORM=${5}
	REBOOT_TYPE=${6}
fi

#-----------------------------------------------------------------------------------------------
# Check build dependencies, and install if necessary
#-----------------------------------------------------------------------------------------------
function check_dependency(){

        if [ -z "${1}" ]
        then
                printf "Usage: check_dependency package. name\n"
                exit 1
        fi

        printf "Checking if dependency "${1}" is installed or not...\n"
        set +e
        PKG_OK=$(dpkg-query -W --showformat='${Status}\n' "${1}" |grep "install ok installed")
        echo Checking for "${1}": $PKG_OK
        if [ "" == "$PKG_OK" ]; then
                echo "Package not found. Installing...\n"
                sudo apt-get -y install "${1}"
        fi
        set -e
}

check_dependency sshpass


#SSH_IP=$(grep -A1 "${SSH_ALIAS}" /etc/ssh/ssh_config | tail -n1 | awk '{print $2}' | tr -d '\n')

#SSH_PASS="comfort"

SSH_ARGS='-o ProxyCommand=none -o StrictHostKeyChecking=no  -o UserKnownHostsFile=/dev/null -o ServerAliveInterval=2 -o LogLevel=ERROR' 
# -o UserKnownHostsFile=/dev/null -o ServerAliveInterval=2 -o LogLevel=ERROR"
SSH_ALIAS="${SSH_USER}@${SSH_IP}"

SSH_PORT="22"

REBOOT_TEST_COUNT=${REBOOTS}
REBOOT_COUNTER=1


# Lets set a consistent date-time format
DATETIME_FORMAT="%d-%m-%Y-%H-%M-%S"


function seperator(){
	printf " --------------\n"

}

function get_revo(){
	REVO_ORIG=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dd if=/dev/vg_sys/lv_revo bs=1024 |sha256sum")
}

function get_mainvo(){
	MAINVO_ORIG=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dd if=/dev/vg_sys/lv_mainvo bs=1024 skip=2|sha256sum")
}

function get_os_info(){
	OS_INFO=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "cat /etc/issue | head -n1")
	if [ -z "${OS_INFO}" ]
	then
		OS_INFO="UNKNOWN"
	fi
}


function get_hw_type(){
    if [ "$PLATFORM" = "ubp" ]; then
	HW_TYPE=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "tr -d '\0' </sys/firmware/devicetree/base/siemens/hmi/device-name")
        HW_TYPE=$(sed 's/ /_/g' <<<"$HW_TYPE")
    else
        HW_TYPE=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dmidecode | grep -i \"Product Name\" | head -n1 | awk '{print \$3}'")
    fi
    if [ -z "${HW_TYPE}" ]
	then
		HW_TYPE="UNKNOWN"
	fi
}

function get_cb_vers(){
	if [ "$PLATFORM" = "ubp" ]; then
		CB_VERS=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "tr -d '\0' </sys/firmware/devicetree/base/siemens/hmi/coreboot-version")	
	else
		CB_VERS=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dmidecode | grep -i \"Ver\" | head -n1 | awk '{print \$2}'")
	fi
	if [ -z "${CB_VERS}" ]
	then
		CB_VERS="UNKNOWN"
	fi

}

function get_img_vers(){
	# IMG_VERS=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "grep -i \"build number\" /c2g-release | awk '{print \$3}'")
	IMG_VERS=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "grep -i 'BUILD_ID' /etc/mel-os/os-release")
	if [ -z ${IMG_VERS} ]
	then
		IMG_VERS="UNKNOWN"
	fi

}


function get_systemd-analyze(){
	SYSANA=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "systemd-analyze")
}


function get_systemd-analyze-blame(){
	SYSANABLAME=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "systemd-analyze blame --no-pager") 
}

#Let us record test start time so that we can print it to Markdown as well
TEST_START_TIME=$(date +"${DATETIME_FORMAT}")


# Lets define some temporary files for telemetry
FINDMNTFILE="/tmp/findmnt-${TEST_START_TIME}"
IPAFILE="/tmp/ipa-${TEST_START_TIME}"
DMESGFILE="/tmp/dmesg-${TEST_START_TIME}"
SYSTEMCTLFILE="/tmp/systemctl-${TEST_START_TIME}"
JOURNALCTLFILE="/tmp/journalctl-${TEST_START_TIME}"
DEGRADED_SERVICES_FILE="/tmp/degraded-${TEST_START_TIME}"


# Lets define some functions that will be used later to get these telemetry data
function get_findmnt(){	
	FINDMNTFILE=$1

	printf "Getting findmnt into %s \n" ${FINDMNTFILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "findmnt > ${FINDMNTFILE}" 
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${FINDMNTFILE}" "${FINDMNTFILE}" 
}


function get_ipa(){
	IPAFILE=$1

	printf "Getting ip a into %s \n" ${IPAFILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "ip a > ${IPAFILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${IPAFILE}" "${IPAFILE}" 
}


function get_dmesg(){
	DMESGFILE=$1
	DMESGERROR="No Error"
	printf "Getting dmesg into %s \n" ${DMESGFILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "dmesg > ${DMESGFILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${DMESGFILE}" "${DMESGFILE}"
	ssh ${SSH_ARGS} ${SSH_ALIAS} "dmesg | grep -i 'call trace'"
	if [ $? -eq 1 ]; then
			DMESGERROR="Error"
	fi

}


function get_systemctl(){
	SYSTEMCTLFILE=$1

	printf "Getting systemctl into %s \n" ${SYSTEMCTLFILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "systemctl > ${SYSTEMCTLFILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${SYSTEMCTLFILE}" "${SYSTEMCTLFILE}"
}


function get_journalctl(){
	JOURNALCTLFILE=$1

	printf "Getting journalctl into %s \n" ${JOURNALCTLFILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "journalctl > ${JOURNALCTLFILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${JOURNALCTLFILE}" "${JOURNALCTLFILE}"
}

function get_degraded_services(){
	DEGRADED_SERVICES_FILE=$1

	printf "Getting degraded-services into %s \n" ${DEGRADED_SERVICES_FILE}
	ssh ${SSH_ARGS} ${SSH_ALIAS} "systemctl | grep -i fail > ${DEGRADED_SERVICES_FILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${DEGRADED_SERVICES_FILE}" "${DEGRADED_SERVICES_FILE}"
}


PLOTFILE="systemd_analyze_plot.svg"
PLOTDIR="/tmp"
	
function get_systemd_plot(){
	ssh ${SSH_ARGS} ${SSH_ALIAS} "systemd-analyze plot > ${PLOTDIR}/${PLOTFILE}"
	scp ${SSH_ARGS} ${SSH_ALIAS}:"${PLOTDIR}/${PLOTFILE}" "${PLOTDIR}/${PLOTFILE}"
}


function write_findmnt_to_detailfile(){
	FINDMNTFILE=$1
	DETAILFILE=$2

	printf "## Findmnt \n\n" >> ${DETAILFILE}
	printf "\`\`\`sh\n" >>  ${DETAILFILE}
	cat ${FINDMNTFILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >>  ${DETAILFILE}
	#cp ${FINDMNTFILE} ${DETAILDIR}/
}

function write_ipa_to_detailfile(){

	IPAFILE=$1
	DETAILFILE=$2

	printf "## ip a \n\n" >>  ${DETAILFILE}
	printf "\`\`\`sh\n" >> ${DETAILFILE}
	cat ${IPAFILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >> ${DETAILFILE}
	#cp ${IPAFILE} ${DETAILDIR}/
}


function write_dmesg_to_detailfile(){
	DMESGFILE=$1
	DETAILFILE=$2
	printf "## dmesg \n\n" >> ${DETAILFILE}
	printf "\`\`\`sh\n" >> ${DETAILFILE}
	cat ${DMESGFILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >> ${DETAILFILE}
	#cp ${DMESGFILE} ${DETAILDIR}/
}


function write_systemctl_to_detailfile(){
	SYSTEMCTLFILE=$1
	DETAILFILE=$2
	printf "## systemctl \n\n" >> ${DETAILFILE}
	printf "\`\`\`sh\n" >> ${DETAILFILE}
	cat ${SYSTEMCTLFILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >> ${DETAILFILE}
	#cp ${SYSTEMCTLFILE} ${DETAILDIR}/
}

function write_journalctl_to_detailfile(){
	JOURNALCTLFILE=$1
	DETAILFILE=$2
	printf "## journalctl \n\n" >> ${DETAILFILE}
	printf "\`\`\`sh\n" >> ${DETAILFILE}
	cat ${JOURNALCTLFILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >> ${DETAILFILE}
	#cp ${JOURNALCTLFILE} ${DETAILDIR}/
}

function write_degraded_services_to_detailfile(){
	DEGRADED_SERVICES_FILE=$1
	DETAILFILE=$2
	printf "## Degraded Services \n\n" >> ${DETAILFILE}
	printf "\`\`\`sh\n" >> ${DETAILFILE}
	cat ${DEGRADED_SERVICES_FILE} >> ${DETAILFILE} 
	printf "\`\`\`\n\n" >> ${DETAILFILE}
	#cp ${DEGRADED_SERVICES_FILE} ${DETAILDIR}/
}

function create_detailed_report(){

	printf "Creating DETAILED REPORT...\n"

	# Below is just for debugging script itself, therefore I commented out via if false
	if false
	then
		printf "findmnt is %s \n" ${FINDMNTFILE}

		printf "ip a is %s \n" ${IPAFILE}

		printf "dmesg is %s \n" ${DMESGFILE}

		printf "systemctl is %s \n" ${SYSTEMCTLFILE}

		printf "journalctl is %s \n" ${JOURNALCTLFILE}

		printf "degraded services is %s \n" ${DEGRADED_SERVICES_FILE}
	fi

	get_findmnt ${FINDMNTFILE}
	get_ipa ${IPAFILE}
	get_dmesg ${DMESGFILE}
	get_systemctl ${SYSTEMCTLFILE}
	get_journalctl ${JOURNALCTLFILE}

	# Below is just for debugging script itself, therefore I commented out via if false
	if false
	then
		printf "findmnt is %s \n" ${FINDMNTFILE}

		printf "ip a is %s \n" ${IPAFILE}

		printf "dmesg is %s \n" ${DMESGFILE}

		printf "systemctl is %s \n" ${SYSTEMCTLFILE}

		printf "journalctl is %s \n" ${JOURNALCTLFILE}

		printf "degraded services is %s \n" ${DEGRADED_SERVICES_FILE}
	fi

	# Print Detail file header
	printf "# %s Test for %s \n\n" $(basename "${0}") "${HW_TYPE}" > ${DETAILFILE}
	printf "## Test Date %s \n\n" "${TEST_START_TIME}" >> ${DETAILFILE}
	printf "## IMAGE VERSION %s \n\n" "${IMG_VERS}" >> ${DETAILFILE}
	printf "## COREBOOT VERSION %s \n\n" "${CB_VERS}" >> ${DETAILFILE}
	printf "## OS INFO %s \n\n" "${OS_INFO}" >> ${DETAILFILE}

	if [ "${IS_BOOTED}" == "false" ]
	then
		printf "* This test iteration could NOT booted !\n\n"  >>  ${DETAILFILE}
	else
		printf "* This test iteration booted succesfully !\n\n"  >>  ${DETAILFILE}
	fi


	printf "# Details for test iteration %d \n\n" ${REBOOT_COUNTER} >>  ${DETAILFILE}

	write_findmnt_to_detailfile ${FINDMNTFILE} ${DETAILFILE}
	write_ipa_to_detailfile ${IPAFILE} ${DETAILFILE}

	if [ "${IS_BOOTED}" == "true" ]
	then

		# Now lets get systemd bootup plot
		printf "## Systemd Analyze Plot \n\n" >>  ${DETAILFILE}
		get_systemd_plot
		cp ${PLOTDIR}/${PLOTFILE} ${DETAILDIR}/
		printf "![](${PLOTFILE}) \n\n" >> ${DETAILFILE}
	fi

	# Now continue with long logs
	write_dmesg_to_detailfile ${DMESGFILE} ${DETAILFILE}
	write_systemctl_to_detailfile ${SYSTEMCTLFILE} ${DETAILFILE}
	write_journalctl_to_detailfile ${JOURNALCTLFILE} ${DETAILFILE}

	if [ "${IS_DEGRADED}" == "true" ]
	then
		write_degraded_services_to_detailfile ${DEGRADED_SERVICES_FILE} ${DETAILFILE}
	fi

}



# Is Panel Alive?
set +e
nc -w 1 -z "${SSH_IP}" "${SSH_PORT}"
if [ $? -eq "0" ]
then
	printf "Panel is reachable\n"
else
	printf "Panel is not reachable via SSH, stopping test !!!\n"
	exit 2
fi
set +e

#Copy ssh id to panel
sshpass -p "${SSH_PASS}" ssh-copy-id ${SSH_ARGS}  "${SSH_ALIAS}" 2> /dev/null

#Get number of CPUS

#NUMCPU=$(ssh "${SSH_ALIAS}" "nproc | tr -d '\n'")
#printf "This Panel have %s  CPU cores \n" "${NUMCPU}"
#SLEEP_INTERVAL=$(( 200/NUMCPU ))
SLEEP_INTERVAL="180"
printf "Sleep Interval between reboots will be %s  seconds \n" "${SLEEP_INTERVAL}"

# Collect Hardware type and Image version from the panel so that we can create Markdown accordingly
get_revo
get_mainvo
get_hw_type
get_img_vers
get_os_info

# Let us collect coreboot version only once, so that we don't need to record this for every iteration
get_cb_vers

# Lets record today so that it will be used for creating directory structure
TODAY=$(date +'%d-%m-%Y')

printf "%s Test Start Time = %s \n" $(basename "${0}") "${TEST_START_TIME}"

# Create directory structure if not exist
OUTDIR="TESTRESULTS"
BYDATEDIR="${OUTDIR}/BY-DATE/${TODAY}"
BYHWTYPEDIR="${OUTDIR}/BY-HWTYPE/${HW_TYPE}"
BYIMGVERDIR="${OUTDIR}/BY-IMGVER/${IMG_VERS}"
CSV_OUTDIR="${OUTDIR}/CSV_OUT/"
mkdir -p ${BYDATEDIR} ${BYHWTYPEDIR} ${BYIMGVERDIR} ${CSV_OUTDIR}

CSV_OUTFILE="${CSV_OUTDIR}/${HW_TYPE}-${TEST_START_TIME}.csv"
MD_OUTFILE="${BYDATEDIR}/${HW_TYPE}-${TEST_START_TIME}.md"

#Create csv file and add header
printf "HW_TYPE,CB_VER,IMG_VERS,ITERATION,TOTAL_BOOT,FIRMWARE_TOTAL,KERNEL,USERSPACE,WAMP,NETWORKING,CONTROLPANEL,FWPNMANAGER,SYSTEMD_UDEV_SETTLE,DEVICE_UNIT,DMESG_ERROR\n" > ${CSV_OUTFILE}

# Create Markdown File
printf "# %s Test for %s \n\n" $(basename "${0}") "${HW_TYPE}" > ${MD_OUTFILE}
printf "## Test Date %s \n\n" "${TEST_START_TIME}" >> ${MD_OUTFILE}
printf "## IMAGE VERSION %s \n\n" "${IMG_VERS}" >> ${MD_OUTFILE}
printf "## COREBOOT VERSION %s \n\n" "${CB_VERS}" >> ${MD_OUTFILE}
printf "## OS INFO %s \n\n" "${OS_INFO}" >> ${MD_OUTFILE}

# Now lets create table for Markdown
printf "## TIMINGS \n\n" >> ${MD_OUTFILE}
printf "| Iteration | Total_Boot | Firmware | Kernel | Userspace | Result | Details | \n" >> ${MD_OUTFILE}
printf "|---|---|---|---|---|---|---| \n" >> ${MD_OUTFILE}

# Now lets reboot the panel and start ticking the clock for the 1st iteration
POWERON=$SECONDS
printf "Rebooting the panel for the 1st time to start the test...\n"
PREV_BOOT_SEC=$(date +'%d-%m-%Y-%H-%M-%S')

if [ "$REBOOT_TYPE" = "Soft" ]; then
    ssh ${SSH_ARGS} "${SSH_ALIAS}" "reboot -f"
elif [ "$REBOOT_TYPE" = "Hard" ]; then
    /usr/bin/pduclient --daemon 134.86.60.229 --hostname 134.86.254.${PDU_HOST}  --command=reboot --port=${PDU}
fi

sleep ${SLEEP_INTERVAL}

while [ ${REBOOT_COUNTER} -le ${REBOOT_TEST_COUNT} ]
do
	# Print Test number
	echo "*********************************************************************"
	printf "TEST NAME IS %s\n" "${TEST_NAME}"
	echo "Current Test Number is ${REBOOT_COUNTER}"
	NOW=$(date +'%d-%m-%Y-%H-%M-%S')
	echo "NOW is ${NOW}"
	REVO_CURR=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dd if=/dev/vg_sys/lv_revo bs=1024 |sha256sum")
	if [ "$REVO_CURR" = "$REVO_ORIG" ]; then
		echo "Revo Checksum Matched"
	else
		echo "Revo Checksum Not Matched"
	fi

	MAINVO_CURR=$(ssh ${SSH_ARGS} ${SSH_ALIAS} "dd if=/dev/vg_sys/lv_mainvo bs=1024 skip=2|sha256sum")
	if [ "$MAINVO_CURR" = "$MAINVO_ORIG" ]; then
		echo "Mainvo Checksum Matched"
	else
		echo "Mainvo Checksum Not Matched"
	fi

	ITER_RESULT="success"
	DETAILS="[Click here for Details](${TEST_START_TIME}/${REBOOT_COUNTER}/details.md)"

	IS_DEGRADED="false"
	IS_BOOTED="false"

	# Now lets create detailfile
	DETAILDIR="${BYDATEDIR}/${TEST_START_TIME}/${REBOOT_COUNTER}"
	mkdir -p ${DETAILDIR}
	DETAILFILE="${DETAILDIR}/details.md"

	let ssh_port_check_count=1
	printf "Checking for ssh port to become reachable...\n"
	while true
	do

		#printf "Checking ssh port, port check count= %d...\n" "${ssh_port_check_count}"
		sleep 1
		set +e
		nc -w 1 -z "${SSH_IP}" "${SSH_PORT}"
		if [ $? -eq "0" ]
		then
			break
		else
			ssh_port_check_count=$((ssh_port_check_count+1))
			if [ "${ssh_port_check_count}" == "120" ]
			then
				exit 255
			fi
		fi
		printf "*"
		set -e
	done

	printf "\n"

	#Copy ssh id to panel
	sshpass -p ${SSH_PASS} ssh-copy-id ${SSH_ARGS} ${SSH_ALIAS} 2> /dev/null

	STARTING_COUNT=0
	while true
	do
		IS_SYSTEM_RUNNING=$(ssh ${SSH_ARGS} "${SSH_ALIAS}" "systemctl is-system-running | tr -d '\n'")
		printf "SYSTEM STATUS is: %s\n" "${IS_SYSTEM_RUNNING}" 
		if [ "${IS_SYSTEM_RUNNING}" = "running" ]
		then
			IS_BOOTED="true"
			printf "C2G Panel boot has completed \n"
			break
		elif [ "${IS_SYSTEM_RUNNING}" = "starting" ]
		then
			STARTING_COUNT=$((STARTING_COUNT+1))
			if [ "${STARTING_COUNT}" -ge "50" ]
			then
				printf "\\\\\\\\\\\ WHY IT IS WAITING TO BOOT: \n"
				ssh ${SSH_ARGS} ${SSH_ALIAS} "systemctl list-jobs"
			fi
			if [ "${STARTING_COUNT}" == "100" ]
			then
				IS_BOOTED="false"
				printf "\n\nITERATION = %d : SYSTEMD COULDN'T START IN %d Seconds, TEST FAILED\n\n" ${REBOOT_COUNTER} $(( ${SECONDS} - ${POWERON} )) >> ${MD_OUTFILE}
				ssh  ${SSH_ARGS} ${SSH_ALIAS} "systemctl list-jobs" >> ${MD_OUTFILE}
				printf "SYSTEMD STARTING FAILURE!!!\n"

				# Now lets create detailed report as details.md
				# Warning this is a HUGE function, see above
				create_detailed_report

				printf "# Details of FAILED BOOT: \n" >> "${MD_OUTFILE}"
				printf "%s \n" 	"${DETAILS}" >> "${MD_OUTFILE}" 

				# Now create shortcut files for BY-HARDWARE and BY-IMAGE-VERSION
				printf "[CLICK HERE](../../../${MD_OUTFILE})" > ${BYIMGVERDIR}/${HW_TYPE}-${TEST_START_TIME}.md
				printf "[CLICK HERE](../../../${MD_OUTFILE})" > ${BYHWTYPEDIR}/${HW_TYPE}-${TEST_START_TIME}.md

				# Now lets remove temporary files
				rm -rf ${FINDMNTFILE} ${IPAFILE} ${DMESGFILE} ${SYSTEMCTLFILE} ${JOURNALCTLFILE} ${PLOTDIR}/${PLOTFILE}

				printf "Leaving panel as it is, and exiting from the test...\n"

				exit 33
			fi
		elif [ "${IS_SYSTEM_RUNNING}" = "degraded" ]
		then
			ITER_RESULT="FAILED"
			printf "\\\\\\\\\\\ SYSTEM DEGRADED. Failed Services: \n"
			ssh ${SSH_ARGS} ${SSH_ALIAS} "systemctl | grep -i fail" 
			IS_DEGRADED="true"
			get_degraded_services ${DEGRADED_SERVICES_FILE}

			printf "\\\\\\\\\\\ Resetting failed Services...\n"
			ssh ${SSH_ARGS} ${SSH_ALIAS} "systemctl reset-failed"
		fi

		sleep 1
	done

	TOTAL_BOOT_DURATION=$(( ${SECONDS} - ${POWERON} ))
	printf "TOTAL_BOOT_DURATION is %s\n" "${TOTAL_BOOT_DURATION}"

	CURBOOT_SEC=$(date +'%d-%m-%Y-%H-%M-%S')

	printf "PREV_BOOT_COMPLETED_SEC is %s\n" "${PREV_BOOT_SEC}"
	printf "CURRENT_BOOT_COMPLETED_SEC is %s\n" "${CURBOOT_SEC}"
	PREV_BOOT_SEC=${CURBOOT_SEC}

	seperator

	get_systemd-analyze
	get_systemd-analyze-blame

	FW_BOOT=$(echo "${SYSANA}" | grep -i kernel | awk -F'=' '{print $2}' | sed 's/s//g')
	KERNEL=$(echo "${SYSANA}" | grep -i kernel | awk -F' ' '{print $4}' | sed 's/s//g')
	USERSPACE=$(echo "${SYSANA}" | grep -i user | awk -F'[+]' '{print $2}' | awk -F '(' '{print $1}' | sed 's/s//g')

	WAMP=$(echo "${SYSANABLAME}" | grep -i -e wamp -e crossbar | awk -F' ' '{print $1}' | sed 's/s//g')
	NETWORKING=$(echo "${SYSANABLAME}" | grep -i networking | awk -F' ' '{print $1}' | sed 's/s//g')
	CONTROLPANEL=$(echo "${SYSANABLAME}" | grep -i controlpanel | awk -F' ' '{print $1}' | sed 's/s//g')
	FWPNMANAGER=$(echo "${SYSANABLAME}" | grep -i fwpnmanager | awk -F' ' '{print $1}' | sed 's/s//g')
	UDEV_SETTLE=$(echo "${SYSANABLAME}" | grep -i udev-settle | awk -F' ' '{print $1}' | sed 's/s//g')
	DEVICE_UNITS=$(echo "${SYSANABLAME}" | grep -i "mainvo" | awk -F' ' '{print $1}' | sed 's/s//g')

	# Lets write results to CSV file
	printf "Creating CSV REPORT...\n"
	printf "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n" \
		"${HW_TYPE}" \
		"${CB_VERS}" \
		"${IMG_VERS}" \
		"${REBOOT_COUNTER}" \
		"${TOTAL_BOOT_DURATION}" \
		"${FW_BOOT}" \
		"${KERNEL}" \
		"${USERSPACE}" \
		"${WAMP}" \
		"${NETWORKING}" \
		"${CONTROLPANEL}" \
		"${FWPNMANAGER}" \
		"${UDEV_SETTLE}" \
		"${DEVICE_UNITS}" \
		"${DMESGERROR}" \
		| tee -a "${CSV_OUTFILE}" 

	# Now also output this to Markdown file
	printf "Creating MARKDOWN REPORT...\n"
	printf "| %s | %s | %s | %s | %s | %s | %s |\n" \
		"${REBOOT_COUNTER}" \
		"${TOTAL_BOOT_DURATION}" \
		"${FW_BOOT}" \
		"${KERNEL}" \
		"${USERSPACE}" \
		"${ITER_RESULT}" \
		"${DETAILS}" \
		| tee -a "${MD_OUTFILE}" 

	# Now lets create detailed report as details.md
	# Warning this is a HUGE function, see above
	create_detailed_report

	# Now create shortcut files for BY-HARDWARE and BY-IMAGE-VERSION
	printf "[CLICK HERE](../../../${MD_OUTFILE})" > ${BYIMGVERDIR}/${HW_TYPE}-${TEST_START_TIME}.md
	printf "[CLICK HERE](../../../${MD_OUTFILE})" > ${BYHWTYPEDIR}/${HW_TYPE}-${TEST_START_TIME}.md

	# Now lets remove temporary files
	rm -rf ${FINDMNTFILE} ${IPAFILE} ${DMESGFILE} ${SYSTEMCTLFILE} ${JOURNALCTLFILE} ${PLOTDIR}/${PLOTFILE}

	POWERON=$SECONDS
	if [ "$REBOOT_TYPE" = "Soft" ]; then
    		ssh ${SSH_ARGS} "${SSH_ALIAS}" "reboot -f"
	elif [ "$REBOOT_TYPE" = "Hard" ]; then
    		 /usr/bin/pduclient --daemon 134.86.60.229 --hostname 134.86.254.${PDU_HOST}  --command=reboot --port=${PDU}
	fi

	#Increase counter
	REBOOT_COUNTER=$((REBOOT_COUNTER+1))
	sleep ${SLEEP_INTERVAL}
done

printf "TEST IS TOTALLY COMPLETED !!!\n"



