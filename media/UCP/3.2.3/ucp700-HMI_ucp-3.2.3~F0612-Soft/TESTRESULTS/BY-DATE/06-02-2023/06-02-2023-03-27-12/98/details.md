# realboot.sh Test for MTP700_Unified_Basic 

## Test Date 06-02-2023-03-27-12 

## IMAGE VERSION BUILD_ID="HMI_ubp-3.4~F0612" 

## COREBOOT VERSION R02.05.00.00_01.01.01.02 

## OS INFO Siemens Industrial OS 3.4 (based on Debian 11.6) \n \l 

* This test iteration booted succesfully !

# Details for test iteration 98 

## Findmnt 

```sh
TARGET                                                  SOURCE                     FSTYPE     OPTIONS
/                                                       overlayroot                overlay    rw,relatime,lowerdir=/media/root-ro,upperdir=/media/root-rw/overlay,workdir=/media/root-rw/overlay-workdir/_
├─/sys                                                  sysfs                      sysfs      rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/security                                securityfs                 securityfs rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/selinux                                     selinuxfs                  selinuxfs  rw,nosuid,noexec,relatime
│ ├─/sys/fs/cgroup                                      tmpfs                      tmpfs      ro,nosuid,nodev,noexec,size=4096k,nr_inodes=1024,mode=755
│ │ ├─/sys/fs/cgroup/unified                            cgroup2                    cgroup2    rw,nosuid,nodev,noexec,relatime,nsdelegate
│ │ ├─/sys/fs/cgroup/systemd                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,xattr,name=systemd
│ │ ├─/sys/fs/cgroup/hugetlb                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,hugetlb
│ │ ├─/sys/fs/cgroup/devices                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,devices
│ │ ├─/sys/fs/cgroup/memory                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,memory
│ │ ├─/sys/fs/cgroup/cpu,cpuacct                        cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpu,cpuacct
│ │ ├─/sys/fs/cgroup/pids                               cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,pids
│ │ ├─/sys/fs/cgroup/net_prio                           cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,net_prio
│ │ ├─/sys/fs/cgroup/blkio                              cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,blkio
│ │ ├─/sys/fs/cgroup/perf_event                         cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,perf_event
│ │ ├─/sys/fs/cgroup/cpuset                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpuset
│ │ └─/sys/fs/cgroup/freezer                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,freezer
│ ├─/sys/fs/pstore                                      pstore                     pstore     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/debug                                   debugfs                    debugfs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/tracing                                 tracefs                    tracefs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/fuse/connections                            fusectl                    fusectl    rw,nosuid,nodev,noexec,relatime
│ └─/sys/kernel/config                                  configfs                   configfs   rw,nosuid,nodev,noexec,relatime
├─/proc                                                 proc                       proc       rw,nosuid,nodev,noexec,relatime
├─/dev                                                  udev                       devtmpfs   rw,nosuid,relatime,size=675940k,nr_inodes=168985,mode=755
│ ├─/dev/pts                                            devpts                     devpts     rw,relatime,gid=5,mode=620,ptmxmode=000
│ ├─/dev/shm                                            tmpfs                      tmpfs      rw,nosuid,nodev
│ ├─/dev/mqueue                                         mqueue                     mqueue     rw,nosuid,nodev,noexec,relatime
│ └─/dev/hugepages                                      hugetlbfs                  hugetlbfs  rw,relatime,pagesize=2M
├─/run                                                  tmpfs                      tmpfs      rw,relatime,size=202792k,mode=755
│ ├─/run/lock                                           tmpfs                      tmpfs      rw,nosuid,nodev,noexec,relatime,size=5120k
│ ├─/run/credentials/systemd-sysctl.service             none                       ramfs      ro,nosuid,nodev,noexec,relatime,mode=700
│ ├─/run/credentials/systemd-sysusers.service           none                       ramfs      ro,nosuid,nodev,noexec,relatime,mode=700
│ ├─/run/credentials/systemd-tmpfiles-setup-dev.service none                       ramfs      ro,nosuid,nodev,noexec,relatime,mode=700
│ ├─/run/credentials/systemd-tmpfiles-setup.service     none                       ramfs      ro,nosuid,nodev,noexec,relatime,mode=700
│ └─/run/user/0                                         tmpfs                      tmpfs      rw,nosuid,nodev,relatime,size=202788k,nr_inodes=50697,mode=700
├─/media/root-ro                                        /dev/vg_sys/lv_mainvo      ext4       ro,relatime
├─/media/root-rw                                        /dev/dm-2                  ext4       rw,relatime
├─/etc/hmi/FwServices/pa                                /dev/mapper/vg_sys-lv_pavo ext4       rw,relatime
├─/var/log                                              tmpfs                      tmpfs      rw,relatime,size=131072k
└─/var/opt/siemens/automation/WinCCUnified/Projects     /dev/mapper/vg_sys-lv_rtvo ext4       rw,relatime
```

## ip a 

```sh
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: end0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether de:ad:be:ef:fe:01 brd ff:ff:ff:ff:ff:ff
    inet 134.86.254.71/25 brd 134.86.254.127 scope global dynamic noprefixroute end0
       valid_lft 28561sec preferred_lft 28561sec
    inet6 fe80::7e63:9923:2c77:e358/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:0b:5c:6c:a6 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
```

## Systemd Analyze Plot 

<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg width="1642px" height="5530px" version="1.1" xmlns="http://www.w3.org/2000/svg">

<!-- This file is a systemd-analyze SVG file. It is best rendered in a   -->
<!-- browser such as Chrome, Chromium or Firefox. Other applications     -->
<!-- that render these files properly but much slower are ImageMagick,   -->
<!-- gimp, inkscape, etc. To display the files on your system, just      -->
<!-- point your browser to this file.                                    -->

<!-- This plot was generated by systemd-analyze version 252.4-1+mel1     -->

<defs>
  <style type="text/css">
    <![CDATA[
      rect       { stroke-width: 1; stroke-opacity: 0; }
      rect.background   { fill: rgb(255,255,255); }
      rect.activating   { fill: rgb(255,0,0); fill-opacity: 0.7; }
      rect.active       { fill: rgb(200,150,150); fill-opacity: 0.7; }
      rect.deactivating { fill: rgb(150,100,100); fill-opacity: 0.7; }
      rect.kernel       { fill: rgb(150,150,150); fill-opacity: 0.7; }
      rect.initrd       { fill: rgb(150,150,150); fill-opacity: 0.7; }
      rect.firmware     { fill: rgb(150,150,150); fill-opacity: 0.7; }
      rect.loader       { fill: rgb(150,150,150); fill-opacity: 0.7; }
      rect.userspace    { fill: rgb(150,150,150); fill-opacity: 0.7; }
      rect.security     { fill: rgb(144,238,144); fill-opacity: 0.7; }
      rect.generators   { fill: rgb(102,204,255); fill-opacity: 0.7; }
      rect.unitsload    { fill: rgb( 82,184,255); fill-opacity: 0.7; }
      rect.box   { fill: rgb(240,240,240); stroke: rgb(192,192,192); }
      line       { stroke: rgb(64,64,64); stroke-width: 1; }
//    line.sec1  { }
      line.sec5  { stroke-width: 2; }
      line.sec01 { stroke: rgb(224,224,224); stroke-width: 1; }
      text       { font-family: Verdana, Helvetica; font-size: 14px; }
      text.left  { font-family: Verdana, Helvetica; font-size: 14px; text-anchor: start; }
      text.right { font-family: Verdana, Helvetica; font-size: 14px; text-anchor: end; }
      text.sec   { font-size: 10px; }
    ]]>
   </style>
</defs>

<rect class="background" width="100%" height="100%" />
<text x="20" y="50">Startup finished in 4.128s (kernel) + 11.490s (userspace) = 15.619s 
graphical.target reached after 11.439s in userspace.</text><text x="20" y="30">Siemens Industrial OS 3.4 (bullseye) localhost (Linux 5.10.158-cip22+ind1 #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023) arm64 </text><g transform="translate(20.000,100)">
<rect class="box" x="0" y="0" width="1561.948" height="5280.000" />
  <line class="sec5" x1="0.000" y1="0" x2="0.000" y2="5280.000" />
  <text class="sec" x="0.000" y="-5.000" >0.0s</text>
  <line class="sec01" x1="10.000" y1="0" x2="10.000" y2="5280.000" />
  <line class="sec01" x1="20.000" y1="0" x2="20.000" y2="5280.000" />
  <line class="sec01" x1="30.000" y1="0" x2="30.000" y2="5280.000" />
  <line class="sec01" x1="40.000" y1="0" x2="40.000" y2="5280.000" />
  <line class="sec01" x1="50.000" y1="0" x2="50.000" y2="5280.000" />
  <line class="sec01" x1="60.000" y1="0" x2="60.000" y2="5280.000" />
  <line class="sec01" x1="70.000" y1="0" x2="70.000" y2="5280.000" />
  <line class="sec01" x1="80.000" y1="0" x2="80.000" y2="5280.000" />
  <line class="sec01" x1="90.000" y1="0" x2="90.000" y2="5280.000" />
  <line class="sec1" x1="100.000" y1="0" x2="100.000" y2="5280.000" />
  <text class="sec" x="100.000" y="-5.000" >1.0s</text>
  <line class="sec01" x1="110.000" y1="0" x2="110.000" y2="5280.000" />
  <line class="sec01" x1="120.000" y1="0" x2="120.000" y2="5280.000" />
  <line class="sec01" x1="130.000" y1="0" x2="130.000" y2="5280.000" />
  <line class="sec01" x1="140.000" y1="0" x2="140.000" y2="5280.000" />
  <line class="sec01" x1="150.000" y1="0" x2="150.000" y2="5280.000" />
  <line class="sec01" x1="160.000" y1="0" x2="160.000" y2="5280.000" />
  <line class="sec01" x1="170.000" y1="0" x2="170.000" y2="5280.000" />
  <line class="sec01" x1="180.000" y1="0" x2="180.000" y2="5280.000" />
  <line class="sec01" x1="190.000" y1="0" x2="190.000" y2="5280.000" />
  <line class="sec1" x1="200.000" y1="0" x2="200.000" y2="5280.000" />
  <text class="sec" x="200.000" y="-5.000" >2.0s</text>
  <line class="sec01" x1="210.000" y1="0" x2="210.000" y2="5280.000" />
  <line class="sec01" x1="220.000" y1="0" x2="220.000" y2="5280.000" />
  <line class="sec01" x1="230.000" y1="0" x2="230.000" y2="5280.000" />
  <line class="sec01" x1="240.000" y1="0" x2="240.000" y2="5280.000" />
  <line class="sec01" x1="250.000" y1="0" x2="250.000" y2="5280.000" />
  <line class="sec01" x1="260.000" y1="0" x2="260.000" y2="5280.000" />
  <line class="sec01" x1="270.000" y1="0" x2="270.000" y2="5280.000" />
  <line class="sec01" x1="280.000" y1="0" x2="280.000" y2="5280.000" />
  <line class="sec01" x1="290.000" y1="0" x2="290.000" y2="5280.000" />
  <line class="sec1" x1="300.000" y1="0" x2="300.000" y2="5280.000" />
  <text class="sec" x="300.000" y="-5.000" >3.0s</text>
  <line class="sec01" x1="310.000" y1="0" x2="310.000" y2="5280.000" />
  <line class="sec01" x1="320.000" y1="0" x2="320.000" y2="5280.000" />
  <line class="sec01" x1="330.000" y1="0" x2="330.000" y2="5280.000" />
  <line class="sec01" x1="340.000" y1="0" x2="340.000" y2="5280.000" />
  <line class="sec01" x1="350.000" y1="0" x2="350.000" y2="5280.000" />
  <line class="sec01" x1="360.000" y1="0" x2="360.000" y2="5280.000" />
  <line class="sec01" x1="370.000" y1="0" x2="370.000" y2="5280.000" />
  <line class="sec01" x1="380.000" y1="0" x2="380.000" y2="5280.000" />
  <line class="sec01" x1="390.000" y1="0" x2="390.000" y2="5280.000" />
  <line class="sec1" x1="400.000" y1="0" x2="400.000" y2="5280.000" />
  <text class="sec" x="400.000" y="-5.000" >4.0s</text>
  <line class="sec01" x1="410.000" y1="0" x2="410.000" y2="5280.000" />
  <line class="sec01" x1="420.000" y1="0" x2="420.000" y2="5280.000" />
  <line class="sec01" x1="430.000" y1="0" x2="430.000" y2="5280.000" />
  <line class="sec01" x1="440.000" y1="0" x2="440.000" y2="5280.000" />
  <line class="sec01" x1="450.000" y1="0" x2="450.000" y2="5280.000" />
  <line class="sec01" x1="460.000" y1="0" x2="460.000" y2="5280.000" />
  <line class="sec01" x1="470.000" y1="0" x2="470.000" y2="5280.000" />
  <line class="sec01" x1="480.000" y1="0" x2="480.000" y2="5280.000" />
  <line class="sec01" x1="490.000" y1="0" x2="490.000" y2="5280.000" />
  <line class="sec5" x1="500.000" y1="0" x2="500.000" y2="5280.000" />
  <text class="sec" x="500.000" y="-5.000" >5.0s</text>
  <line class="sec01" x1="510.000" y1="0" x2="510.000" y2="5280.000" />
  <line class="sec01" x1="520.000" y1="0" x2="520.000" y2="5280.000" />
  <line class="sec01" x1="530.000" y1="0" x2="530.000" y2="5280.000" />
  <line class="sec01" x1="540.000" y1="0" x2="540.000" y2="5280.000" />
  <line class="sec01" x1="550.000" y1="0" x2="550.000" y2="5280.000" />
  <line class="sec01" x1="560.000" y1="0" x2="560.000" y2="5280.000" />
  <line class="sec01" x1="570.000" y1="0" x2="570.000" y2="5280.000" />
  <line class="sec01" x1="580.000" y1="0" x2="580.000" y2="5280.000" />
  <line class="sec01" x1="590.000" y1="0" x2="590.000" y2="5280.000" />
  <line class="sec1" x1="600.000" y1="0" x2="600.000" y2="5280.000" />
  <text class="sec" x="600.000" y="-5.000" >6.0s</text>
  <line class="sec01" x1="610.000" y1="0" x2="610.000" y2="5280.000" />
  <line class="sec01" x1="620.000" y1="0" x2="620.000" y2="5280.000" />
  <line class="sec01" x1="630.000" y1="0" x2="630.000" y2="5280.000" />
  <line class="sec01" x1="640.000" y1="0" x2="640.000" y2="5280.000" />
  <line class="sec01" x1="650.000" y1="0" x2="650.000" y2="5280.000" />
  <line class="sec01" x1="660.000" y1="0" x2="660.000" y2="5280.000" />
  <line class="sec01" x1="670.000" y1="0" x2="670.000" y2="5280.000" />
  <line class="sec01" x1="680.000" y1="0" x2="680.000" y2="5280.000" />
  <line class="sec01" x1="690.000" y1="0" x2="690.000" y2="5280.000" />
  <line class="sec1" x1="700.000" y1="0" x2="700.000" y2="5280.000" />
  <text class="sec" x="700.000" y="-5.000" >7.0s</text>
  <line class="sec01" x1="710.000" y1="0" x2="710.000" y2="5280.000" />
  <line class="sec01" x1="720.000" y1="0" x2="720.000" y2="5280.000" />
  <line class="sec01" x1="730.000" y1="0" x2="730.000" y2="5280.000" />
  <line class="sec01" x1="740.000" y1="0" x2="740.000" y2="5280.000" />
  <line class="sec01" x1="750.000" y1="0" x2="750.000" y2="5280.000" />
  <line class="sec01" x1="760.000" y1="0" x2="760.000" y2="5280.000" />
  <line class="sec01" x1="770.000" y1="0" x2="770.000" y2="5280.000" />
  <line class="sec01" x1="780.000" y1="0" x2="780.000" y2="5280.000" />
  <line class="sec01" x1="790.000" y1="0" x2="790.000" y2="5280.000" />
  <line class="sec1" x1="800.000" y1="0" x2="800.000" y2="5280.000" />
  <text class="sec" x="800.000" y="-5.000" >8.0s</text>
  <line class="sec01" x1="810.000" y1="0" x2="810.000" y2="5280.000" />
  <line class="sec01" x1="820.000" y1="0" x2="820.000" y2="5280.000" />
  <line class="sec01" x1="830.000" y1="0" x2="830.000" y2="5280.000" />
  <line class="sec01" x1="840.000" y1="0" x2="840.000" y2="5280.000" />
  <line class="sec01" x1="850.000" y1="0" x2="850.000" y2="5280.000" />
  <line class="sec01" x1="860.000" y1="0" x2="860.000" y2="5280.000" />
  <line class="sec01" x1="870.000" y1="0" x2="870.000" y2="5280.000" />
  <line class="sec01" x1="880.000" y1="0" x2="880.000" y2="5280.000" />
  <line class="sec01" x1="890.000" y1="0" x2="890.000" y2="5280.000" />
  <line class="sec1" x1="900.000" y1="0" x2="900.000" y2="5280.000" />
  <text class="sec" x="900.000" y="-5.000" >9.0s</text>
  <line class="sec01" x1="910.000" y1="0" x2="910.000" y2="5280.000" />
  <line class="sec01" x1="920.000" y1="0" x2="920.000" y2="5280.000" />
  <line class="sec01" x1="930.000" y1="0" x2="930.000" y2="5280.000" />
  <line class="sec01" x1="940.000" y1="0" x2="940.000" y2="5280.000" />
  <line class="sec01" x1="950.000" y1="0" x2="950.000" y2="5280.000" />
  <line class="sec01" x1="960.000" y1="0" x2="960.000" y2="5280.000" />
  <line class="sec01" x1="970.000" y1="0" x2="970.000" y2="5280.000" />
  <line class="sec01" x1="980.000" y1="0" x2="980.000" y2="5280.000" />
  <line class="sec01" x1="990.000" y1="0" x2="990.000" y2="5280.000" />
  <line class="sec5" x1="1000.000" y1="0" x2="1000.000" y2="5280.000" />
  <text class="sec" x="1000.000" y="-5.000" >10.0s</text>
  <line class="sec01" x1="1010.000" y1="0" x2="1010.000" y2="5280.000" />
  <line class="sec01" x1="1020.000" y1="0" x2="1020.000" y2="5280.000" />
  <line class="sec01" x1="1030.000" y1="0" x2="1030.000" y2="5280.000" />
  <line class="sec01" x1="1040.000" y1="0" x2="1040.000" y2="5280.000" />
  <line class="sec01" x1="1050.000" y1="0" x2="1050.000" y2="5280.000" />
  <line class="sec01" x1="1060.000" y1="0" x2="1060.000" y2="5280.000" />
  <line class="sec01" x1="1070.000" y1="0" x2="1070.000" y2="5280.000" />
  <line class="sec01" x1="1080.000" y1="0" x2="1080.000" y2="5280.000" />
  <line class="sec01" x1="1090.000" y1="0" x2="1090.000" y2="5280.000" />
  <line class="sec1" x1="1100.000" y1="0" x2="1100.000" y2="5280.000" />
  <text class="sec" x="1100.000" y="-5.000" >11.0s</text>
  <line class="sec01" x1="1110.000" y1="0" x2="1110.000" y2="5280.000" />
  <line class="sec01" x1="1120.000" y1="0" x2="1120.000" y2="5280.000" />
  <line class="sec01" x1="1130.000" y1="0" x2="1130.000" y2="5280.000" />
  <line class="sec01" x1="1140.000" y1="0" x2="1140.000" y2="5280.000" />
  <line class="sec01" x1="1150.000" y1="0" x2="1150.000" y2="5280.000" />
  <line class="sec01" x1="1160.000" y1="0" x2="1160.000" y2="5280.000" />
  <line class="sec01" x1="1170.000" y1="0" x2="1170.000" y2="5280.000" />
  <line class="sec01" x1="1180.000" y1="0" x2="1180.000" y2="5280.000" />
  <line class="sec01" x1="1190.000" y1="0" x2="1190.000" y2="5280.000" />
  <line class="sec1" x1="1200.000" y1="0" x2="1200.000" y2="5280.000" />
  <text class="sec" x="1200.000" y="-5.000" >12.0s</text>
  <line class="sec01" x1="1210.000" y1="0" x2="1210.000" y2="5280.000" />
  <line class="sec01" x1="1220.000" y1="0" x2="1220.000" y2="5280.000" />
  <line class="sec01" x1="1230.000" y1="0" x2="1230.000" y2="5280.000" />
  <line class="sec01" x1="1240.000" y1="0" x2="1240.000" y2="5280.000" />
  <line class="sec01" x1="1250.000" y1="0" x2="1250.000" y2="5280.000" />
  <line class="sec01" x1="1260.000" y1="0" x2="1260.000" y2="5280.000" />
  <line class="sec01" x1="1270.000" y1="0" x2="1270.000" y2="5280.000" />
  <line class="sec01" x1="1280.000" y1="0" x2="1280.000" y2="5280.000" />
  <line class="sec01" x1="1290.000" y1="0" x2="1290.000" y2="5280.000" />
  <line class="sec1" x1="1300.000" y1="0" x2="1300.000" y2="5280.000" />
  <text class="sec" x="1300.000" y="-5.000" >13.0s</text>
  <line class="sec01" x1="1310.000" y1="0" x2="1310.000" y2="5280.000" />
  <line class="sec01" x1="1320.000" y1="0" x2="1320.000" y2="5280.000" />
  <line class="sec01" x1="1330.000" y1="0" x2="1330.000" y2="5280.000" />
  <line class="sec01" x1="1340.000" y1="0" x2="1340.000" y2="5280.000" />
  <line class="sec01" x1="1350.000" y1="0" x2="1350.000" y2="5280.000" />
  <line class="sec01" x1="1360.000" y1="0" x2="1360.000" y2="5280.000" />
  <line class="sec01" x1="1370.000" y1="0" x2="1370.000" y2="5280.000" />
  <line class="sec01" x1="1380.000" y1="0" x2="1380.000" y2="5280.000" />
  <line class="sec01" x1="1390.000" y1="0" x2="1390.000" y2="5280.000" />
  <line class="sec1" x1="1400.000" y1="0" x2="1400.000" y2="5280.000" />
  <text class="sec" x="1400.000" y="-5.000" >14.0s</text>
  <line class="sec01" x1="1410.000" y1="0" x2="1410.000" y2="5280.000" />
  <line class="sec01" x1="1420.000" y1="0" x2="1420.000" y2="5280.000" />
  <line class="sec01" x1="1430.000" y1="0" x2="1430.000" y2="5280.000" />
  <line class="sec01" x1="1440.000" y1="0" x2="1440.000" y2="5280.000" />
  <line class="sec01" x1="1450.000" y1="0" x2="1450.000" y2="5280.000" />
  <line class="sec01" x1="1460.000" y1="0" x2="1460.000" y2="5280.000" />
  <line class="sec01" x1="1470.000" y1="0" x2="1470.000" y2="5280.000" />
  <line class="sec01" x1="1480.000" y1="0" x2="1480.000" y2="5280.000" />
  <line class="sec01" x1="1490.000" y1="0" x2="1490.000" y2="5280.000" />
  <line class="sec5" x1="1500.000" y1="0" x2="1500.000" y2="5280.000" />
  <text class="sec" x="1500.000" y="-5.000" >15.0s</text>
  <line class="sec01" x1="1510.000" y1="0" x2="1510.000" y2="5280.000" />
  <line class="sec01" x1="1520.000" y1="0" x2="1520.000" y2="5280.000" />
  <line class="sec01" x1="1530.000" y1="0" x2="1530.000" y2="5280.000" />
  <line class="sec01" x1="1540.000" y1="0" x2="1540.000" y2="5280.000" />
  <line class="sec01" x1="1550.000" y1="0" x2="1550.000" y2="5280.000" />
  <line class="sec01" x1="1560.000" y1="0" x2="1560.000" y2="5280.000" />
  <rect class="kernel" x="0.000" y="0.000" width="412.868" height="19.000" />
  <text class="left" x="5.000" y="14.000">kernel</text>
  <rect class="active" x="412.868" y="20.000" width="1149.081" height="19.000" />
  <rect class="security" x="414.875" y="20.000" width="1.470" height="19.000" />
  <rect class="generators" x="425.598" y="20.000" width="17.255" height="19.000" />
  <rect class="unitsload" x="442.854" y="20.000" width="34.002" height="19.000" />
  <text class="left" x="417.868" y="34.000">systemd</text>
  <rect class="activating" x="476.902" y="40.000" width="0.000" height="19.000" />
  <rect class="active" x="476.902" y="40.000" width="1085.046" height="19.000" />
  <rect class="deactivating" x="1561.948" y="40.000" width="0.000" height="19.000" />
  <text class="left" x="481.902" y="54.000">system.slice</text>
  <rect class="activating" x="476.916" y="60.000" width="0.000" height="19.000" />
  <rect class="active" x="476.916" y="60.000" width="1085.033" height="19.000" />
  <rect class="deactivating" x="1561.948" y="60.000" width="0.000" height="19.000" />
  <text class="left" x="481.916" y="74.000">init.scope</text>
  <rect class="activating" x="476.924" y="80.000" width="0.000" height="19.000" />
  <rect class="active" x="476.924" y="80.000" width="1085.024" height="19.000" />
  <rect class="deactivating" x="1561.948" y="80.000" width="0.000" height="19.000" />
  <text class="left" x="481.924" y="94.000">-.mount</text>
  <rect class="activating" x="476.983" y="100.000" width="0.000" height="19.000" />
  <rect class="active" x="476.983" y="100.000" width="1084.965" height="19.000" />
  <rect class="deactivating" x="1561.948" y="100.000" width="0.000" height="19.000" />
  <text class="left" x="481.983" y="114.000">-.slice</text>
  <rect class="activating" x="476.992" y="120.000" width="112.905" height="19.000" />
  <rect class="active" x="589.897" y="120.000" width="972.051" height="19.000" />
  <rect class="deactivating" x="1561.948" y="120.000" width="0.000" height="19.000" />
  <text class="left" x="481.992" y="134.000">dev-dm\x2d2.device (1.129s)</text>
  <rect class="activating" x="476.998" y="140.000" width="98.688" height="19.000" />
  <rect class="active" x="575.686" y="140.000" width="986.262" height="19.000" />
  <rect class="deactivating" x="1561.948" y="140.000" width="0.000" height="19.000" />
  <text class="left" x="481.998" y="154.000">dev-vg_sys-lv_mainvo.device (986ms)</text>
  <rect class="activating" x="477.005" y="160.000" width="0.000" height="19.000" />
  <rect class="active" x="477.005" y="160.000" width="1084.943" height="19.000" />
  <rect class="deactivating" x="1561.948" y="160.000" width="0.000" height="19.000" />
  <text class="left" x="482.005" y="174.000">media-root\x2dro.mount</text>
  <rect class="activating" x="477.057" y="180.000" width="0.000" height="19.000" />
  <rect class="active" x="477.057" y="180.000" width="1084.891" height="19.000" />
  <rect class="deactivating" x="1561.948" y="180.000" width="0.000" height="19.000" />
  <text class="left" x="482.057" y="194.000">media-root\x2drw.mount</text>
  <rect class="activating" x="482.084" y="200.000" width="0.000" height="19.000" />
  <rect class="active" x="482.084" y="200.000" width="1079.864" height="19.000" />
  <rect class="deactivating" x="1561.948" y="200.000" width="0.000" height="19.000" />
  <text class="left" x="487.084" y="214.000">system-getty.slice</text>
  <rect class="activating" x="482.332" y="220.000" width="0.000" height="19.000" />
  <rect class="active" x="482.332" y="220.000" width="1079.616" height="19.000" />
  <rect class="deactivating" x="1561.948" y="220.000" width="0.000" height="19.000" />
  <text class="left" x="487.332" y="234.000">system-modprobe.slice</text>
  <rect class="activating" x="482.571" y="240.000" width="0.000" height="19.000" />
  <rect class="active" x="482.571" y="240.000" width="1079.377" height="19.000" />
  <rect class="deactivating" x="1561.948" y="240.000" width="0.000" height="19.000" />
  <text class="left" x="487.571" y="254.000">system-serial\x2dgetty.slice</text>
  <rect class="activating" x="482.847" y="260.000" width="0.000" height="19.000" />
  <rect class="active" x="482.847" y="260.000" width="1079.101" height="19.000" />
  <rect class="deactivating" x="1561.948" y="260.000" width="0.000" height="19.000" />
  <text class="left" x="487.847" y="274.000">system-systemd\x2dfsck.slice</text>
  <rect class="activating" x="483.085" y="280.000" width="0.000" height="19.000" />
  <rect class="active" x="483.085" y="280.000" width="1078.863" height="19.000" />
  <rect class="deactivating" x="1561.948" y="280.000" width="0.000" height="19.000" />
  <text class="left" x="488.085" y="294.000">system-weston.slice</text>
  <rect class="activating" x="483.265" y="300.000" width="0.000" height="19.000" />
  <rect class="active" x="483.265" y="300.000" width="1078.684" height="19.000" />
  <rect class="deactivating" x="1561.948" y="300.000" width="0.000" height="19.000" />
  <text class="left" x="488.265" y="314.000">user.slice</text>
  <rect class="activating" x="483.301" y="320.000" width="0.000" height="19.000" />
  <rect class="active" x="483.301" y="320.000" width="1078.647" height="19.000" />
  <rect class="deactivating" x="1561.948" y="320.000" width="0.000" height="19.000" />
  <text class="left" x="488.301" y="334.000">systemd-ask-password-wall.path</text>
  <rect class="activating" x="483.344" y="340.000" width="0.000" height="19.000" />
  <rect class="active" x="483.344" y="340.000" width="1078.604" height="19.000" />
  <rect class="deactivating" x="1561.948" y="340.000" width="0.000" height="19.000" />
  <text class="left" x="488.344" y="354.000">integritysetup.target</text>
  <rect class="activating" x="483.360" y="360.000" width="0.000" height="19.000" />
  <rect class="active" x="483.360" y="360.000" width="1078.588" height="19.000" />
  <rect class="deactivating" x="1561.948" y="360.000" width="0.000" height="19.000" />
  <text class="left" x="488.360" y="374.000">remote-fs.target</text>
  <rect class="activating" x="483.366" y="380.000" width="0.000" height="19.000" />
  <rect class="active" x="483.366" y="380.000" width="1078.582" height="19.000" />
  <rect class="deactivating" x="1561.948" y="380.000" width="0.000" height="19.000" />
  <text class="left" x="488.366" y="394.000">slices.target</text>
  <rect class="activating" x="483.375" y="400.000" width="0.000" height="19.000" />
  <rect class="active" x="483.375" y="400.000" width="1078.573" height="19.000" />
  <rect class="deactivating" x="1561.948" y="400.000" width="0.000" height="19.000" />
  <text class="left" x="488.375" y="414.000">swap.target</text>
  <rect class="activating" x="483.384" y="420.000" width="0.000" height="19.000" />
  <rect class="active" x="483.384" y="420.000" width="1078.565" height="19.000" />
  <rect class="deactivating" x="1561.948" y="420.000" width="0.000" height="19.000" />
  <text class="left" x="488.384" y="434.000">veritysetup.target</text>
  <rect class="activating" x="483.413" y="440.000" width="0.000" height="19.000" />
  <rect class="active" x="483.413" y="440.000" width="1078.535" height="19.000" />
  <rect class="deactivating" x="1561.948" y="440.000" width="0.000" height="19.000" />
  <text class="left" x="488.413" y="454.000">dm-event.socket</text>
  <rect class="activating" x="483.464" y="460.000" width="0.000" height="19.000" />
  <rect class="active" x="483.464" y="460.000" width="1078.485" height="19.000" />
  <rect class="deactivating" x="1561.948" y="460.000" width="0.000" height="19.000" />
  <text class="left" x="488.464" y="474.000">lvm2-lvmpolld.socket</text>
  <rect class="activating" x="483.498" y="480.000" width="0.000" height="19.000" />
  <rect class="active" x="483.498" y="480.000" width="1078.450" height="19.000" />
  <rect class="deactivating" x="1561.948" y="480.000" width="0.000" height="19.000" />
  <text class="left" x="488.498" y="494.000">systemd-fsckd.socket</text>
  <rect class="activating" x="483.518" y="500.000" width="0.000" height="19.000" />
  <rect class="active" x="483.518" y="500.000" width="1078.430" height="19.000" />
  <rect class="deactivating" x="1561.948" y="500.000" width="0.000" height="19.000" />
  <text class="left" x="488.518" y="514.000">systemd-initctl.socket</text>
  <rect class="activating" x="483.581" y="520.000" width="0.000" height="19.000" />
  <rect class="active" x="483.581" y="520.000" width="1078.368" height="19.000" />
  <rect class="deactivating" x="1561.948" y="520.000" width="0.000" height="19.000" />
  <text class="left" x="488.581" y="534.000">systemd-journald-audit.socket</text>
  <rect class="activating" x="483.641" y="540.000" width="0.000" height="19.000" />
  <rect class="active" x="483.641" y="540.000" width="1078.308" height="19.000" />
  <rect class="deactivating" x="1561.948" y="540.000" width="0.000" height="19.000" />
  <text class="left" x="488.641" y="554.000">systemd-journald-dev-log.socket</text>
  <rect class="activating" x="483.689" y="560.000" width="0.000" height="19.000" />
  <rect class="active" x="483.689" y="560.000" width="1078.260" height="19.000" />
  <rect class="deactivating" x="1561.948" y="560.000" width="0.000" height="19.000" />
  <text class="left" x="488.689" y="574.000">systemd-journald.socket</text>
  <rect class="activating" x="483.964" y="580.000" width="0.000" height="19.000" />
  <rect class="active" x="483.964" y="580.000" width="1077.985" height="19.000" />
  <rect class="deactivating" x="1561.948" y="580.000" width="0.000" height="19.000" />
  <text class="left" x="488.964" y="594.000">systemd-udevd-control.socket</text>
  <rect class="activating" x="484.032" y="600.000" width="0.000" height="19.000" />
  <rect class="active" x="484.032" y="600.000" width="1077.917" height="19.000" />
  <rect class="deactivating" x="1561.948" y="600.000" width="0.000" height="19.000" />
  <text class="left" x="489.032" y="614.000">systemd-udevd-kernel.socket</text>
  <rect class="activating" x="484.441" y="620.000" width="12.751" height="19.000" />
  <rect class="active" x="497.191" y="620.000" width="1064.757" height="19.000" />
  <rect class="deactivating" x="1561.948" y="620.000" width="0.000" height="19.000" />
  <text class="left" x="489.441" y="634.000">dev-hugepages.mount (127ms)</text>
  <rect class="activating" x="484.903" y="640.000" width="12.488" height="19.000" />
  <rect class="active" x="497.391" y="640.000" width="1064.558" height="19.000" />
  <rect class="deactivating" x="1561.948" y="640.000" width="0.000" height="19.000" />
  <text class="left" x="489.903" y="654.000">dev-mqueue.mount (124ms)</text>
  <rect class="activating" x="485.436" y="660.000" width="12.135" height="19.000" />
  <rect class="active" x="497.571" y="660.000" width="1064.378" height="19.000" />
  <rect class="deactivating" x="1561.948" y="660.000" width="0.000" height="19.000" />
  <text class="left" x="490.436" y="674.000">sys-kernel-debug.mount (121ms)</text>
  <rect class="activating" x="485.961" y="680.000" width="11.792" height="19.000" />
  <rect class="active" x="497.753" y="680.000" width="1064.195" height="19.000" />
  <rect class="deactivating" x="1561.948" y="680.000" width="0.000" height="19.000" />
  <text class="left" x="490.961" y="694.000">sys-kernel-tracing.mount (117ms)</text>
  <rect class="activating" x="486.027" y="700.000" width="0.038" height="19.000" />
  <rect class="active" x="486.066" y="700.000" width="1075.883" height="19.000" />
  <rect class="deactivating" x="1561.948" y="700.000" width="0.000" height="19.000" />
  <text class="left" x="491.027" y="714.000">blk-availability.service (383us)</text>
  <rect class="activating" x="486.722" y="720.000" width="97.466" height="19.000" />
  <rect class="active" x="584.188" y="720.000" width="977.760" height="19.000" />
  <rect class="deactivating" x="1561.948" y="720.000" width="0.000" height="19.000" />
  <text class="left" x="491.722" y="734.000">keyboard-setup.service (974ms)</text>
  <rect class="activating" x="487.245" y="740.000" width="10.796" height="19.000" />
  <rect class="active" x="498.041" y="740.000" width="1063.907" height="19.000" />
  <rect class="deactivating" x="1561.948" y="740.000" width="0.000" height="19.000" />
  <text class="left" x="492.245" y="754.000">kmod-static-nodes.service (107ms)</text>
  <rect class="activating" x="487.755" y="760.000" width="21.091" height="19.000" />
  <rect class="active" x="508.846" y="760.000" width="1053.103" height="19.000" />
  <rect class="deactivating" x="1561.948" y="760.000" width="0.000" height="19.000" />
  <text class="left" x="492.755" y="774.000">lvm2-monitor.service (210ms)</text>
  <rect class="activating" x="488.305" y="780.000" width="10.023" height="19.000" />
  <rect class="active" x="498.328" y="780.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="498.328" y="780.000" width="0.000" height="19.000" />
  <text class="left" x="493.305" y="794.000">modprobe@configfs.service (100ms)</text>
  <rect class="activating" x="489.441" y="800.000" width="9.452" height="19.000" />
  <rect class="active" x="498.893" y="800.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="498.893" y="800.000" width="0.000" height="19.000" />
  <text class="left" x="494.441" y="814.000">modprobe@efi_pstore.service (94ms)</text>
  <rect class="activating" x="489.966" y="820.000" width="9.197" height="19.000" />
  <rect class="active" x="499.163" y="820.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="499.163" y="820.000" width="0.000" height="19.000" />
  <text class="left" x="494.966" y="834.000">modprobe@fuse.service (91ms)</text>
  <rect class="activating" x="490.828" y="840.000" width="590.282" height="19.000" />
  <rect class="active" x="1081.110" y="840.000" width="480.838" height="19.000" />
  <rect class="deactivating" x="1561.948" y="840.000" width="0.000" height="19.000" />
  <text class="left" x="495.828" y="854.000">networking.service (5.902s)</text>
  <rect class="activating" x="491.552" y="860.000" width="23.292" height="19.000" />
  <rect class="active" x="514.844" y="860.000" width="1047.104" height="19.000" />
  <rect class="deactivating" x="1561.948" y="860.000" width="0.000" height="19.000" />
  <text class="left" x="496.552" y="874.000">systemd-journald.service (232ms)</text>
  <rect class="activating" x="492.654" y="880.000" width="6.855" height="19.000" />
  <rect class="active" x="499.508" y="880.000" width="1062.440" height="19.000" />
  <rect class="deactivating" x="1561.948" y="880.000" width="0.000" height="19.000" />
  <text class="left" x="497.654" y="894.000">systemd-modules-load.service (68ms)</text>
  <rect class="activating" x="493.613" y="900.000" width="13.410" height="19.000" />
  <rect class="active" x="507.023" y="900.000" width="1054.925" height="19.000" />
  <rect class="deactivating" x="1561.948" y="900.000" width="0.000" height="19.000" />
  <text class="left" x="498.613" y="914.000">systemd-remount-fs.service (134ms)</text>
  <rect class="activating" x="495.273" y="920.000" width="68.941" height="19.000" />
  <rect class="active" x="564.214" y="920.000" width="997.735" height="19.000" />
  <rect class="deactivating" x="1561.948" y="920.000" width="0.000" height="19.000" />
  <text class="left" x="500.273" y="934.000">systemd-udev-trigger.service (689ms)</text>
  <rect class="activating" x="495.870" y="940.000" width="4.340" height="19.000" />
  <rect class="active" x="500.210" y="940.000" width="1061.738" height="19.000" />
  <rect class="deactivating" x="1561.948" y="940.000" width="0.000" height="19.000" />
  <text class="left" x="500.870" y="954.000">ufw.service (43ms)</text>
  <rect class="activating" x="501.263" y="960.000" width="3.341" height="19.000" />
  <rect class="active" x="504.604" y="960.000" width="1057.344" height="19.000" />
  <rect class="deactivating" x="1561.948" y="960.000" width="0.000" height="19.000" />
  <text class="left" x="506.263" y="974.000">sys-fs-fuse-connections.mount (33ms)</text>
  <rect class="activating" x="502.862" y="980.000" width="2.043" height="19.000" />
  <rect class="active" x="504.905" y="980.000" width="1057.043" height="19.000" />
  <rect class="deactivating" x="1561.948" y="980.000" width="0.000" height="19.000" />
  <text class="left" x="507.862" y="994.000">sys-kernel-config.mount (20ms)</text>
  <rect class="activating" x="503.747" y="1000.000" width="8.111" height="19.000" />
  <rect class="active" x="511.858" y="1000.000" width="1050.091" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1000.000" width="0.000" height="19.000" />
  <text class="left" x="508.747" y="1014.000">systemd-sysctl.service (81ms)</text>
  <rect class="activating" x="507.809" y="1020.000" width="266.654" height="19.000" />
  <rect class="active" x="774.463" y="1020.000" width="787.486" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1020.000" width="0.000" height="19.000" />
  <text class="left" x="512.809" y="1034.000">systemd-random-seed.service (2.666s)</text>
  <rect class="activating" x="508.557" y="1040.000" width="6.913" height="19.000" />
  <rect class="active" x="515.470" y="1040.000" width="1046.479" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1040.000" width="0.000" height="19.000" />
  <text class="left" x="513.557" y="1054.000">systemd-sysusers.service (69ms)</text>
  <rect class="activating" x="516.268" y="1060.000" width="6.902" height="19.000" />
  <rect class="active" x="523.170" y="1060.000" width="1038.778" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1060.000" width="0.000" height="19.000" />
  <text class="left" x="521.268" y="1074.000">systemd-tmpfiles-setup-dev.service (69ms)</text>
  <rect class="activating" x="523.880" y="1080.000" width="24.481" height="19.000" />
  <rect class="active" x="548.360" y="1080.000" width="1013.588" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1080.000" width="0.000" height="19.000" />
  <text class="left" x="528.880" y="1094.000">systemd-udevd.service (244ms)</text>
  <rect class="activating" x="548.964" y="1100.000" width="0.000" height="19.000" />
  <rect class="active" x="548.964" y="1100.000" width="1012.984" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1100.000" width="0.000" height="19.000" />
  <text class="left" x="553.964" y="1114.000">sys-module-fuse.device</text>
  <rect class="activating" x="556.248" y="1120.000" width="0.000" height="19.000" />
  <rect class="active" x="556.248" y="1120.000" width="1005.700" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1120.000" width="0.000" height="19.000" />
  <text class="left" x="561.248" y="1134.000">sys-module-configfs.device</text>
  <rect class="activating" x="573.521" y="1140.000" width="0.000" height="19.000" />
  <rect class="active" x="573.521" y="1140.000" width="988.427" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1140.000" width="0.000" height="19.000" />
  <text class="left" x="578.521" y="1154.000">dev-ttyS1.device</text>
  <rect class="activating" x="573.524" y="1160.000" width="0.000" height="19.000" />
  <rect class="active" x="573.524" y="1160.000" width="988.424" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1160.000" width="0.000" height="19.000" />
  <text class="left" x="578.524" y="1174.000">sys-devices-platform-serial8250-tty-ttyS1.device</text>
  <rect class="activating" x="573.871" y="1180.000" width="0.000" height="19.000" />
  <rect class="active" x="573.871" y="1180.000" width="988.077" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1180.000" width="0.000" height="19.000" />
  <text class="left" x="578.871" y="1194.000">dev-ttyS0.device</text>
  <rect class="activating" x="573.875" y="1200.000" width="0.000" height="19.000" />
  <rect class="active" x="573.875" y="1200.000" width="988.074" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1200.000" width="0.000" height="19.000" />
  <text class="left" x="578.875" y="1214.000">sys-devices-platform-serial8250-tty-ttyS0.device</text>
  <rect class="activating" x="575.679" y="1220.000" width="0.000" height="19.000" />
  <rect class="active" x="575.679" y="1220.000" width="986.269" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1220.000" width="0.000" height="19.000" />
  <text class="left" x="580.679" y="1234.000">dev-disk-by\x2duuid-57f52eb0\x2d76a4\x2d44f2\x2da179\x2d0a1e31095fb7.device</text>
  <rect class="activating" x="575.684" y="1240.000" width="0.000" height="19.000" />
  <rect class="active" x="575.684" y="1240.000" width="986.265" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1240.000" width="0.000" height="19.000" />
  <text class="left" x="580.684" y="1254.000">dev-dm\x2d0.device</text>
  <rect class="activating" x="575.685" y="1260.000" width="0.000" height="19.000" />
  <rect class="active" x="575.685" y="1260.000" width="986.264" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1260.000" width="0.000" height="19.000" />
  <text class="left" x="580.685" y="1274.000">dev-disk-by\x2did-dm\x2dname\x2dvg_sys\x2dlv_mainvo.device</text>
  <rect class="activating" x="575.686" y="1280.000" width="0.000" height="19.000" />
  <rect class="active" x="575.686" y="1280.000" width="986.263" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1280.000" width="0.000" height="19.000" />
  <text class="left" x="580.686" y="1294.000">dev-disk-by\x2did-dm\x2duuid\x2dLVM\x2dzCrWNGpKmO38jPxciKUDeD46Py1MR4jjf6mgXFli4AWBftTu6ESXHcbZVQzht5Bi.device</text>
  <rect class="activating" x="575.687" y="1300.000" width="0.000" height="19.000" />
  <rect class="active" x="575.687" y="1300.000" width="986.261" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1300.000" width="0.000" height="19.000" />
  <text class="left" x="580.687" y="1314.000">sys-devices-virtual-block-dm\x2d0.device</text>
  <rect class="activating" x="575.688" y="1320.000" width="0.000" height="19.000" />
  <rect class="active" x="575.688" y="1320.000" width="986.260" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1320.000" width="0.000" height="19.000" />
  <text class="left" x="580.688" y="1334.000">dev-mapper-vg_sys\x2dlv_mainvo.device</text>
  <rect class="activating" x="576.594" y="1340.000" width="0.000" height="19.000" />
  <rect class="active" x="576.594" y="1340.000" width="985.354" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1340.000" width="0.000" height="19.000" />
  <text class="left" x="581.594" y="1354.000">dev-ttyS2.device</text>
  <rect class="activating" x="576.598" y="1360.000" width="0.000" height="19.000" />
  <rect class="active" x="576.598" y="1360.000" width="985.350" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1360.000" width="0.000" height="19.000" />
  <text class="left" x="581.598" y="1374.000">sys-devices-platform-serial8250-tty-ttyS2.device</text>
  <rect class="activating" x="577.507" y="1380.000" width="0.000" height="19.000" />
  <rect class="active" x="577.507" y="1380.000" width="984.441" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1380.000" width="0.000" height="19.000" />
  <text class="left" x="582.507" y="1394.000">sys-devices-platform-serial8250-tty-ttyS3.device</text>
  <rect class="activating" x="577.511" y="1400.000" width="0.000" height="19.000" />
  <rect class="active" x="577.511" y="1400.000" width="984.438" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1400.000" width="0.000" height="19.000" />
  <text class="left" x="582.511" y="1414.000">dev-ttyS3.device</text>
  <rect class="activating" x="581.423" y="1420.000" width="0.000" height="19.000" />
  <rect class="active" x="581.423" y="1420.000" width="980.525" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1420.000" width="0.000" height="19.000" />
  <text class="left" x="586.423" y="1434.000">dev-vg_sys-lv_pavo.device</text>
  <rect class="activating" x="581.427" y="1440.000" width="0.000" height="19.000" />
  <rect class="active" x="581.427" y="1440.000" width="980.521" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1440.000" width="0.000" height="19.000" />
  <text class="left" x="586.427" y="1454.000">dev-disk-by\x2did-dm\x2dname\x2dvg_sys\x2dlv_pavo.device</text>
  <rect class="activating" x="581.428" y="1460.000" width="0.000" height="19.000" />
  <rect class="active" x="581.428" y="1460.000" width="980.520" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1460.000" width="0.000" height="19.000" />
  <text class="left" x="586.428" y="1474.000">dev-mapper-vg_sys\x2dlv_pavo.device</text>
  <rect class="activating" x="581.430" y="1480.000" width="0.000" height="19.000" />
  <rect class="active" x="581.430" y="1480.000" width="980.519" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1480.000" width="0.000" height="19.000" />
  <text class="left" x="586.430" y="1494.000">dev-disk-by\x2dlabel-lv_pavo.device</text>
  <rect class="activating" x="581.461" y="1500.000" width="0.000" height="19.000" />
  <rect class="active" x="581.461" y="1500.000" width="980.488" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1500.000" width="0.000" height="19.000" />
  <text class="left" x="586.461" y="1514.000">dev-dm\x2d3.device</text>
  <rect class="activating" x="581.462" y="1520.000" width="0.000" height="19.000" />
  <rect class="active" x="581.462" y="1520.000" width="980.486" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1520.000" width="0.000" height="19.000" />
  <text class="left" x="586.462" y="1534.000">sys-devices-virtual-block-dm\x2d3.device</text>
  <rect class="activating" x="581.464" y="1540.000" width="0.000" height="19.000" />
  <rect class="active" x="581.464" y="1540.000" width="980.485" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1540.000" width="0.000" height="19.000" />
  <text class="left" x="586.464" y="1554.000">dev-disk-by\x2did-dm\x2duuid\x2dLVM\x2dzCrWNGpKmO38jPxciKUDeD46Py1MR4jjCoHheRw9lIM26AHpYzBQKhSrmQVPnHfY.device</text>
  <rect class="activating" x="581.465" y="1560.000" width="0.000" height="19.000" />
  <rect class="active" x="581.465" y="1560.000" width="980.483" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1560.000" width="0.000" height="19.000" />
  <text class="left" x="586.465" y="1574.000">dev-disk-by\x2duuid-bfe64ef0\x2da382\x2d11ed\x2d8924\x2d13339d79fba3.device</text>
  <rect class="activating" x="583.054" y="1580.000" width="0.000" height="19.000" />
  <rect class="active" x="583.054" y="1580.000" width="978.895" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1580.000" width="0.000" height="19.000" />
  <text class="left" x="588.054" y="1594.000">sys-devices-virtual-block-dm\x2d1.device</text>
  <rect class="activating" x="583.057" y="1600.000" width="0.000" height="19.000" />
  <rect class="active" x="583.057" y="1600.000" width="978.891" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1600.000" width="0.000" height="19.000" />
  <text class="left" x="588.057" y="1614.000">dev-vg_sys-lv_revo.device</text>
  <rect class="activating" x="583.058" y="1620.000" width="0.000" height="19.000" />
  <rect class="active" x="583.058" y="1620.000" width="978.890" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1620.000" width="0.000" height="19.000" />
  <text class="left" x="588.058" y="1634.000">dev-disk-by\x2did-dm\x2dname\x2dvg_sys\x2dlv_revo.device</text>
  <rect class="activating" x="583.060" y="1640.000" width="0.000" height="19.000" />
  <rect class="active" x="583.060" y="1640.000" width="978.889" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1640.000" width="0.000" height="19.000" />
  <text class="left" x="588.060" y="1654.000">dev-disk-by\x2did-dm\x2duuid\x2dLVM\x2dzCrWNGpKmO38jPxciKUDeD46Py1MR4jjt89pVGRUNS9edZvVwx7CgWsu56uedpAP.device</text>
  <rect class="activating" x="583.061" y="1660.000" width="0.000" height="19.000" />
  <rect class="active" x="583.061" y="1660.000" width="978.888" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1660.000" width="0.000" height="19.000" />
  <text class="left" x="588.061" y="1674.000">dev-dm\x2d1.device</text>
  <rect class="activating" x="583.061" y="1680.000" width="0.000" height="19.000" />
  <rect class="active" x="583.061" y="1680.000" width="978.887" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1680.000" width="0.000" height="19.000" />
  <text class="left" x="588.061" y="1694.000">dev-mapper-vg_sys\x2dlv_revo.device</text>
  <rect class="activating" x="584.308" y="1700.000" width="0.000" height="19.000" />
  <rect class="active" x="584.308" y="1700.000" width="977.640" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1700.000" width="0.000" height="19.000" />
  <text class="left" x="589.308" y="1714.000">local-fs-pre.target</text>
  <rect class="activating" x="584.918" y="1720.000" width="8.458" height="19.000" />
  <rect class="active" x="593.376" y="1720.000" width="968.572" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1720.000" width="0.000" height="19.000" />
  <text class="left" x="589.918" y="1734.000">plymouth-start.service (84ms)</text>
  <rect class="activating" x="585.627" y="1740.000" width="15.056" height="19.000" />
  <rect class="active" x="600.683" y="1740.000" width="961.266" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1740.000" width="0.000" height="19.000" />
  <text class="left" x="590.627" y="1754.000">systemd-fsck@dev-disk-by\x2dlabel-lv_pavo.service (150ms)</text>
  <rect class="activating" x="586.283" y="1760.000" width="0.000" height="19.000" />
  <rect class="active" x="586.283" y="1760.000" width="975.666" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1760.000" width="0.000" height="19.000" />
  <text class="left" x="591.283" y="1774.000">sys-devices-platform-soc\x400-30800000.bus-30800000.spba\x2dbus-30890000.serial-tty-ttymxc1.device</text>
  <rect class="activating" x="586.289" y="1780.000" width="0.000" height="19.000" />
  <rect class="active" x="586.289" y="1780.000" width="975.659" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1780.000" width="0.000" height="19.000" />
  <text class="left" x="591.289" y="1794.000">dev-ttymxc1.device</text>
  <rect class="activating" x="589.891" y="1800.000" width="0.000" height="19.000" />
  <rect class="active" x="589.891" y="1800.000" width="972.058" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1800.000" width="0.000" height="19.000" />
  <text class="left" x="594.891" y="1814.000">dev-disk-by\x2did-dm\x2duuid\x2dLVM\x2dzCrWNGpKmO38jPxciKUDeD46Py1MR4jj9wOhLcHoZzfBgUXrRDYAmSXRpXMf9t1o.device</text>
  <rect class="activating" x="589.895" y="1820.000" width="0.000" height="19.000" />
  <rect class="active" x="589.895" y="1820.000" width="972.054" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1820.000" width="0.000" height="19.000" />
  <text class="left" x="594.895" y="1834.000">dev-mapper-vg_sys\x2dlv_davo.device</text>
  <rect class="activating" x="589.896" y="1840.000" width="0.000" height="19.000" />
  <rect class="active" x="589.896" y="1840.000" width="972.053" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1840.000" width="0.000" height="19.000" />
  <text class="left" x="594.896" y="1854.000">dev-vg_sys-lv_davo.device</text>
  <rect class="activating" x="589.897" y="1860.000" width="0.000" height="19.000" />
  <rect class="active" x="589.897" y="1860.000" width="972.052" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1860.000" width="0.000" height="19.000" />
  <text class="left" x="594.897" y="1874.000">dev-disk-by\x2duuid-5e5e505c\x2d9d35\x2d4a76\x2d8803\x2ddd31eadedbe9.device</text>
  <rect class="activating" x="589.899" y="1880.000" width="0.000" height="19.000" />
  <rect class="active" x="589.899" y="1880.000" width="972.050" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1880.000" width="0.000" height="19.000" />
  <text class="left" x="594.899" y="1894.000">sys-devices-virtual-block-dm\x2d2.device</text>
  <rect class="activating" x="589.900" y="1900.000" width="0.000" height="19.000" />
  <rect class="active" x="589.900" y="1900.000" width="972.048" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1900.000" width="0.000" height="19.000" />
  <text class="left" x="594.900" y="1914.000">dev-disk-by\x2did-dm\x2dname\x2dvg_sys\x2dlv_davo.device</text>
  <rect class="activating" x="591.707" y="1920.000" width="0.000" height="19.000" />
  <rect class="active" x="591.707" y="1920.000" width="970.241" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1920.000" width="0.000" height="19.000" />
  <text class="left" x="596.707" y="1934.000">sys-subsystem-net-devices-end0.device</text>
  <rect class="activating" x="591.711" y="1940.000" width="0.000" height="19.000" />
  <rect class="active" x="591.711" y="1940.000" width="970.238" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1940.000" width="0.000" height="19.000" />
  <text class="left" x="596.711" y="1954.000">sys-devices-platform-soc\x400-30800000.bus-30be0000.ethernet-net-end0.device</text>
  <rect class="activating" x="592.483" y="1960.000" width="0.000" height="19.000" />
  <rect class="active" x="592.483" y="1960.000" width="969.466" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1960.000" width="0.000" height="19.000" />
  <text class="left" x="597.483" y="1974.000">systemd-fsckd.service</text>
  <rect class="activating" x="593.589" y="1980.000" width="0.000" height="19.000" />
  <rect class="active" x="593.589" y="1980.000" width="968.359" height="19.000" />
  <rect class="deactivating" x="1561.948" y="1980.000" width="0.000" height="19.000" />
  <text class="left" x="598.589" y="1994.000">systemd-ask-password-plymouth.path</text>
  <rect class="activating" x="593.670" y="2000.000" width="0.000" height="19.000" />
  <rect class="active" x="593.670" y="2000.000" width="968.278" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2000.000" width="0.000" height="19.000" />
  <text class="left" x="598.670" y="2014.000">cryptsetup.target</text>
  <rect class="activating" x="595.207" y="2020.000" width="0.000" height="19.000" />
  <rect class="active" x="595.207" y="2020.000" width="966.741" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2020.000" width="0.000" height="19.000" />
  <text class="left" x="600.207" y="2034.000">sys-devices-virtual-tty-ttyp0.device</text>
  <rect class="activating" x="595.211" y="2040.000" width="0.000" height="19.000" />
  <rect class="active" x="595.211" y="2040.000" width="966.738" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2040.000" width="0.000" height="19.000" />
  <text class="left" x="600.211" y="2054.000">dev-ttyp0.device</text>
  <rect class="activating" x="596.351" y="2060.000" width="0.000" height="19.000" />
  <rect class="active" x="596.351" y="2060.000" width="965.598" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2060.000" width="0.000" height="19.000" />
  <text class="left" x="601.351" y="2074.000">dev-ttyp1.device</text>
  <rect class="activating" x="596.354" y="2080.000" width="0.000" height="19.000" />
  <rect class="active" x="596.354" y="2080.000" width="965.594" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2080.000" width="0.000" height="19.000" />
  <text class="left" x="601.354" y="2094.000">sys-devices-virtual-tty-ttyp1.device</text>
  <rect class="activating" x="597.445" y="2100.000" width="0.000" height="19.000" />
  <rect class="active" x="597.445" y="2100.000" width="964.504" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2100.000" width="0.000" height="19.000" />
  <text class="left" x="602.445" y="2114.000">run-credentials-systemd\x2dtmpfiles\x2dsetup\x2ddev.service.mount</text>
  <rect class="activating" x="597.558" y="2120.000" width="0.000" height="19.000" />
  <rect class="active" x="597.558" y="2120.000" width="964.391" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2120.000" width="0.000" height="19.000" />
  <text class="left" x="602.558" y="2134.000">run-credentials-systemd\x2dsysusers.service.mount</text>
  <rect class="activating" x="597.673" y="2140.000" width="0.000" height="19.000" />
  <rect class="active" x="597.673" y="2140.000" width="964.276" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2140.000" width="0.000" height="19.000" />
  <text class="left" x="602.673" y="2154.000">run-credentials-systemd\x2dsysctl.service.mount</text>
  <rect class="activating" x="598.086" y="2160.000" width="0.000" height="19.000" />
  <rect class="active" x="598.086" y="2160.000" width="963.862" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2160.000" width="0.000" height="19.000" />
  <text class="left" x="603.086" y="2174.000">dev-ttyp3.device</text>
  <rect class="activating" x="598.089" y="2180.000" width="0.000" height="19.000" />
  <rect class="active" x="598.089" y="2180.000" width="963.859" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2180.000" width="0.000" height="19.000" />
  <text class="left" x="603.089" y="2194.000">sys-devices-virtual-tty-ttyp3.device</text>
  <rect class="activating" x="598.375" y="2200.000" width="0.000" height="19.000" />
  <rect class="active" x="598.375" y="2200.000" width="963.574" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2200.000" width="0.000" height="19.000" />
  <text class="left" x="603.375" y="2214.000">sys-devices-virtual-tty-ttyp9.device</text>
  <rect class="activating" x="598.378" y="2220.000" width="0.000" height="19.000" />
  <rect class="active" x="598.378" y="2220.000" width="963.570" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2220.000" width="0.000" height="19.000" />
  <text class="left" x="603.378" y="2234.000">dev-ttyp9.device</text>
  <rect class="activating" x="598.673" y="2240.000" width="0.000" height="19.000" />
  <rect class="active" x="598.673" y="2240.000" width="963.275" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2240.000" width="0.000" height="19.000" />
  <text class="left" x="603.673" y="2254.000">dev-ttypa.device</text>
  <rect class="activating" x="598.676" y="2260.000" width="0.000" height="19.000" />
  <rect class="active" x="598.676" y="2260.000" width="963.272" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2260.000" width="0.000" height="19.000" />
  <text class="left" x="603.676" y="2274.000">sys-devices-virtual-tty-ttypa.device</text>
  <rect class="activating" x="599.140" y="2280.000" width="0.000" height="19.000" />
  <rect class="active" x="599.140" y="2280.000" width="962.809" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2280.000" width="0.000" height="19.000" />
  <text class="left" x="604.140" y="2294.000">dev-ttypb.device</text>
  <rect class="activating" x="599.143" y="2300.000" width="0.000" height="19.000" />
  <rect class="active" x="599.143" y="2300.000" width="962.805" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2300.000" width="0.000" height="19.000" />
  <text class="left" x="604.143" y="2314.000">sys-devices-virtual-tty-ttypb.device</text>
  <rect class="activating" x="599.444" y="2320.000" width="0.000" height="19.000" />
  <rect class="active" x="599.444" y="2320.000" width="962.505" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2320.000" width="0.000" height="19.000" />
  <text class="left" x="604.444" y="2334.000">dev-ttyp8.device</text>
  <rect class="activating" x="599.447" y="2340.000" width="0.000" height="19.000" />
  <rect class="active" x="599.447" y="2340.000" width="962.502" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2340.000" width="0.000" height="19.000" />
  <text class="left" x="604.447" y="2354.000">sys-devices-virtual-tty-ttyp8.device</text>
  <rect class="activating" x="599.750" y="2360.000" width="0.000" height="19.000" />
  <rect class="active" x="599.750" y="2360.000" width="962.198" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2360.000" width="0.000" height="19.000" />
  <text class="left" x="604.750" y="2374.000">sys-devices-virtual-tty-ttypd.device</text>
  <rect class="activating" x="599.753" y="2380.000" width="0.000" height="19.000" />
  <rect class="active" x="599.753" y="2380.000" width="962.195" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2380.000" width="0.000" height="19.000" />
  <text class="left" x="604.753" y="2394.000">dev-ttypd.device</text>
  <rect class="activating" x="600.057" y="2400.000" width="0.000" height="19.000" />
  <rect class="active" x="600.057" y="2400.000" width="961.891" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2400.000" width="0.000" height="19.000" />
  <text class="left" x="605.057" y="2414.000">sys-devices-virtual-tty-ttyp2.device</text>
  <rect class="activating" x="600.060" y="2420.000" width="0.000" height="19.000" />
  <rect class="active" x="600.060" y="2420.000" width="961.888" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2420.000" width="0.000" height="19.000" />
  <text class="left" x="605.060" y="2434.000">dev-ttyp2.device</text>
  <rect class="activating" x="600.356" y="2440.000" width="0.000" height="19.000" />
  <rect class="active" x="600.356" y="2440.000" width="961.592" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2440.000" width="0.000" height="19.000" />
  <text class="left" x="605.356" y="2454.000">dev-ttyp4.device</text>
  <rect class="activating" x="600.360" y="2460.000" width="0.000" height="19.000" />
  <rect class="active" x="600.360" y="2460.000" width="961.589" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2460.000" width="0.000" height="19.000" />
  <text class="left" x="605.360" y="2474.000">sys-devices-virtual-tty-ttyp4.device</text>
  <rect class="activating" x="601.184" y="2480.000" width="0.000" height="19.000" />
  <rect class="active" x="601.184" y="2480.000" width="960.765" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2480.000" width="0.000" height="19.000" />
  <text class="left" x="606.184" y="2494.000">dev-ttypc.device</text>
  <rect class="activating" x="601.187" y="2500.000" width="0.000" height="19.000" />
  <rect class="active" x="601.187" y="2500.000" width="960.761" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2500.000" width="0.000" height="19.000" />
  <text class="left" x="606.187" y="2514.000">sys-devices-virtual-tty-ttypc.device</text>
  <rect class="activating" x="601.530" y="2520.000" width="0.000" height="19.000" />
  <rect class="active" x="601.530" y="2520.000" width="960.418" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2520.000" width="0.000" height="19.000" />
  <text class="left" x="606.530" y="2534.000">sys-devices-virtual-tty-ttyp5.device</text>
  <rect class="activating" x="601.533" y="2540.000" width="0.000" height="19.000" />
  <rect class="active" x="601.533" y="2540.000" width="960.415" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2540.000" width="0.000" height="19.000" />
  <text class="left" x="606.533" y="2554.000">dev-ttyp5.device</text>
  <rect class="activating" x="601.888" y="2560.000" width="0.000" height="19.000" />
  <rect class="active" x="601.888" y="2560.000" width="960.060" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2560.000" width="0.000" height="19.000" />
  <text class="left" x="606.888" y="2574.000">dev-ttyp6.device</text>
  <rect class="activating" x="601.892" y="2580.000" width="0.000" height="19.000" />
  <rect class="active" x="601.892" y="2580.000" width="960.056" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2580.000" width="0.000" height="19.000" />
  <text class="left" x="606.892" y="2594.000">sys-devices-virtual-tty-ttyp6.device</text>
  <rect class="activating" x="602.225" y="2600.000" width="0.000" height="19.000" />
  <rect class="active" x="602.225" y="2600.000" width="959.723" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2600.000" width="0.000" height="19.000" />
  <text class="left" x="607.225" y="2614.000">dev-ttyp7.device</text>
  <rect class="activating" x="602.228" y="2620.000" width="0.000" height="19.000" />
  <rect class="active" x="602.228" y="2620.000" width="959.720" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2620.000" width="0.000" height="19.000" />
  <text class="left" x="607.228" y="2634.000">sys-devices-virtual-tty-ttyp7.device</text>
  <rect class="activating" x="602.549" y="2640.000" width="0.000" height="19.000" />
  <rect class="active" x="602.549" y="2640.000" width="959.399" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2640.000" width="0.000" height="19.000" />
  <text class="left" x="607.549" y="2654.000">sys-devices-virtual-tty-ttypf.device</text>
  <rect class="activating" x="602.553" y="2660.000" width="0.000" height="19.000" />
  <rect class="active" x="602.553" y="2660.000" width="959.396" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2660.000" width="0.000" height="19.000" />
  <text class="left" x="607.553" y="2674.000">dev-ttypf.device</text>
  <rect class="activating" x="604.237" y="2680.000" width="0.000" height="19.000" />
  <rect class="active" x="604.237" y="2680.000" width="957.711" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2680.000" width="0.000" height="19.000" />
  <text class="left" x="609.237" y="2694.000">dev-disk-by\x2did-dm\x2dname\x2dvg_sys\x2dlv_rtvo.device</text>
  <rect class="activating" x="604.241" y="2700.000" width="0.000" height="19.000" />
  <rect class="active" x="604.241" y="2700.000" width="957.708" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2700.000" width="0.000" height="19.000" />
  <text class="left" x="609.241" y="2714.000">dev-dm\x2d4.device</text>
  <rect class="activating" x="604.242" y="2720.000" width="0.000" height="19.000" />
  <rect class="active" x="604.242" y="2720.000" width="957.706" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2720.000" width="0.000" height="19.000" />
  <text class="left" x="609.242" y="2734.000">dev-mapper-vg_sys\x2dlv_rtvo.device</text>
  <rect class="activating" x="604.243" y="2740.000" width="0.000" height="19.000" />
  <rect class="active" x="604.243" y="2740.000" width="957.705" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2740.000" width="0.000" height="19.000" />
  <text class="left" x="609.243" y="2754.000">sys-devices-virtual-block-dm\x2d4.device</text>
  <rect class="activating" x="604.244" y="2760.000" width="0.000" height="19.000" />
  <rect class="active" x="604.244" y="2760.000" width="957.704" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2760.000" width="0.000" height="19.000" />
  <text class="left" x="609.244" y="2774.000">dev-disk-by\x2dlabel-lv_rtvo.device</text>
  <rect class="activating" x="604.265" y="2780.000" width="0.000" height="19.000" />
  <rect class="active" x="604.265" y="2780.000" width="957.683" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2780.000" width="0.000" height="19.000" />
  <text class="left" x="609.265" y="2794.000">dev-disk-by\x2did-dm\x2duuid\x2dLVM\x2dzCrWNGpKmO38jPxciKUDeD46Py1MR4jjCvx2LSpC3JQ3ONT6jGUvzV9OwAdPymmg.device</text>
  <rect class="activating" x="604.267" y="2800.000" width="0.000" height="19.000" />
  <rect class="active" x="604.267" y="2800.000" width="957.682" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2800.000" width="0.000" height="19.000" />
  <text class="left" x="609.267" y="2814.000">dev-disk-by\x2duuid-c2cac6a0\x2da382\x2d11ed\x2d83b9\x2de3965c3bdd46.device</text>
  <rect class="activating" x="604.268" y="2820.000" width="0.000" height="19.000" />
  <rect class="active" x="604.268" y="2820.000" width="957.681" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2820.000" width="0.000" height="19.000" />
  <text class="left" x="609.268" y="2834.000">dev-vg_sys-lv_rtvo.device</text>
  <rect class="activating" x="604.580" y="2840.000" width="0.000" height="19.000" />
  <rect class="active" x="604.580" y="2840.000" width="957.368" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2840.000" width="0.000" height="19.000" />
  <text class="left" x="609.580" y="2854.000">dev-ttype.device</text>
  <rect class="activating" x="604.584" y="2860.000" width="0.000" height="19.000" />
  <rect class="active" x="604.584" y="2860.000" width="957.365" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2860.000" width="0.000" height="19.000" />
  <text class="left" x="609.584" y="2874.000">sys-devices-virtual-tty-ttype.device</text>
  <rect class="activating" x="605.832" y="2880.000" width="0.000" height="19.000" />
  <rect class="active" x="605.832" y="2880.000" width="956.116" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2880.000" width="0.000" height="19.000" />
  <text class="left" x="610.832" y="2894.000">dev-disk-by\x2did-mmc\x2dG1M15N_0x182776aa.device</text>
  <rect class="activating" x="605.843" y="2900.000" width="0.000" height="19.000" />
  <rect class="active" x="605.843" y="2900.000" width="956.105" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2900.000" width="0.000" height="19.000" />
  <text class="left" x="610.843" y="2914.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc.device</text>
  <rect class="activating" x="605.844" y="2920.000" width="0.000" height="19.000" />
  <rect class="active" x="605.844" y="2920.000" width="956.104" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2920.000" width="0.000" height="19.000" />
  <text class="left" x="610.844" y="2934.000">dev-mmcblk2.device</text>
  <rect class="activating" x="605.845" y="2940.000" width="0.000" height="19.000" />
  <rect class="active" x="605.845" y="2940.000" width="956.103" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2940.000" width="0.000" height="19.000" />
  <text class="left" x="610.845" y="2954.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2.device</text>
  <rect class="activating" x="606.515" y="2960.000" width="3.706" height="19.000" />
  <rect class="active" x="610.221" y="2960.000" width="951.728" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2960.000" width="0.000" height="19.000" />
  <text class="left" x="611.515" y="2974.000">etc-hmi-FwServices-pa.mount (37ms)</text>
  <rect class="activating" x="607.342" y="2980.000" width="3.052" height="19.000" />
  <rect class="active" x="610.394" y="2980.000" width="951.554" height="19.000" />
  <rect class="deactivating" x="1561.948" y="2980.000" width="0.000" height="19.000" />
  <text class="left" x="612.342" y="2994.000">var-log.mount (30ms)</text>
  <rect class="activating" x="608.027" y="3000.000" width="19.551" height="19.000" />
  <rect class="active" x="627.578" y="3000.000" width="934.370" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3000.000" width="0.000" height="19.000" />
  <text class="left" x="613.027" y="3014.000">systemd-fsck@dev-disk-by\x2dlabel-lv_rtvo.service (195ms)</text>
  <rect class="activating" x="609.484" y="3020.000" width="0.000" height="19.000" />
  <rect class="active" x="609.484" y="3020.000" width="952.464" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3020.000" width="0.000" height="19.000" />
  <text class="left" x="614.484" y="3034.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2boot1.device</text>
  <rect class="activating" x="609.489" y="3040.000" width="0.000" height="19.000" />
  <rect class="active" x="609.489" y="3040.000" width="952.459" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3040.000" width="0.000" height="19.000" />
  <text class="left" x="614.489" y="3054.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dboot1.device</text>
  <rect class="activating" x="609.491" y="3060.000" width="0.000" height="19.000" />
  <rect class="active" x="609.491" y="3060.000" width="952.458" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3060.000" width="0.000" height="19.000" />
  <text class="left" x="614.491" y="3074.000">dev-mmcblk2boot1.device</text>
  <rect class="activating" x="611.300" y="3080.000" width="4.992" height="19.000" />
  <rect class="active" x="616.292" y="3080.000" width="945.656" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3080.000" width="0.000" height="19.000" />
  <text class="left" x="616.300" y="3094.000">systemd-journal-flush.service (49ms)</text>
  <rect class="activating" x="616.079" y="3100.000" width="0.000" height="19.000" />
  <rect class="active" x="616.079" y="3100.000" width="945.870" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3100.000" width="0.000" height="19.000" />
  <text class="left" x="621.079" y="3114.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2boot0.device</text>
  <rect class="activating" x="616.082" y="3120.000" width="0.000" height="19.000" />
  <rect class="active" x="616.082" y="3120.000" width="945.866" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3120.000" width="0.000" height="19.000" />
  <text class="left" x="621.082" y="3134.000">dev-mmcblk2boot0.device</text>
  <rect class="activating" x="616.083" y="3140.000" width="0.000" height="19.000" />
  <rect class="active" x="616.083" y="3140.000" width="945.865" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3140.000" width="0.000" height="19.000" />
  <text class="left" x="621.083" y="3154.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dboot0.device</text>
  <rect class="activating" x="620.074" y="3160.000" width="0.000" height="19.000" />
  <rect class="active" x="620.074" y="3160.000" width="941.875" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3160.000" width="0.000" height="19.000" />
  <text class="left" x="625.074" y="3174.000">dev-mmcblk2p1.device</text>
  <rect class="activating" x="620.077" y="3180.000" width="0.000" height="19.000" />
  <rect class="active" x="620.077" y="3180.000" width="941.872" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3180.000" width="0.000" height="19.000" />
  <text class="left" x="625.077" y="3194.000">dev-disk-by\x2did-lvm\x2dpv\x2duuid\x2d5Rzba1\x2dZlTA\x2dI4eM\x2dnQii\x2dm4P1\x2drfub\x2dtWp3XI.device</text>
  <rect class="activating" x="620.078" y="3200.000" width="0.000" height="19.000" />
  <rect class="active" x="620.078" y="3200.000" width="941.870" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3200.000" width="0.000" height="19.000" />
  <text class="left" x="625.078" y="3214.000">dev-block-179:1.device</text>
  <rect class="activating" x="620.080" y="3220.000" width="0.000" height="19.000" />
  <rect class="active" x="620.080" y="3220.000" width="941.869" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3220.000" width="0.000" height="19.000" />
  <text class="left" x="625.080" y="3234.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p1.device</text>
  <rect class="activating" x="620.113" y="3240.000" width="0.000" height="19.000" />
  <rect class="active" x="620.113" y="3240.000" width="941.835" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3240.000" width="0.000" height="19.000" />
  <text class="left" x="625.113" y="3254.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dpart1.device</text>
  <rect class="activating" x="620.130" y="3260.000" width="0.000" height="19.000" />
  <rect class="active" x="620.130" y="3260.000" width="941.818" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3260.000" width="0.000" height="19.000" />
  <text class="left" x="625.130" y="3274.000">dev-disk-by\x2dpartlabel-system.device</text>
  <rect class="activating" x="620.136" y="3280.000" width="0.000" height="19.000" />
  <rect class="active" x="620.136" y="3280.000" width="941.813" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3280.000" width="0.000" height="19.000" />
  <text class="left" x="625.136" y="3294.000">dev-disk-by\x2did-mmc\x2dG1M15N_0x182776aa\x2dpart1.device</text>
  <rect class="activating" x="620.140" y="3300.000" width="0.000" height="19.000" />
  <rect class="active" x="620.140" y="3300.000" width="941.809" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3300.000" width="0.000" height="19.000" />
  <text class="left" x="625.140" y="3314.000">dev-disk-by\x2dpartuuid-d78c2ee2\x2dd4f8\x2d43f3\x2da818\x2d02e1398a35b5.device</text>
  <rect class="activating" x="622.394" y="3320.000" width="0.000" height="19.000" />
  <rect class="active" x="622.394" y="3320.000" width="939.554" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3320.000" width="0.000" height="19.000" />
  <text class="left" x="627.394" y="3334.000">dev-mmcblk2p2.device</text>
  <rect class="activating" x="622.397" y="3340.000" width="0.000" height="19.000" />
  <rect class="active" x="622.397" y="3340.000" width="939.551" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3340.000" width="0.000" height="19.000" />
  <text class="left" x="627.397" y="3354.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dpart2.device</text>
  <rect class="activating" x="622.398" y="3360.000" width="0.000" height="19.000" />
  <rect class="active" x="622.398" y="3360.000" width="939.550" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3360.000" width="0.000" height="19.000" />
  <text class="left" x="627.398" y="3374.000">dev-disk-by\x2did-mmc\x2dG1M15N_0x182776aa\x2dpart2.device</text>
  <rect class="activating" x="622.399" y="3380.000" width="0.000" height="19.000" />
  <rect class="active" x="622.399" y="3380.000" width="939.549" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3380.000" width="0.000" height="19.000" />
  <text class="left" x="627.399" y="3394.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p2.device</text>
  <rect class="activating" x="622.405" y="3400.000" width="0.000" height="19.000" />
  <rect class="active" x="622.405" y="3400.000" width="939.543" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3400.000" width="0.000" height="19.000" />
  <text class="left" x="627.405" y="3414.000">dev-disk-by\x2dpartuuid-d0c08e82\x2d90e8\x2d4a9b\x2d8a43\x2d5894455297cf.device</text>
  <rect class="activating" x="622.407" y="3420.000" width="0.000" height="19.000" />
  <rect class="active" x="622.407" y="3420.000" width="939.541" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3420.000" width="0.000" height="19.000" />
  <text class="left" x="627.407" y="3434.000">dev-disk-by\x2dpartlabel-ltspa.device</text>
  <rect class="activating" x="624.217" y="3440.000" width="0.000" height="19.000" />
  <rect class="active" x="624.217" y="3440.000" width="937.731" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3440.000" width="0.000" height="19.000" />
  <text class="left" x="629.217" y="3454.000">dev-disk-by\x2dpartlabel-aper.device</text>
  <rect class="activating" x="624.221" y="3460.000" width="0.000" height="19.000" />
  <rect class="active" x="624.221" y="3460.000" width="937.727" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3460.000" width="0.000" height="19.000" />
  <text class="left" x="629.221" y="3474.000">dev-disk-by\x2dpartuuid-8f20bc16\x2d2321\x2d47a9\x2daa20\x2daa95138f1a55.device</text>
  <rect class="activating" x="624.222" y="3480.000" width="0.000" height="19.000" />
  <rect class="active" x="624.222" y="3480.000" width="937.726" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3480.000" width="0.000" height="19.000" />
  <text class="left" x="629.222" y="3494.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p3.device</text>
  <rect class="activating" x="624.224" y="3500.000" width="0.000" height="19.000" />
  <rect class="active" x="624.224" y="3500.000" width="937.725" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3500.000" width="0.000" height="19.000" />
  <text class="left" x="629.224" y="3514.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dpart3.device</text>
  <rect class="activating" x="624.225" y="3520.000" width="0.000" height="19.000" />
  <rect class="active" x="624.225" y="3520.000" width="937.724" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3520.000" width="0.000" height="19.000" />
  <text class="left" x="629.225" y="3534.000">dev-mmcblk2p3.device</text>
  <rect class="activating" x="624.226" y="3540.000" width="0.000" height="19.000" />
  <rect class="active" x="624.226" y="3540.000" width="937.723" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3540.000" width="0.000" height="19.000" />
  <text class="left" x="629.226" y="3554.000">dev-disk-by\x2did-mmc\x2dG1M15N_0x182776aa\x2dpart3.device</text>
  <rect class="activating" x="626.440" y="3560.000" width="0.000" height="19.000" />
  <rect class="active" x="626.440" y="3560.000" width="935.508" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3560.000" width="0.000" height="19.000" />
  <text class="left" x="631.440" y="3574.000">dev-disk-by\x2did-mmc\x2dG1M15N_0x182776aa\x2dpart4.device</text>
  <rect class="activating" x="626.444" y="3580.000" width="0.000" height="19.000" />
  <rect class="active" x="626.444" y="3580.000" width="935.505" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3580.000" width="0.000" height="19.000" />
  <text class="left" x="631.444" y="3594.000">dev-disk-by\x2dpath-platform\x2d30b60000.mmc\x2dpart4.device</text>
  <rect class="activating" x="626.445" y="3600.000" width="0.000" height="19.000" />
  <rect class="active" x="626.445" y="3600.000" width="935.504" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3600.000" width="0.000" height="19.000" />
  <text class="left" x="631.445" y="3614.000">dev-disk-by\x2dpartlabel-cbvo.device</text>
  <rect class="activating" x="626.446" y="3620.000" width="0.000" height="19.000" />
  <rect class="active" x="626.446" y="3620.000" width="935.502" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3620.000" width="0.000" height="19.000" />
  <text class="left" x="631.446" y="3634.000">dev-mmcblk2p4.device</text>
  <rect class="activating" x="626.447" y="3640.000" width="0.000" height="19.000" />
  <rect class="active" x="626.447" y="3640.000" width="935.501" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3640.000" width="0.000" height="19.000" />
  <text class="left" x="631.447" y="3654.000">dev-disk-by\x2dpartuuid-15a4c08a\x2dfc44\x2d4e68\x2d8d55\x2d49952425ec00.device</text>
  <rect class="activating" x="626.448" y="3660.000" width="0.000" height="19.000" />
  <rect class="active" x="626.448" y="3660.000" width="935.500" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3660.000" width="0.000" height="19.000" />
  <text class="left" x="631.448" y="3674.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p4.device</text>
  <rect class="activating" x="626.768" y="3680.000" width="0.000" height="19.000" />
  <rect class="active" x="626.768" y="3680.000" width="935.180" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3680.000" width="0.000" height="19.000" />
  <text class="left" x="631.768" y="3694.000">system-lvm2\x2dpvscan.slice</text>
  <rect class="activating" x="627.255" y="3700.000" width="23.631" height="19.000" />
  <rect class="active" x="650.885" y="3700.000" width="911.063" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3700.000" width="0.000" height="19.000" />
  <text class="left" x="632.255" y="3714.000">lvm2-pvscan@179:1.service (236ms)</text>
  <rect class="activating" x="628.948" y="3720.000" width="4.660" height="19.000" />
  <rect class="active" x="633.608" y="3720.000" width="928.341" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3720.000" width="0.000" height="19.000" />
  <text class="left" x="633.948" y="3734.000">var-opt-siemens-automation-WinCCUnified-Projects.mount (46ms)</text>
  <rect class="activating" x="633.734" y="3740.000" width="0.000" height="19.000" />
  <rect class="active" x="633.734" y="3740.000" width="928.215" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3740.000" width="0.000" height="19.000" />
  <text class="left" x="638.734" y="3754.000">local-fs.target</text>
  <rect class="activating" x="634.898" y="3760.000" width="5.565" height="19.000" />
  <rect class="active" x="640.464" y="3760.000" width="921.485" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3760.000" width="0.000" height="19.000" />
  <text class="left" x="639.898" y="3774.000">plymouth-read-write.service (55ms)</text>
  <rect class="activating" x="636.787" y="3780.000" width="10.744" height="19.000" />
  <rect class="active" x="647.531" y="3780.000" width="914.417" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3780.000" width="0.000" height="19.000" />
  <text class="left" x="641.787" y="3794.000">systemd-tmpfiles-setup.service (107ms)</text>
  <rect class="activating" x="638.343" y="3800.000" width="0.000" height="19.000" />
  <rect class="active" x="638.343" y="3800.000" width="923.605" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3800.000" width="0.000" height="19.000" />
  <text class="left" x="643.343" y="3814.000">sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2gp0.device</text>
  <rect class="activating" x="638.347" y="3820.000" width="0.000" height="19.000" />
  <rect class="active" x="638.347" y="3820.000" width="923.602" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3820.000" width="0.000" height="19.000" />
  <text class="left" x="643.347" y="3834.000">dev-mmcblk2gp0.device</text>
  <rect class="activating" x="639.753" y="3840.000" width="0.000" height="19.000" />
  <rect class="active" x="639.753" y="3840.000" width="922.195" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3840.000" width="0.000" height="19.000" />
  <text class="left" x="644.753" y="3854.000">run-credentials-systemd\x2dtmpfiles\x2dsetup.service.mount</text>
  <rect class="activating" x="648.261" y="3860.000" width="3.140" height="19.000" />
  <rect class="active" x="651.401" y="3860.000" width="910.547" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3860.000" width="0.000" height="19.000" />
  <text class="left" x="653.261" y="3874.000">console-setup.service (31ms)</text>
  <rect class="activating" x="649.342" y="3880.000" width="0.000" height="19.000" />
  <rect class="active" x="649.342" y="3880.000" width="912.607" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3880.000" width="0.000" height="19.000" />
  <text class="left" x="654.342" y="3894.000">haveged.service</text>
  <rect class="activating" x="650.101" y="3900.000" width="4.567" height="19.000" />
  <rect class="active" x="654.668" y="3900.000" width="907.281" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3900.000" width="0.000" height="19.000" />
  <text class="left" x="655.101" y="3914.000">systemd-update-utmp.service (45ms)</text>
  <rect class="activating" x="654.886" y="3920.000" width="0.000" height="19.000" />
  <rect class="active" x="654.886" y="3920.000" width="907.062" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3920.000" width="0.000" height="19.000" />
  <text class="left" x="659.886" y="3934.000">sysinit.target</text>
  <rect class="activating" x="655.380" y="3940.000" width="0.000" height="19.000" />
  <rect class="active" x="655.380" y="3940.000" width="906.569" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3940.000" width="0.000" height="19.000" />
  <text class="left" x="660.380" y="3954.000">cups.path</text>
  <rect class="activating" x="655.557" y="3960.000" width="0.000" height="19.000" />
  <rect class="active" x="655.557" y="3960.000" width="906.391" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3960.000" width="0.000" height="19.000" />
  <text class="left" x="660.557" y="3974.000">anacron.timer</text>
  <rect class="activating" x="655.668" y="3980.000" width="0.000" height="19.000" />
  <rect class="active" x="655.668" y="3980.000" width="906.280" height="19.000" />
  <rect class="deactivating" x="1561.948" y="3980.000" width="0.000" height="19.000" />
  <text class="left" x="660.668" y="3994.000">apt-daily.timer</text>
  <rect class="activating" x="655.779" y="4000.000" width="0.000" height="19.000" />
  <rect class="active" x="655.779" y="4000.000" width="906.170" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4000.000" width="0.000" height="19.000" />
  <text class="left" x="660.779" y="4014.000">apt-daily-upgrade.timer</text>
  <rect class="activating" x="655.935" y="4020.000" width="0.000" height="19.000" />
  <rect class="active" x="655.935" y="4020.000" width="906.014" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4020.000" width="0.000" height="19.000" />
  <text class="left" x="660.935" y="4034.000">e2scrub_all.timer</text>
  <rect class="activating" x="656.036" y="4040.000" width="0.000" height="19.000" />
  <rect class="active" x="656.036" y="4040.000" width="905.912" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4040.000" width="0.000" height="19.000" />
  <text class="left" x="661.036" y="4054.000">ent.timer</text>
  <rect class="activating" x="656.358" y="4060.000" width="0.000" height="19.000" />
  <rect class="active" x="656.358" y="4060.000" width="905.590" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4060.000" width="0.000" height="19.000" />
  <text class="left" x="661.358" y="4074.000">fstrim.timer</text>
  <rect class="activating" x="656.518" y="4080.000" width="0.000" height="19.000" />
  <rect class="active" x="656.518" y="4080.000" width="905.430" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4080.000" width="0.000" height="19.000" />
  <text class="left" x="661.518" y="4094.000">logrotate.timer</text>
  <rect class="activating" x="656.591" y="4100.000" width="0.000" height="19.000" />
  <rect class="active" x="656.591" y="4100.000" width="905.357" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4100.000" width="0.000" height="19.000" />
  <text class="left" x="661.591" y="4114.000">systemd-tmpfiles-clean.timer</text>
  <rect class="activating" x="656.750" y="4120.000" width="0.000" height="19.000" />
  <rect class="active" x="656.750" y="4120.000" width="905.199" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4120.000" width="0.000" height="19.000" />
  <text class="left" x="661.750" y="4134.000">paths.target</text>
  <rect class="activating" x="656.827" y="4140.000" width="0.000" height="19.000" />
  <rect class="active" x="656.827" y="4140.000" width="905.122" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4140.000" width="0.000" height="19.000" />
  <text class="left" x="661.827" y="4154.000">timers.target</text>
  <rect class="activating" x="656.946" y="4160.000" width="0.000" height="19.000" />
  <rect class="active" x="656.946" y="4160.000" width="905.003" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4160.000" width="0.000" height="19.000" />
  <text class="left" x="661.946" y="4174.000">cups.socket</text>
  <rect class="activating" x="657.078" y="4180.000" width="0.000" height="19.000" />
  <rect class="active" x="657.078" y="4180.000" width="904.870" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4180.000" width="0.000" height="19.000" />
  <text class="left" x="662.078" y="4194.000">dbus.socket</text>
  <rect class="activating" x="657.666" y="4200.000" width="0.558" height="19.000" />
  <rect class="active" x="658.224" y="4200.000" width="903.724" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4200.000" width="0.000" height="19.000" />
  <text class="left" x="662.666" y="4214.000">docker.socket (5ms)</text>
  <rect class="activating" x="658.305" y="4220.000" width="0.000" height="19.000" />
  <rect class="active" x="658.305" y="4220.000" width="903.644" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4220.000" width="0.000" height="19.000" />
  <text class="left" x="663.305" y="4234.000">sockets.target</text>
  <rect class="activating" x="658.361" y="4240.000" width="0.000" height="19.000" />
  <rect class="active" x="658.361" y="4240.000" width="903.587" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4240.000" width="0.000" height="19.000" />
  <text class="left" x="663.361" y="4254.000">basic.target</text>
  <rect class="activating" x="659.224" y="4260.000" width="0.000" height="19.000" />
  <rect class="active" x="659.224" y="4260.000" width="13.473" height="19.000" />
  <rect class="deactivating" x="672.697" y="4260.000" width="0.000" height="19.000" />
  <text class="left" x="664.224" y="4274.000">anacron.service</text>
  <rect class="activating" x="660.112" y="4280.000" width="0.000" height="19.000" />
  <rect class="active" x="660.112" y="4280.000" width="901.836" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4280.000" width="0.000" height="19.000" />
  <text class="left" x="665.112" y="4294.000">cron.service</text>
  <rect class="activating" x="660.856" y="4300.000" width="0.000" height="19.000" />
  <rect class="active" x="660.856" y="4300.000" width="901.093" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4300.000" width="0.000" height="19.000" />
  <text class="left" x="665.856" y="4314.000">dbus.service</text>
  <rect class="activating" x="662.470" y="4320.000" width="63.640" height="19.000" />
  <rect class="active" x="726.110" y="4320.000" width="835.838" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4320.000" width="0.000" height="19.000" />
  <text class="left" x="667.470" y="4334.000">NetworkManager.service (636ms)</text>
  <rect class="activating" x="663.270" y="4340.000" width="81.443" height="19.000" />
  <rect class="active" x="744.713" y="4340.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="744.713" y="4340.000" width="0.000" height="19.000" />
  <text class="left" x="668.270" y="4354.000">e2scrub_reap.service (814ms)</text>
  <rect class="activating" x="664.508" y="4360.000" width="0.000" height="19.000" />
  <rect class="active" x="664.508" y="4360.000" width="897.440" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4360.000" width="0.000" height="19.000" />
  <text class="left" x="669.508" y="4374.000">earlyoom.service</text>
  <rect class="activating" x="665.951" y="4380.000" width="8.773" height="19.000" />
  <rect class="active" x="674.724" y="4380.000" width="887.225" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4380.000" width="0.000" height="19.000" />
  <text class="left" x="670.951" y="4394.000">lm-sensors.service (87ms)</text>
  <rect class="activating" x="666.807" y="4400.000" width="0.000" height="19.000" />
  <rect class="active" x="666.807" y="4400.000" width="895.141" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4400.000" width="0.000" height="19.000" />
  <text class="left" x="671.807" y="4414.000">lttng-sessiond.service</text>
  <rect class="activating" x="668.269" y="4420.000" width="157.744" height="19.000" />
  <rect class="active" x="826.012" y="4420.000" width="735.936" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4420.000" width="0.000" height="19.000" />
  <text class="left" x="673.269" y="4434.000">systemd-logind.service (1.577s)</text>
  <rect class="activating" x="668.990" y="4440.000" width="184.362" height="19.000" />
  <rect class="active" x="853.351" y="4440.000" width="708.597" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4440.000" width="0.000" height="19.000" />
  <text class="left" x="673.990" y="4454.000">udisks2.service (1.843s)</text>
  <rect class="activating" x="669.818" y="4460.000" width="109.234" height="19.000" />
  <rect class="active" x="779.051" y="4460.000" width="782.897" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4460.000" width="0.000" height="19.000" />
  <text class="left" x="674.818" y="4474.000">usbguard-dbus.service (1.092s)</text>
  <rect class="activating" x="671.099" y="4480.000" width="137.348" height="19.000" />
  <rect class="active" x="808.447" y="4480.000" width="753.502" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4480.000" width="0.000" height="19.000" />
  <text class="left" x="676.099" y="4494.000">usbguard.service (1.373s)</text>
  <rect class="activating" x="671.781" y="4500.000" width="19.216" height="19.000" />
  <rect class="active" x="690.997" y="4500.000" width="870.952" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4500.000" width="0.000" height="19.000" />
  <text class="left" x="676.781" y="4514.000">wpa_supplicant.service (192ms)</text>
  <rect class="activating" x="689.606" y="4520.000" width="0.000" height="19.000" />
  <rect class="active" x="689.606" y="4520.000" width="872.343" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4520.000" width="0.000" height="19.000" />
  <text class="left" x="694.606" y="4534.000">sys-devices-platform-backlight-backlight-backlight.device</text>
  <rect class="activating" x="689.985" y="4540.000" width="0.000" height="19.000" />
  <rect class="active" x="689.985" y="4540.000" width="871.964" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4540.000" width="0.000" height="19.000" />
  <text class="left" x="694.985" y="4554.000">system-systemd\x2dbacklight.slice</text>
  <rect class="activating" x="690.879" y="4560.000" width="5.314" height="19.000" />
  <rect class="active" x="696.193" y="4560.000" width="865.755" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4560.000" width="0.000" height="19.000" />
  <text class="left" x="695.879" y="4574.000">systemd-backlight@backlight:backlight.service (53ms)</text>
  <rect class="activating" x="726.253" y="4580.000" width="0.000" height="19.000" />
  <rect class="active" x="726.253" y="4580.000" width="835.695" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4580.000" width="0.000" height="19.000" />
  <text class="left" x="731.253" y="4594.000">network.target</text>
  <rect class="activating" x="726.886" y="4600.000" width="580.632" height="19.000" />
  <rect class="active" x="1307.518" y="4600.000" width="254.431" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4600.000" width="0.000" height="19.000" />
  <text class="left" x="731.886" y="4614.000">NetworkManager-wait-online.service (5.806s)</text>
  <rect class="activating" x="728.508" y="4620.000" width="607.925" height="19.000" />
  <rect class="active" x="1336.433" y="4620.000" width="225.516" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4620.000" width="0.000" height="19.000" />
  <text class="left" x="733.508" y="4634.000">configure-crossbar.service (6.079s)</text>
  <rect class="activating" x="729.087" y="4640.000" width="157.081" height="19.000" />
  <rect class="active" x="886.168" y="4640.000" width="675.781" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4640.000" width="0.000" height="19.000" />
  <text class="left" x="734.087" y="4654.000">containerd.service (1.570s)</text>
  <rect class="activating" x="730.056" y="4660.000" width="78.722" height="19.000" />
  <rect class="active" x="808.778" y="4660.000" width="753.171" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4660.000" width="0.000" height="19.000" />
  <text class="left" x="735.056" y="4674.000">nginx.service (787ms)</text>
  <rect class="activating" x="730.752" y="4680.000" width="3.677" height="19.000" />
  <rect class="active" x="734.429" y="4680.000" width="827.519" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4680.000" width="0.000" height="19.000" />
  <text class="left" x="735.752" y="4694.000">snmpd.service (36ms)</text>
  <rect class="activating" x="731.897" y="4700.000" width="63.261" height="19.000" />
  <rect class="active" x="795.158" y="4700.000" width="766.790" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4700.000" width="0.000" height="19.000" />
  <text class="left" x="736.897" y="4714.000">ssh.service (632ms)</text>
  <rect class="activating" x="733.072" y="4720.000" width="18.822" height="19.000" />
  <rect class="active" x="751.894" y="4720.000" width="810.054" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4720.000" width="0.000" height="19.000" />
  <text class="left" x="738.072" y="4734.000">systemd-user-sessions.service (188ms)</text>
  <rect class="activating" x="752.674" y="4740.000" width="4.239" height="19.000" />
  <rect class="active" x="756.913" y="4740.000" width="805.035" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4740.000" width="0.000" height="19.000" />
  <text class="left" x="757.674" y="4754.000">plymouth-quit-wait.service (42ms)</text>
  <rect class="activating" x="753.622" y="4760.000" width="2.658" height="19.000" />
  <rect class="active" x="756.280" y="4760.000" width="805.668" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4760.000" width="0.000" height="19.000" />
  <text class="left" x="758.622" y="4774.000">plymouth-quit.service (26ms)</text>
  <rect class="activating" x="754.204" y="4780.000" width="0.000" height="19.000" />
  <rect class="active" x="754.204" y="4780.000" width="210.293" height="19.000" />
  <rect class="deactivating" x="964.497" y="4780.000" width="0.000" height="19.000" />
  <text class="left" x="759.204" y="4794.000">weston@industrial.service</text>
  <rect class="activating" x="757.971" y="4800.000" width="0.000" height="19.000" />
  <rect class="active" x="757.971" y="4800.000" width="803.978" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4800.000" width="0.000" height="19.000" />
  <text class="left" x="762.971" y="4814.000">getty@tty1.service</text>
  <rect class="activating" x="758.727" y="4820.000" width="0.000" height="19.000" />
  <rect class="active" x="758.727" y="4820.000" width="803.222" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4820.000" width="0.000" height="19.000" />
  <text class="left" x="763.727" y="4834.000">serial-getty@ttymxc1.service</text>
  <rect class="activating" x="758.823" y="4840.000" width="0.000" height="19.000" />
  <rect class="active" x="758.823" y="4840.000" width="803.125" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4840.000" width="0.000" height="19.000" />
  <text class="left" x="763.823" y="4854.000">getty.target</text>
  <rect class="activating" x="773.802" y="4860.000" width="1.597" height="19.000" />
  <rect class="active" x="775.398" y="4860.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="775.398" y="4860.000" width="0.000" height="19.000" />
  <text class="left" x="778.802" y="4874.000">modprobe@drm.service (15ms)</text>
  <rect class="activating" x="782.189" y="4880.000" width="19.285" height="19.000" />
  <rect class="active" x="801.473" y="4880.000" width="760.475" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4880.000" width="0.000" height="19.000" />
  <text class="right" x="777.189" y="4894.000">polkit.service (192ms)</text>
  <rect class="activating" x="903.264" y="4900.000" width="0.000" height="19.000" />
  <rect class="active" x="903.264" y="4900.000" width="658.685" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4900.000" width="0.000" height="19.000" />
  <text class="right" x="898.264" y="4914.000">sys-devices-virtual-misc-rfkill.device</text>
  <rect class="activating" x="903.309" y="4920.000" width="0.000" height="19.000" />
  <rect class="active" x="903.309" y="4920.000" width="658.639" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4920.000" width="0.000" height="19.000" />
  <text class="right" x="898.309" y="4934.000">dev-rfkill.device</text>
  <rect class="activating" x="903.562" y="4940.000" width="0.000" height="19.000" />
  <rect class="active" x="903.562" y="4940.000" width="658.386" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4940.000" width="0.000" height="19.000" />
  <text class="right" x="898.562" y="4954.000">systemd-rfkill.socket</text>
  <rect class="activating" x="1307.737" y="4960.000" width="0.000" height="19.000" />
  <rect class="active" x="1307.737" y="4960.000" width="254.211" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4960.000" width="0.000" height="19.000" />
  <text class="right" x="1302.737" y="4974.000">network-online.target</text>
  <rect class="activating" x="1308.504" y="4980.000" width="247.996" height="19.000" />
  <rect class="active" x="1556.500" y="4980.000" width="5.449" height="19.000" />
  <rect class="deactivating" x="1561.948" y="4980.000" width="0.000" height="19.000" />
  <text class="right" x="1303.504" y="4994.000">docker.service (2.479s)</text>
  <rect class="activating" x="1428.697" y="5000.000" width="0.000" height="19.000" />
  <rect class="active" x="1428.697" y="5000.000" width="133.251" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5000.000" width="0.000" height="19.000" />
  <text class="right" x="1423.697" y="5014.000">sys-devices-virtual-block-loop1.device</text>
  <rect class="activating" x="1428.700" y="5020.000" width="0.000" height="19.000" />
  <rect class="active" x="1428.700" y="5020.000" width="133.248" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5020.000" width="0.000" height="19.000" />
  <text class="right" x="1423.700" y="5034.000">dev-loop1.device</text>
  <rect class="activating" x="1430.235" y="5040.000" width="0.000" height="19.000" />
  <rect class="active" x="1430.235" y="5040.000" width="131.714" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5040.000" width="0.000" height="19.000" />
  <text class="right" x="1425.235" y="5054.000">dev-mapper-docker\x2d0:27\x2d721\x2dpool.device</text>
  <rect class="activating" x="1430.238" y="5060.000" width="0.000" height="19.000" />
  <rect class="active" x="1430.238" y="5060.000" width="131.710" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5060.000" width="0.000" height="19.000" />
  <text class="right" x="1425.238" y="5074.000">sys-devices-virtual-block-dm\x2d5.device</text>
  <rect class="activating" x="1430.239" y="5080.000" width="0.000" height="19.000" />
  <rect class="active" x="1430.239" y="5080.000" width="131.709" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5080.000" width="0.000" height="19.000" />
  <text class="right" x="1425.239" y="5094.000">dev-dm\x2d5.device</text>
  <rect class="activating" x="1430.555" y="5100.000" width="0.000" height="19.000" />
  <rect class="active" x="1430.555" y="5100.000" width="131.393" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5100.000" width="0.000" height="19.000" />
  <text class="right" x="1425.555" y="5114.000">dev-loop0.device</text>
  <rect class="activating" x="1430.557" y="5120.000" width="0.000" height="19.000" />
  <rect class="active" x="1430.557" y="5120.000" width="131.391" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5120.000" width="0.000" height="19.000" />
  <text class="right" x="1425.557" y="5134.000">sys-devices-virtual-block-loop0.device</text>
  <rect class="activating" x="1484.366" y="5140.000" width="0.000" height="19.000" />
  <rect class="active" x="1484.366" y="5140.000" width="77.582" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5140.000" width="0.000" height="19.000" />
  <text class="right" x="1479.366" y="5154.000">sys-subsystem-net-devices-docker0.device</text>
  <rect class="activating" x="1484.369" y="5160.000" width="0.000" height="19.000" />
  <rect class="active" x="1484.369" y="5160.000" width="77.579" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5160.000" width="0.000" height="19.000" />
  <text class="right" x="1479.369" y="5174.000">sys-devices-virtual-net-docker0.device</text>
  <rect class="activating" x="1519.857" y="5180.000" width="6.870" height="19.000" />
  <rect class="active" x="1526.726" y="5180.000" width="35.222" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5180.000" width="0.000" height="19.000" />
  <text class="right" x="1514.857" y="5194.000">ntp.service (68ms)</text>
  <rect class="activating" x="1556.717" y="5200.000" width="0.000" height="19.000" />
  <rect class="active" x="1556.717" y="5200.000" width="5.231" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5200.000" width="0.000" height="19.000" />
  <text class="right" x="1551.717" y="5214.000">multi-user.target</text>
  <rect class="activating" x="1556.783" y="5220.000" width="0.000" height="19.000" />
  <rect class="active" x="1556.783" y="5220.000" width="5.165" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5220.000" width="0.000" height="19.000" />
  <text class="right" x="1551.783" y="5234.000">graphical.target</text>
  <rect class="activating" x="1556.844" y="5240.000" width="0.000" height="19.000" />
  <rect class="active" x="1556.844" y="5240.000" width="5.104" height="19.000" />
  <rect class="deactivating" x="1561.948" y="5240.000" width="0.000" height="19.000" />
  <text class="right" x="1551.844" y="5254.000">mel-boot-complete.target</text>
  <rect class="activating" x="1557.620" y="5260.000" width="4.138" height="19.000" />
  <rect class="active" x="1561.758" y="5260.000" width="0.000" height="19.000" />
  <rect class="deactivating" x="1561.758" y="5260.000" width="0.000" height="19.000" />
  <text class="right" x="1552.620" y="5274.000">systemd-update-utmp-runlevel.service (41ms)</text>
</g>
<g transform="translate(20,100)">
  <rect class="activating" x="0.000" y="5300.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5314.000">Activating</text>
  <rect class="active" x="0.000" y="5320.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5334.000">Active</text>
  <rect class="deactivating" x="0.000" y="5340.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5354.000">Deactivating</text>
  <rect class="security" x="0.000" y="5360.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5374.000">Setting up security module</text>
  <rect class="generators" x="0.000" y="5380.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5394.000">Generators</text>
  <rect class="unitsload" x="0.000" y="5400.000" width="30.000" height="19.000" />
  <text class="left" x="45.000" y="5414.000">Loading unit files</text>
</g>

</svg>


## dmesg 

```sh
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.10.158-cip22+ind1 (builder@narmada) (aarch64-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023
[    0.000000] Machine model: Siemens Foxxy
[    0.000000] earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
[    0.000000] printk: bootconsole [ec_imx6q0] enabled
[    0.000000] Reserved memory: created CMA memory pool at 0x0000000096000000, size 640 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfe79fff]
[    0.000000] NUMA: NODE_DATA [mem 0xbfa46700-0xbfa48fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x00000000bfe79fff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000bfe79fff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfe79fff]
[    0.000000] On node 0 totalpages: 523898
[    0.000000]   DMA zone: 8186 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 523898 pages, LIFO batch:63
[    0.000000] On node 0, zone DMA: 390 pages in unavailable ranges
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 30 pages/cpu s84248 r8192 d30440 u122880
[    0.000000] pcpu-alloc: s84248 r8192 d30440 u122880 alloc=30*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 515712
[    0.000000] Policy zone: DMA
[    0.000000] Kernel command line: console=ttymxc1,115200 earlycon=ec_imx6q,0x30890000,115200 loglevel=2 root=/dev/vg_sys/lv_mainvo ro rootfstype=ext4 rootwait security=selinux selinux=1 enforcing=0 enforcing=0 cryptomgr.notests systemd.unified_cgroup_hierarchy=0 module_blacklist=intel_ish_ipc,intel_ishtp jtag=on nohlt splash plymouth.ignore-serial-consoles quiet vt.global_cursor_default=0
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1351880K/2095592K available (17406K kernel code, 2216K rwdata, 6740K rodata, 5184K init, 529K bss, 88352K reserved, 655360K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] ftrace: allocating 56519 entries in 221 pages
[    0.000000] ftrace: allocated 221 pages with 6 groups
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu: 	RCU event tracing is enabled.
[    0.000000] rcu: 	RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    0.000000] 	Trampoline variant of Tasks RCU enabled.
[    0.000000] 	Rude variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 128 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x0000000038880000
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000003] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
[    0.000130] Console: colour dummy device 80x25
[    0.000204] Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
[    0.000213] pid_max: default: 32768 minimum: 301
[    0.000272] LSM: Security Framework initializing
[    0.000296] SELinux:  Initializing.
[    0.000357] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.000368] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.001660] rcu: Hierarchical SRCU implementation.
[    0.002910] smp: Bringing up secondary CPUs ...
[    0.003358] Detected VIPT I-cache on CPU1
[    0.003390] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
[    0.003456] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.003949] Detected VIPT I-cache on CPU2
[    0.003971] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
[    0.004014] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004427] Detected VIPT I-cache on CPU3
[    0.004449] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
[    0.004490] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004537] smp: Brought up 1 node, 4 CPUs
[    0.004544] SMP: Total of 4 processors activated.
[    0.004548] CPU features: detected: 32-bit EL0 Support
[    0.004552] CPU features: detected: CRC32 instructions
[    0.011314] CPU: All CPU(s) started at EL2
[    0.011332] alternatives: patching kernel code
[    0.012634] devtmpfs: initialized
[    0.017817] KASLR disabled due to lack of seed
[    0.017951] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.017964] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.032192] pinctrl core: initialized pinctrl subsystem
[    0.033218] NET: Registered protocol family 16
[    0.038974] DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
[    0.039736] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.040561] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.040666] audit: initializing netlink subsys (disabled)
[    0.040928] audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
[    0.041427] thermal_sys: Registered thermal governor 'step_wise'
[    0.041431] thermal_sys: Registered thermal governor 'power_allocator'
[    0.041702] cpuidle: using governor menu
[    0.041987] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.042072] ASID allocator initialised with 65536 entries
[    0.042839] Serial: AMBA PL011 UART driver
[    0.042885] imx mu driver is registered.
[    0.042900] imx rpmsg driver is registered.
[    0.061851] imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
[    0.061862] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
[    0.074052] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.074061] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.074065] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.074071] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.074789] cryptd: max_cpu_qlen set to 1000
[    0.077925] iommu: Default domain type: Translated 
[    0.078088] vgaarb: loaded
[    0.078358] SCSI subsystem initialized
[    0.078506] libata version 3.00 loaded.
[    0.078665] usbcore: registered new interface driver usbfs
[    0.078694] usbcore: registered new interface driver hub
[    0.078714] usbcore: registered new device driver usb
[    0.079539] mc: Linux media interface: v0.10
[    0.079558] videodev: Linux video capture interface: v2.00
[    0.079606] pps_core: LinuxPPS API ver. 1 registered
[    0.079609] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.079621] PTP clock support registered
[    0.079733] EDAC MC: Ver: 3.0.0
[    0.080768] FPGA manager framework
[    0.080840] Advanced Linux Sound Architecture Driver Initialized.
[    0.081357] Bluetooth: Core ver 2.22
[    0.081380] NET: Registered protocol family 31
[    0.081383] Bluetooth: HCI device and connection manager initialized
[    0.081390] Bluetooth: HCI socket layer initialized
[    0.081395] Bluetooth: L2CAP socket layer initialized
[    0.081406] Bluetooth: SCO socket layer initialized
[    0.082233] clocksource: Switched to clocksource arch_sys_counter
[    0.728677] VFS: Disk quotas dquot_6.6.0
[    0.728722] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.733998] NET: Registered protocol family 2
[    0.734154] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.734949] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.735003] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.735087] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.735344] TCP: Hash tables configured (established 16384 bind 16384)
[    0.735436] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735468] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735588] NET: Registered protocol family 1
[    0.735904] RPC: Registered named UNIX socket transport module.
[    0.735907] RPC: Registered udp transport module.
[    0.735910] RPC: Registered tcp transport module.
[    0.735913] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.735922] PCI: CLS 0 bytes, default 64
[    0.736089] Unpacking initramfs...
[    1.210880] Freeing initrd memory: 15480K
[    1.211601] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
[    1.214750] Initialise system trusted keyrings
[    1.214901] workingset: timestamp_bits=42 max_order=19 bucket_order=0
[    1.220272] NFS: Registering the id_resolver key type
[    1.220301] Key type id_resolver registered
[    1.220303] Key type id_legacy registered
[    1.220367] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.220371] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    1.220387] jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
[    1.247817] Key type asymmetric registered
[    1.247825] Asymmetric key parser 'x509' registered
[    1.247864] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
[    1.247870] io scheduler mq-deadline registered
[    1.247873] io scheduler kyber registered
[    1.253076] M4 is started
[    1.258601] imx-sdma 302b0000.dma-controller: firmware found.
[    1.261527] imx-sdma 302c0000.dma-controller: firmware found.
[    1.263694] imx-sdma 30bd0000.dma-controller: firmware found.
[    1.265142] mxs-dma 33000000.dma-controller: initialized
[    1.266865] Bus freq driver module loaded
[    1.271574] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.273390] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
[    1.273447] printk: console [ttymxc1] enabled
[    1.273450] printk: bootconsole [ec_imx6q0] disabled
[    1.287128] loop: module loaded
[    1.287954] of_reserved_mem_lookup() returned NULL
[    1.289197] imx ahci driver is registered.
[    1.291138] spi_imx 30800000.spba-bus:spi@30830000: invalid resource
[    1.291156] spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
[    1.293131] tun: Universal TUN/TAP device driver, 1.6
[    1.293947] pps pps0: new PPS source ptp0
[    1.305432] fec 30be0000.ethernet eth0: registered PHC device 0
[    1.306849] e1000: Intel(R) PRO/1000 Network Driver
[    1.306854] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.306882] e1000e: Intel(R) PRO/1000 Network Driver
[    1.306885] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.306913] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.306916] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.306935] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.306938] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.307053] sky2: driver version 1.30
[    1.307219] usbcore: registered new interface driver r8152
[    1.307250] usbcore: registered new interface driver asix
[    1.307273] usbcore: registered new interface driver ax88179_178a
[    1.307293] usbcore: registered new interface driver cdc_ether
[    1.307314] usbcore: registered new interface driver net1080
[    1.307333] usbcore: registered new interface driver cdc_subset
[    1.307355] usbcore: registered new interface driver zaurus
[    1.307399] usbcore: registered new interface driver cdc_ncm
[    1.307657] VFIO - User Level meta-driver version: 0.3
[    1.309392] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.309398] ehci-pci: EHCI PCI platform driver
[    1.309424] ehci-platform: EHCI generic platform driver
[    1.309550] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.309571] ohci-pci: OHCI PCI platform driver
[    1.309595] ohci-platform: OHCI generic platform driver
[    1.310194] usbcore: registered new interface driver uas
[    1.310248] usbcore: registered new interface driver usb-storage
[    1.310311] usbcore: registered new interface driver usbserial_generic
[    1.310326] usbserial: USB Serial support registered for generic
[    1.313195] i2c /dev entries driver
[    1.315639] Bluetooth: HCI UART driver ver 2.3
[    1.315647] Bluetooth: HCI UART protocol H4 registered
[    1.315650] Bluetooth: HCI UART protocol BCSP registered
[    1.315670] Bluetooth: HCI UART protocol LL registered
[    1.315673] Bluetooth: HCI UART protocol ATH3K registered
[    1.315688] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.315741] Bluetooth: HCI UART protocol Broadcom registered
[    1.315753] Bluetooth: HCI UART protocol QCA registered
[    1.316821] sdhci: Secure Digital Host Controller Interface driver
[    1.316826] sdhci: Copyright(c) Pierre Ossman
[    1.317026] Synopsys Designware Multimedia Card Interface Driver
[    1.317481] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.318153] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.318187] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.318294] sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
[    1.318303] sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
[    1.319119] ledtrig-cpu: registered to indicate activity on CPUs
[    1.319539] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.319906] usbcore: registered new interface driver usbhid
[    1.319908] usbhid: USB HID core driver
[    1.323988] galcore: clk_get vg clock failed, disable vg!
[    1.324147] Galcore version 6.4.3.p2.336687
[    1.349505] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
[    1.382412] [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
[    1.388758] NET: Registered protocol family 10
[    1.389477] Segment Routing with IPv6
[    1.389515] NET: Registered protocol family 17
[    1.389605] Bluetooth: RFCOMM TTY layer initialized
[    1.389612] Bluetooth: RFCOMM socket layer initialized
[    1.389643] Bluetooth: RFCOMM ver 1.11
[    1.389652] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.389655] Bluetooth: BNEP filters: protocol multicast
[    1.389661] Bluetooth: BNEP socket layer initialized
[    1.389664] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.389669] Bluetooth: HIDP socket layer initialized
[    1.389699] 8021q: 802.1Q VLAN Support v1.8
[    1.389717] lib80211: common routines for IEEE802.11 drivers
[    1.389721] lib80211_crypt: registered algorithm 'NULL'
[    1.389725] lib80211_crypt: registered algorithm 'WEP'
[    1.389728] lib80211_crypt: registered algorithm 'CCMP'
[    1.389734] lib80211_crypt: registered algorithm 'TKIP'
[    1.389737] tsn generic netlink module v1 init...
[    1.389804] Key type dns_resolver registered
[    1.390190] registered taskstats version 1
[    1.390195] Loading compiled-in X.509 certificates
[    1.408236] usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
[    1.408352] usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
[    1.408491] usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
[    1.408563] usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
[    1.408783] imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
[    1.417727] nxp-pca9450 0-0025: pca9450a probed.
[    1.417860] i2c i2c-0: IMX I2C adapter registered
[    1.418205] imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
[    1.422895] rtc-ds1307 1-0032: registered as rtc0
[    1.423707] rtc-ds1307 1-0032: setting system clock to 2023-02-06T15:49:54 UTC (1675698594)
[    1.423867] i2c i2c-1: IMX I2C adapter registered
[    1.424185] imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
[    1.432917] mmc2: new DDR MMC card at address 0001
[    1.433390] mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
[    1.433550] mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
[    1.433725] mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
[    1.433882] mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
[    1.434010] mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
[    1.436854]  mmcblk2: p1 p2 p3 p4
[    1.465206] input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
[    1.465705] i2c i2c-2: IMX I2C adapter registered
[    1.467979] pwm-backlight backlight: supply power not found, using dummy regulator
[    1.468099] imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
[    1.468254] imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
[    1.468384] imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
[    1.468625] SoC: i.MX8MM revision 1.0
[    1.468695] imx6q-pcie 33800000.pcie: GPR15=6188ffff
[    1.468850] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
[    1.469275] imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
[    1.469324] imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
[    1.469348] imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
[    1.469361] imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
[    1.469452] imx6q-pcie 33800000.pcie: invalid resource
[    1.470838] imx_usb 32e40000.usb: No over current polarity defined
[    1.473596] ci_hdrc ci_hdrc.0: EHCI Host Controller
[    1.473622] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
[    1.486247] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[    1.486862] hub 1-0:1.0: USB hub found
[    1.486892] hub 1-0:1.0: 1 port detected
[    1.488468] imx_usb 32e50000.usb: No over current polarity defined
[    1.491293] ci_hdrc ci_hdrc.1: EHCI Host Controller
[    1.491313] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
[    1.506251] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
[    1.506809] hub 2-0:1.0: USB hub found
[    1.506833] hub 2-0:1.0: 1 port detected
[    1.509974] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.509991] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.510018] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.511538] hantrodec 0 : module inserted. Major = 234
[    1.512948] hantrodec 1 : module inserted. Major = 234
[    1.514210] hx280enc: module inserted. Major <511>
[    1.517045] ALSA device list:
[    1.517056]   No soundcards found.
[    1.541824] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
[    2.466244] imx6q-pcie 33800000.pcie: Phy link never came up
[    2.466279] imx6q-pcie 33800000.pcie: failed to initialize host
[    2.466284] imx6q-pcie 33800000.pcie: unable to add pcie port.
[    2.471940] Freeing unused kernel memory: 5184K
[    2.482360] Run /init as init process
[    2.482364]   with arguments:
[    2.482367]     /init
[    2.482369]     splash
[    2.482372]   with environment:
[    2.482375]     HOME=/
[    2.482377]     TERM=linux
[    2.482380]     jtag=on
[    3.006075] fec 30be0000.ethernet end0: renamed from eth0
[    3.011939] imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
[    3.012118] imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
[    3.012196] imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
[    3.012204] imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
[    3.012224] imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
[    3.012580] [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
[    3.087899] random: lvm: uninitialized urandom read (4 bytes read)
[    3.134866] device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
[    3.137923] random: lvm: uninitialized urandom read (2 bytes read)
[    3.374652] random: lvm: uninitialized urandom read (4 bytes read)
[    3.681150] EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
[    3.765184] EXT4-fs (dm-2): recovery complete
[    3.765919] EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
[    4.198828] systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
[    4.198850] systemd[1]: Detected architecture arm64.
[    4.229001] systemd[1]: No hostname configured, using default hostname.
[    4.229270] systemd[1]: Hostname set to <localhost>.
[    4.412721] random: lvmconfig: uninitialized urandom read (4 bytes read)
[    4.543158] systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
[    4.700621] systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
[    4.777233] systemd[1]: Queued start job for default target Graphical Interface.
[    4.777308] systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
[    4.777331] systemd[1]: Unnecessary job was removed for /dev/dm-2.
[    4.823102] systemd[1]: Created slice Slice /system/getty.
[    4.825577] systemd[1]: Created slice Slice /system/modprobe.
[    4.827965] systemd[1]: Created slice Slice /system/serial-getty.
[    4.830730] systemd[1]: Created slice Slice /system/systemd-fsck.
[    4.833110] systemd[1]: Created slice Slice /system/weston.
[    4.834900] systemd[1]: Created slice User and Session Slice.
[    4.835245] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    4.835458] systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
[    4.835667] systemd[1]: Reached target Local Integrity Protected Volumes.
[    4.835830] systemd[1]: Reached target Remote File Systems.
[    4.835888] systemd[1]: Reached target Slice Units.
[    4.835977] systemd[1]: Reached target Swaps.
[    4.836064] systemd[1]: Reached target Local Verity Protected Volumes.
[    4.836361] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    4.836870] systemd[1]: Listening on LVM2 poll daemon socket.
[    4.837214] systemd[1]: Listening on fsck to fsckd communication Socket.
[    4.837408] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    4.838040] systemd[1]: Listening on Journal Audit Socket.
[    4.838643] systemd[1]: Listening on Journal Socket (/dev/log).
[    4.839118] systemd[1]: Listening on Journal Socket.
[    4.841900] systemd[1]: Listening on udev Control Socket.
[    4.842559] systemd[1]: Listening on udev Kernel Socket.
[    4.846689] systemd[1]: Mounting Huge Pages File System...
[    4.851318] systemd[1]: Mounting POSIX Message Queue File System...
[    4.856652] systemd[1]: Mounting Kernel Debug File System...
[    4.861899] systemd[1]: Mounting Kernel Trace File System...
[    4.862924] systemd[1]: Finished Availability of block devices.
[    4.869497] systemd[1]: Starting Set the console keyboard layout...
[    4.874737] systemd[1]: Starting Create List of Static Device Nodes...
[    4.879838] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    4.885341] systemd[1]: Starting Load Kernel Module configfs...
[    4.890971] systemd[1]: Starting Load Kernel Module drm...
[    4.896704] systemd[1]: Starting Load Kernel Module efi_pstore...
[    4.901951] systemd[1]: Starting Load Kernel Module fuse...
[    4.906232] random: lvm: uninitialized urandom read (4 bytes read)
[    4.910574] systemd[1]: Starting Network initialization...
[    4.911903] systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
[    4.911918] systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
[    4.917811] systemd[1]: Starting Journal Service...
[    4.928831] systemd[1]: Starting Load Kernel Modules...
[    4.938455] systemd[1]: Starting Remount Root and Kernel File Systems...
[    4.938940] systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
[    4.944290] fuse: init (API version 7.32)
[    4.955040] systemd[1]: Starting Coldplug All udev Devices...
[    4.960997] systemd[1]: Starting Uncomplicated firewall...
[    4.974187] systemd[1]: Mounted Huge Pages File System.
[    4.976170] systemd[1]: Mounted POSIX Message Queue File System.
[    4.977978] systemd[1]: Mounted Kernel Debug File System.
[    4.979803] systemd[1]: Mounted Kernel Trace File System.
[    4.982699] systemd[1]: Finished Create List of Static Device Nodes.
[    4.985396] systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    4.986494] systemd[1]: Finished Load Kernel Module configfs.
[    4.988068] systemd[1]: modprobe@drm.service: Deactivated successfully.
[    4.989280] systemd[1]: Finished Load Kernel Module drm.
[    4.991059] systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
[    4.992227] systemd[1]: Finished Load Kernel Module efi_pstore.
[    4.993743] systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    4.995089] systemd[1]: Finished Load Kernel Module fuse.
[    4.997373] systemd[1]: Finished Load Kernel Modules.
[    5.004388] systemd[1]: Finished Uncomplicated firewall.
[    5.014932] systemd[1]: Mounting FUSE Control File System...
[    5.030925] systemd[1]: Mounting Kernel Configuration File System...
[    5.039778] systemd[1]: Starting Apply Kernel Variables...
[    5.048316] systemd[1]: Mounted FUSE Control File System.
[    5.051319] systemd[1]: Mounted Kernel Configuration File System.
[    5.072505] systemd[1]: Finished Remount Root and Kernel File Systems.
[    5.073768] systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
[    5.073977] systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
[    5.080371] systemd[1]: Starting Load/Save Random Seed...
[    5.087866] systemd[1]: Starting Create System Users...
[    5.090744] systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
[    5.120857] systemd[1]: Finished Apply Kernel Variables.
[    5.137421] random: python3: uninitialized urandom read (24 bytes read)
[    5.150721] systemd[1]: Started Journal Service.
[    6.087825] EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
[    6.087865] ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    6.158725] systemd-journald[360]: Received client request to flush runtime journal.
[    6.319453] random: lvm: uninitialized urandom read (4 bytes read)
[    6.330338] EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
[    6.657677] random: dbus-daemon: uninitialized urandom read (12 bytes read)
[    6.667366] random: dd: uninitialized urandom read (1048576 bytes read)
[    7.086477] LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
[    7.092813] caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
[    7.092825] caam 30900000.crypto: job rings = 3, qi = 0
[    7.209627] caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
[    7.326096] random: nm-online: uninitialized urandom read (48 bytes read)
[    7.690317] random: crng init done
[    7.690333] random: 5 urandom warning(s) missed due to ratelimiting
[    7.811049] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.859330] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    8.057265] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    8.094159] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    8.825251] Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
[    9.329596] caam_jr 30901000.jr: failed to flush job ring 0
[    9.329794] caam_jr: probe of 30901000.jr failed with error -5
[    9.467943] caam algorithms registered in /proc/crypto
[    9.470083] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
[    9.470102] caam 30900000.crypto: registering rng-caam
[    9.475436] Device caam-keygen registered
[    9.498491] fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
[   12.927233] fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
[   12.927288] IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
[   14.474830] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[   14.477739] Bridge firewalling registered
[   19.936124] systemd-journald[360]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.0 (2731 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
[   19.936151] systemd-journald[360]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
```

## systemctl 

```sh
  UNIT                                                                                                              LOAD   ACTIVE SUB       DESCRIPTION
  sys-devices-platform-backlight-backlight-backlight.device                                                         loaded active plugged   /sys/devices/platform/backlight/backlight/backlight
  sys-devices-platform-serial8250-tty-ttyS0.device                                                                  loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS0
  sys-devices-platform-serial8250-tty-ttyS1.device                                                                  loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS1
  sys-devices-platform-serial8250-tty-ttyS2.device                                                                  loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS2
  sys-devices-platform-serial8250-tty-ttyS3.device                                                                  loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS3
  sys-devices-platform-soc\x400-30800000.bus-30800000.spba\x2dbus-30890000.serial-tty-ttymxc1.device                loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30800000.spba-bus/30890000.serial/tty/ttymxc1
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2boot0.device loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2boot0
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2boot1.device loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2boot1
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2gp0.device   loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2gp0
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p1.device    loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2p1
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p2.device    loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2p2
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p3.device    loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2p3
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2-mmcblk2p4.device    loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2/mmcblk2p4
  sys-devices-platform-soc\x400-30800000.bus-30b60000.mmc-mmc_host-mmc2-mmc2:0001-block-mmcblk2.device              loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30b60000.mmc/mmc_host/mmc2/mmc2:0001/block/mmcblk2
  sys-devices-platform-soc\x400-30800000.bus-30be0000.ethernet-net-end0.device                                      loaded active plugged   /sys/devices/platform/soc@0/30800000.bus/30be0000.ethernet/net/end0
  sys-devices-virtual-block-dm\x2d0.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-0
  sys-devices-virtual-block-dm\x2d1.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-1
  sys-devices-virtual-block-dm\x2d2.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-2
  sys-devices-virtual-block-dm\x2d3.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-3
  sys-devices-virtual-block-dm\x2d4.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-4
  sys-devices-virtual-block-dm\x2d5.device                                                                          loaded active plugged   /sys/devices/virtual/block/dm-5
  sys-devices-virtual-block-loop0.device                                                                            loaded active plugged   /sys/devices/virtual/block/loop0
  sys-devices-virtual-block-loop1.device                                                                            loaded active plugged   /sys/devices/virtual/block/loop1
  sys-devices-virtual-misc-rfkill.device                                                                            loaded active plugged   /sys/devices/virtual/misc/rfkill
  sys-devices-virtual-net-docker0.device                                                                            loaded active plugged   /sys/devices/virtual/net/docker0
  sys-devices-virtual-tty-ttyp0.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp0
  sys-devices-virtual-tty-ttyp1.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp1
  sys-devices-virtual-tty-ttyp2.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp2
  sys-devices-virtual-tty-ttyp3.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp3
  sys-devices-virtual-tty-ttyp4.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp4
  sys-devices-virtual-tty-ttyp5.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp5
  sys-devices-virtual-tty-ttyp6.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp6
  sys-devices-virtual-tty-ttyp7.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp7
  sys-devices-virtual-tty-ttyp8.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp8
  sys-devices-virtual-tty-ttyp9.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttyp9
  sys-devices-virtual-tty-ttypa.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttypa
  sys-devices-virtual-tty-ttypb.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttypb
  sys-devices-virtual-tty-ttypc.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttypc
  sys-devices-virtual-tty-ttypd.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttypd
  sys-devices-virtual-tty-ttype.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttype
  sys-devices-virtual-tty-ttypf.device                                                                              loaded active plugged   /sys/devices/virtual/tty/ttypf
  sys-module-configfs.device                                                                                        loaded active plugged   /sys/module/configfs
  sys-module-fuse.device                                                                                            loaded active plugged   /sys/module/fuse
  sys-subsystem-net-devices-docker0.device                                                                          loaded active plugged   /sys/subsystem/net/devices/docker0
  sys-subsystem-net-devices-end0.device                                                                             loaded active plugged   /sys/subsystem/net/devices/end0
  -.mount                                                                                                           loaded active mounted   Root Mount
  dev-hugepages.mount                                                                                               loaded active mounted   Huge Pages File System
  dev-mqueue.mount                                                                                                  loaded active mounted   POSIX Message Queue File System
  etc-hmi-FwServices-pa.mount                                                                                       loaded active mounted   /etc/hmi/FwServices/pa
  media-root\x2dro.mount                                                                                            loaded active mounted   /media/root-ro
  media-root\x2drw.mount                                                                                            loaded active mounted   /media/root-rw
  run-credentials-systemd\x2dsysctl.service.mount                                                                   loaded active mounted   /run/credentials/systemd-sysctl.service
  run-credentials-systemd\x2dsysusers.service.mount                                                                 loaded active mounted   /run/credentials/systemd-sysusers.service
  run-credentials-systemd\x2dtmpfiles\x2dsetup.service.mount                                                        loaded active mounted   /run/credentials/systemd-tmpfiles-setup.service
  run-credentials-systemd\x2dtmpfiles\x2dsetup\x2ddev.service.mount                                                 loaded active mounted   /run/credentials/systemd-tmpfiles-setup-dev.service
  run-user-0.mount                                                                                                  loaded active mounted   /run/user/0
  sys-fs-fuse-connections.mount                                                                                     loaded active mounted   FUSE Control File System
  sys-kernel-config.mount                                                                                           loaded active mounted   Kernel Configuration File System
  sys-kernel-debug.mount                                                                                            loaded active mounted   Kernel Debug File System
  sys-kernel-tracing.mount                                                                                          loaded active mounted   Kernel Trace File System
  var-log.mount                                                                                                     loaded active mounted   /var/log
  var-opt-siemens-automation-WinCCUnified-Projects.mount                                                            loaded active mounted   /var/opt/siemens/automation/WinCCUnified/Projects
  cups.path                                                                                                         loaded active waiting   CUPS Scheduler
  systemd-ask-password-plymouth.path                                                                                loaded active waiting   Forward Password Requests to Plymouth Directory Watch
  systemd-ask-password-wall.path                                                                                    loaded active waiting   Forward Password Requests to Wall Directory Watch
  init.scope                                                                                                        loaded active running   System and Service Manager
  session-22.scope                                                                                                  loaded active running   Session 22 of User root
  blk-availability.service                                                                                          loaded active exited    Availability of block devices
  configure-crossbar.service                                                                                        loaded active running   Crossbar.io service
  console-setup.service                                                                                             loaded active exited    Set console font and keymap
  containerd.service                                                                                                loaded active running   containerd container runtime
  cron.service                                                                                                      loaded active running   Regular background program processing daemon
  dbus.service                                                                                                      loaded active running   D-Bus System Message Bus
  docker.service                                                                                                    loaded active running   Docker Application Container Engine
  earlyoom.service                                                                                                  loaded active running   Early OOM Daemon
  getty@tty1.service                                                                                                loaded active running   Getty on tty1
  haveged.service                                                                                                   loaded active running   Entropy Daemon based on the HAVEGE algorithm
  keyboard-setup.service                                                                                            loaded active exited    Set the console keyboard layout
  kmod-static-nodes.service                                                                                         loaded active exited    Create List of Static Device Nodes
  lm-sensors.service                                                                                                loaded active exited    Initialize hardware monitoring sensors
  lttng-sessiond.service                                                                                            loaded active running   LTTng session daemon
  lvm2-monitor.service                                                                                              loaded active exited    Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling
  lvm2-pvscan@179:1.service                                                                                         loaded active exited    LVM event activation on device 179:1
  networking.service                                                                                                loaded active exited    Network initialization
  NetworkManager-wait-online.service                                                                                loaded active exited    Network Manager Wait Online
  NetworkManager.service                                                                                            loaded active running   Network Manager
  nginx.service                                                                                                     loaded active running   A high performance web server and a reverse proxy server
  ntp.service                                                                                                       loaded active running   Network Time Service
  plymouth-quit-wait.service                                                                                        loaded active exited    Hold until boot process finishes up
  plymouth-quit.service                                                                                             loaded active exited    Terminate Plymouth Boot Screen
  plymouth-read-write.service                                                                                       loaded active exited    Tell Plymouth To Write Out Runtime Data
  plymouth-start.service                                                                                            loaded active exited    Show Plymouth Boot Screen
  polkit.service                                                                                                    loaded active running   Authorization Manager
  serial-getty@ttymxc1.service                                                                                      loaded active running   Serial Getty on ttymxc1
  snmpd.service                                                                                                     loaded active running   Simple Network Management Protocol (SNMP) Daemon.
  ssh.service                                                                                                       loaded active running   OpenBSD Secure Shell server
  systemd-backlight@backlight:backlight.service                                                                     loaded active exited    Load/Save Screen Backlight Brightness of backlight:backlight
  systemd-fsck@dev-disk-by\x2dlabel-lv_pavo.service                                                                 loaded active exited    File System Check on /dev/disk/by-label/lv_pavo
  systemd-fsck@dev-disk-by\x2dlabel-lv_rtvo.service                                                                 loaded active exited    File System Check on /dev/disk/by-label/lv_rtvo
  systemd-journal-flush.service                                                                                     loaded active exited    Flush Journal to Persistent Storage
  systemd-journald.service                                                                                          loaded active running   Journal Service
  systemd-logind.service                                                                                            loaded active running   User Login Management
  systemd-modules-load.service                                                                                      loaded active exited    Load Kernel Modules
  systemd-random-seed.service                                                                                       loaded active exited    Load/Save Random Seed
  systemd-remount-fs.service                                                                                        loaded active exited    Remount Root and Kernel File Systems
  systemd-sysctl.service                                                                                            loaded active exited    Apply Kernel Variables
  systemd-sysusers.service                                                                                          loaded active exited    Create System Users
  systemd-tmpfiles-setup-dev.service                                                                                loaded active exited    Create Static Device Nodes in /dev
  systemd-tmpfiles-setup.service                                                                                    loaded active exited    Create Volatile Files and Directories
  systemd-udev-trigger.service                                                                                      loaded active exited    Coldplug All udev Devices
  systemd-udevd.service                                                                                             loaded active running   Rule-based Manager for Device Events and Files
  systemd-update-utmp.service                                                                                       loaded active exited    Record System Boot/Shutdown in UTMP
  systemd-user-sessions.service                                                                                     loaded active exited    Permit User Sessions
  udisks2.service                                                                                                   loaded active running   Disk Manager
  ufw.service                                                                                                       loaded active exited    Uncomplicated firewall
  usbguard-dbus.service                                                                                             loaded active running   USBGuard D-Bus Service
  usbguard.service                                                                                                  loaded active running   USBGuard daemon
  user-runtime-dir@0.service                                                                                        loaded active exited    User Runtime Directory /run/user/0
  user@0.service                                                                                                    loaded active running   User Manager for UID 0
  wpa_supplicant.service                                                                                            loaded active running   WPA supplicant
  -.slice                                                                                                           loaded active active    Root Slice
  system-getty.slice                                                                                                loaded active active    Slice /system/getty
  system-lvm2\x2dpvscan.slice                                                                                       loaded active active    Slice /system/lvm2-pvscan
  system-modprobe.slice                                                                                             loaded active active    Slice /system/modprobe
  system-serial\x2dgetty.slice                                                                                      loaded active active    Slice /system/serial-getty
  system-systemd\x2dbacklight.slice                                                                                 loaded active active    Slice /system/systemd-backlight
  system-systemd\x2dfsck.slice                                                                                      loaded active active    Slice /system/systemd-fsck
  system-weston.slice                                                                                               loaded active active    Slice /system/weston
  system.slice                                                                                                      loaded active active    System Slice
  user-0.slice                                                                                                      loaded active active    User Slice of UID 0
  user.slice                                                                                                        loaded active active    User and Session Slice
  cups.socket                                                                                                       loaded active listening CUPS Scheduler
  dbus.socket                                                                                                       loaded active running   D-Bus System Message Bus Socket
  dm-event.socket                                                                                                   loaded active listening Device-mapper event daemon FIFOs
  docker.socket                                                                                                     loaded active running   Docker Socket for the API
  lvm2-lvmpolld.socket                                                                                              loaded active listening LVM2 poll daemon socket
  systemd-fsckd.socket                                                                                              loaded active listening fsck to fsckd communication Socket
  systemd-initctl.socket                                                                                            loaded active listening initctl Compatibility Named Pipe
  systemd-journald-audit.socket                                                                                     loaded active running   Journal Audit Socket
  systemd-journald-dev-log.socket                                                                                   loaded active running   Journal Socket (/dev/log)
  systemd-journald.socket                                                                                           loaded active running   Journal Socket
  systemd-rfkill.socket                                                                                             loaded active listening Load/Save RF Kill Switch Status /dev/rfkill Watch
  systemd-udevd-control.socket                                                                                      loaded active running   udev Control Socket
  systemd-udevd-kernel.socket                                                                                       loaded active running   udev Kernel Socket
  basic.target                                                                                                      loaded active active    Basic System
  cryptsetup.target                                                                                                 loaded active active    Local Encrypted Volumes
  getty.target                                                                                                      loaded active active    Login Prompts
  graphical.target                                                                                                  loaded active active    Graphical Interface
  integritysetup.target                                                                                             loaded active active    Local Integrity Protected Volumes
  local-fs-pre.target                                                                                               loaded active active    Preparation for Local File Systems
  local-fs.target                                                                                                   loaded active active    Local File Systems
  mel-boot-complete.target                                                                                          loaded active active    MEL OS Boot Complete
  multi-user.target                                                                                                 loaded active active    Multi-User System
  network-online.target                                                                                             loaded active active    Network is Online
  network.target                                                                                                    loaded active active    Network
  paths.target                                                                                                      loaded active active    Path Units
  remote-fs.target                                                                                                  loaded active active    Remote File Systems
  slices.target                                                                                                     loaded active active    Slice Units
  sockets.target                                                                                                    loaded active active    Socket Units
  swap.target                                                                                                       loaded active active    Swaps
  sysinit.target                                                                                                    loaded active active    System Initialization
  timers.target                                                                                                     loaded active active    Timer Units
  veritysetup.target                                                                                                loaded active active    Local Verity Protected Volumes
  anacron.timer                                                                                                     loaded active waiting   Trigger anacron every hour
  apt-daily-upgrade.timer                                                                                           loaded active waiting   Daily apt upgrade and clean activities
  apt-daily.timer                                                                                                   loaded active waiting   Daily apt download activities
  e2scrub_all.timer                                                                                                 loaded active waiting   Periodic ext4 Online Metadata Check for All Filesystems
  ent.timer                                                                                                         loaded active waiting   Run ent periodically and on boot
  fstrim.timer                                                                                                      loaded active waiting   Discard unused blocks once a week
  logrotate.timer                                                                                                   loaded active waiting   Daily rotation of log files
  systemd-tmpfiles-clean.timer                                                                                      loaded active waiting   Daily Cleanup of Temporary Directories

LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.
171 loaded units listed. Pass --all to see loaded but inactive units, too.
To show all installed unit files use 'systemctl list-unit-files'.
```

## journalctl 

```sh
Feb 06 15:49:58 localhost kernel: Booting Linux on physical CPU 0x0000000000 [0x410fd034]
Feb 06 15:49:58 localhost kernel: Linux version 5.10.158-cip22+ind1 (builder@narmada) (aarch64-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023
Feb 06 15:49:58 localhost kernel: Machine model: Siemens Foxxy
Feb 06 15:49:58 localhost kernel: earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
Feb 06 15:49:58 localhost kernel: printk: bootconsole [ec_imx6q0] enabled
Feb 06 15:49:58 localhost kernel: Reserved memory: created CMA memory pool at 0x0000000096000000, size 640 MiB
Feb 06 15:49:58 localhost kernel: OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
Feb 06 15:49:58 localhost kernel: NUMA: No NUMA configuration found
Feb 06 15:49:58 localhost kernel: NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 15:49:58 localhost kernel: NUMA: NODE_DATA [mem 0xbfa46700-0xbfa48fff]
Feb 06 15:49:58 localhost kernel: Zone ranges:
Feb 06 15:49:58 localhost kernel:   DMA      [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 15:49:58 localhost kernel:   DMA32    empty
Feb 06 15:49:58 localhost kernel:   Normal   empty
Feb 06 15:49:58 localhost kernel: Movable zone start for each node
Feb 06 15:49:58 localhost kernel: Early memory node ranges
Feb 06 15:49:58 localhost kernel:   node   0: [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 15:49:58 localhost kernel: Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 15:49:58 localhost kernel: On node 0 totalpages: 523898
Feb 06 15:49:58 localhost kernel:   DMA zone: 8186 pages used for memmap
Feb 06 15:49:58 localhost kernel:   DMA zone: 0 pages reserved
Feb 06 15:49:58 localhost kernel:   DMA zone: 523898 pages, LIFO batch:63
Feb 06 15:49:58 localhost kernel: On node 0, zone DMA: 390 pages in unavailable ranges
Feb 06 15:49:58 localhost kernel: psci: probing for conduit method from DT.
Feb 06 15:49:58 localhost kernel: psci: PSCIv1.1 detected in firmware.
Feb 06 15:49:58 localhost kernel: psci: Using standard PSCI v0.2 function IDs
Feb 06 15:49:58 localhost kernel: psci: MIGRATE_INFO_TYPE not supported.
Feb 06 15:49:58 localhost kernel: psci: SMC Calling Convention v1.2
Feb 06 15:49:58 localhost kernel: percpu: Embedded 30 pages/cpu s84248 r8192 d30440 u122880
Feb 06 15:49:58 localhost kernel: pcpu-alloc: s84248 r8192 d30440 u122880 alloc=30*4096
Feb 06 15:49:58 localhost kernel: pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
Feb 06 15:49:58 localhost kernel: Detected VIPT I-cache on CPU0
Feb 06 15:49:58 localhost kernel: CPU features: detected: ARM erratum 845719
Feb 06 15:49:58 localhost kernel: CPU features: detected: GIC system register CPU interface
Feb 06 15:49:58 localhost kernel: Built 1 zonelists, mobility grouping on.  Total pages: 515712
Feb 06 15:49:58 localhost kernel: Policy zone: DMA
Feb 06 15:49:58 localhost kernel: Kernel command line: console=ttymxc1,115200 earlycon=ec_imx6q,0x30890000,115200 loglevel=2 root=/dev/vg_sys/lv_mainvo ro rootfstype=ext4 rootwait security=selinux selinux=1 enforcing=0 enforcing=0 cryptomgr.notests systemd.unified_cgroup_hierarchy=0 module_blacklist=intel_ish_ipc,intel_ishtp jtag=on nohlt splash plymouth.ignore-serial-consoles quiet vt.global_cursor_default=0
Feb 06 15:49:58 localhost kernel: Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
Feb 06 15:49:58 localhost kernel: Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
Feb 06 15:49:58 localhost kernel: mem auto-init: stack:off, heap alloc:off, heap free:off
Feb 06 15:49:58 localhost kernel: Memory: 1351880K/2095592K available (17406K kernel code, 2216K rwdata, 6740K rodata, 5184K init, 529K bss, 88352K reserved, 655360K cma-reserved)
Feb 06 15:49:58 localhost kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
Feb 06 15:49:58 localhost kernel: ftrace: allocating 56519 entries in 221 pages
Feb 06 15:49:58 localhost kernel: ftrace: allocated 221 pages with 6 groups
Feb 06 15:49:58 localhost kernel: rcu: Preemptible hierarchical RCU implementation.
Feb 06 15:49:58 localhost kernel: rcu:         RCU event tracing is enabled.
Feb 06 15:49:58 localhost kernel: rcu:         RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
Feb 06 15:49:58 localhost kernel:         Trampoline variant of Tasks RCU enabled.
Feb 06 15:49:58 localhost kernel:         Rude variant of Tasks RCU enabled.
Feb 06 15:49:58 localhost kernel: rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
Feb 06 15:49:58 localhost kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
Feb 06 15:49:58 localhost kernel: NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
Feb 06 15:49:58 localhost kernel: GICv3: GIC: Using split EOI/Deactivate mode
Feb 06 15:49:58 localhost kernel: GICv3: 128 SPIs implemented
Feb 06 15:49:58 localhost kernel: GICv3: 0 Extended SPIs implemented
Feb 06 15:49:58 localhost kernel: GICv3: Distributor has no Range Selector support
Feb 06 15:49:58 localhost kernel: GICv3: 16 PPIs implemented
Feb 06 15:49:58 localhost kernel: GICv3: CPU0: found redistributor 0 region 0:0x0000000038880000
Feb 06 15:49:58 localhost kernel: ITS: No ITS available, not enabling LPIs
Feb 06 15:49:58 localhost kernel: arch_timer: cp15 timer(s) running at 8.00MHz (phys).
Feb 06 15:49:58 localhost kernel: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
Feb 06 15:49:58 localhost kernel: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
Feb 06 15:49:58 localhost kernel: Console: colour dummy device 80x25
Feb 06 15:49:58 localhost kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
Feb 06 15:49:58 localhost kernel: pid_max: default: 32768 minimum: 301
Feb 06 15:49:58 localhost kernel: LSM: Security Framework initializing
Feb 06 15:49:58 localhost kernel: SELinux:  Initializing.
Feb 06 15:49:58 localhost kernel: Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 15:49:58 localhost kernel: Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 15:49:58 localhost kernel: rcu: Hierarchical SRCU implementation.
Feb 06 15:49:58 localhost kernel: smp: Bringing up secondary CPUs ...
Feb 06 15:49:58 localhost kernel: Detected VIPT I-cache on CPU1
Feb 06 15:49:58 localhost kernel: GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
Feb 06 15:49:58 localhost kernel: CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
Feb 06 15:49:58 localhost kernel: Detected VIPT I-cache on CPU2
Feb 06 15:49:58 localhost kernel: GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
Feb 06 15:49:58 localhost kernel: CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
Feb 06 15:49:58 localhost kernel: Detected VIPT I-cache on CPU3
Feb 06 15:49:58 localhost kernel: GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
Feb 06 15:49:58 localhost kernel: CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
Feb 06 15:49:58 localhost kernel: smp: Brought up 1 node, 4 CPUs
Feb 06 15:49:58 localhost kernel: SMP: Total of 4 processors activated.
Feb 06 15:49:58 localhost kernel: CPU features: detected: 32-bit EL0 Support
Feb 06 15:49:58 localhost kernel: CPU features: detected: CRC32 instructions
Feb 06 15:49:58 localhost kernel: CPU: All CPU(s) started at EL2
Feb 06 15:49:58 localhost kernel: alternatives: patching kernel code
Feb 06 15:49:58 localhost kernel: devtmpfs: initialized
Feb 06 15:49:58 localhost kernel: KASLR disabled due to lack of seed
Feb 06 15:49:58 localhost kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
Feb 06 15:49:58 localhost kernel: futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
Feb 06 15:49:58 localhost kernel: pinctrl core: initialized pinctrl subsystem
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 16
Feb 06 15:49:58 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
Feb 06 15:49:58 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
Feb 06 15:49:58 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
Feb 06 15:49:58 localhost kernel: audit: initializing netlink subsys (disabled)
Feb 06 15:49:58 localhost kernel: audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
Feb 06 15:49:58 localhost kernel: thermal_sys: Registered thermal governor 'step_wise'
Feb 06 15:49:58 localhost kernel: thermal_sys: Registered thermal governor 'power_allocator'
Feb 06 15:49:58 localhost kernel: cpuidle: using governor menu
Feb 06 15:49:58 localhost kernel: hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
Feb 06 15:49:58 localhost kernel: ASID allocator initialised with 65536 entries
Feb 06 15:49:58 localhost kernel: Serial: AMBA PL011 UART driver
Feb 06 15:49:58 localhost kernel: imx mu driver is registered.
Feb 06 15:49:58 localhost kernel: imx rpmsg driver is registered.
Feb 06 15:49:58 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
Feb 06 15:49:58 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
Feb 06 15:49:58 localhost kernel: HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
Feb 06 15:49:58 localhost kernel: HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
Feb 06 15:49:58 localhost kernel: HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
Feb 06 15:49:58 localhost kernel: HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
Feb 06 15:49:58 localhost kernel: cryptd: max_cpu_qlen set to 1000
Feb 06 15:49:58 localhost kernel: iommu: Default domain type: Translated 
Feb 06 15:49:58 localhost kernel: vgaarb: loaded
Feb 06 15:49:58 localhost kernel: SCSI subsystem initialized
Feb 06 15:49:58 localhost kernel: libata version 3.00 loaded.
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver usbfs
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver hub
Feb 06 15:49:58 localhost kernel: usbcore: registered new device driver usb
Feb 06 15:49:58 localhost kernel: mc: Linux media interface: v0.10
Feb 06 15:49:58 localhost kernel: videodev: Linux video capture interface: v2.00
Feb 06 15:49:58 localhost kernel: pps_core: LinuxPPS API ver. 1 registered
Feb 06 15:49:58 localhost kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
Feb 06 15:49:58 localhost kernel: PTP clock support registered
Feb 06 15:49:58 localhost kernel: EDAC MC: Ver: 3.0.0
Feb 06 15:49:58 localhost kernel: FPGA manager framework
Feb 06 15:49:58 localhost kernel: Advanced Linux Sound Architecture Driver Initialized.
Feb 06 15:49:58 localhost kernel: Bluetooth: Core ver 2.22
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 31
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI device and connection manager initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI socket layer initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: L2CAP socket layer initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: SCO socket layer initialized
Feb 06 15:49:58 localhost kernel: clocksource: Switched to clocksource arch_sys_counter
Feb 06 15:49:58 localhost kernel: VFS: Disk quotas dquot_6.6.0
Feb 06 15:49:58 localhost kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 2
Feb 06 15:49:58 localhost kernel: IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
Feb 06 15:49:58 localhost kernel: tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
Feb 06 15:49:58 localhost kernel: TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
Feb 06 15:49:58 localhost kernel: TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
Feb 06 15:49:58 localhost kernel: TCP: Hash tables configured (established 16384 bind 16384)
Feb 06 15:49:58 localhost kernel: UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 15:49:58 localhost kernel: UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 1
Feb 06 15:49:58 localhost kernel: RPC: Registered named UNIX socket transport module.
Feb 06 15:49:58 localhost kernel: RPC: Registered udp transport module.
Feb 06 15:49:58 localhost kernel: RPC: Registered tcp transport module.
Feb 06 15:49:58 localhost kernel: RPC: Registered tcp NFSv4.1 backchannel transport module.
Feb 06 15:49:58 localhost kernel: PCI: CLS 0 bytes, default 64
Feb 06 15:49:58 localhost kernel: Unpacking initramfs...
Feb 06 15:49:58 localhost kernel: Freeing initrd memory: 15480K
Feb 06 15:49:58 localhost kernel: hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
Feb 06 15:49:58 localhost kernel: Initialise system trusted keyrings
Feb 06 15:49:58 localhost kernel: workingset: timestamp_bits=42 max_order=19 bucket_order=0
Feb 06 15:49:58 localhost kernel: NFS: Registering the id_resolver key type
Feb 06 15:49:58 localhost kernel: Key type id_resolver registered
Feb 06 15:49:58 localhost kernel: Key type id_legacy registered
Feb 06 15:49:58 localhost kernel: nfs4filelayout_init: NFSv4 File Layout Driver Registering...
Feb 06 15:49:58 localhost kernel: nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
Feb 06 15:49:58 localhost kernel: jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
Feb 06 15:49:58 localhost kernel: Key type asymmetric registered
Feb 06 15:49:58 localhost kernel: Asymmetric key parser 'x509' registered
Feb 06 15:49:58 localhost kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
Feb 06 15:49:58 localhost kernel: io scheduler mq-deadline registered
Feb 06 15:49:58 localhost kernel: io scheduler kyber registered
Feb 06 15:49:58 localhost kernel: M4 is started
Feb 06 15:49:58 localhost kernel: imx-sdma 302b0000.dma-controller: firmware found.
Feb 06 15:49:58 localhost kernel: imx-sdma 302c0000.dma-controller: firmware found.
Feb 06 15:49:58 localhost kernel: imx-sdma 30bd0000.dma-controller: firmware found.
Feb 06 15:49:58 localhost kernel: mxs-dma 33000000.dma-controller: initialized
Feb 06 15:49:58 localhost kernel: Bus freq driver module loaded
Feb 06 15:49:58 localhost kernel: Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
Feb 06 15:49:58 localhost kernel: 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
Feb 06 15:49:58 localhost kernel: printk: console [ttymxc1] enabled
Feb 06 15:49:58 localhost kernel: printk: bootconsole [ec_imx6q0] disabled
Feb 06 15:49:58 localhost kernel: loop: module loaded
Feb 06 15:49:58 localhost kernel: of_reserved_mem_lookup() returned NULL
Feb 06 15:49:58 localhost kernel: imx ahci driver is registered.
Feb 06 15:49:58 localhost kernel: spi_imx 30800000.spba-bus:spi@30830000: invalid resource
Feb 06 15:49:58 localhost kernel: spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
Feb 06 15:49:58 localhost kernel: tun: Universal TUN/TAP device driver, 1.6
Feb 06 15:49:58 localhost kernel: pps pps0: new PPS source ptp0
Feb 06 15:49:58 localhost kernel: fec 30be0000.ethernet eth0: registered PHC device 0
Feb 06 15:49:58 localhost kernel: e1000: Intel(R) PRO/1000 Network Driver
Feb 06 15:49:58 localhost kernel: e1000: Copyright (c) 1999-2006 Intel Corporation.
Feb 06 15:49:58 localhost kernel: e1000e: Intel(R) PRO/1000 Network Driver
Feb 06 15:49:58 localhost kernel: e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
Feb 06 15:49:58 localhost kernel: igb: Intel(R) Gigabit Ethernet Network Driver
Feb 06 15:49:58 localhost kernel: igb: Copyright (c) 2007-2014 Intel Corporation.
Feb 06 15:49:58 localhost kernel: igbvf: Intel(R) Gigabit Virtual Function Network Driver
Feb 06 15:49:58 localhost kernel: igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
Feb 06 15:49:58 localhost kernel: sky2: driver version 1.30
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver r8152
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver asix
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver ax88179_178a
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver cdc_ether
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver net1080
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver cdc_subset
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver zaurus
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver cdc_ncm
Feb 06 15:49:58 localhost kernel: VFIO - User Level meta-driver version: 0.3
Feb 06 15:49:58 localhost kernel: ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
Feb 06 15:49:58 localhost kernel: ehci-pci: EHCI PCI platform driver
Feb 06 15:49:58 localhost kernel: ehci-platform: EHCI generic platform driver
Feb 06 15:49:58 localhost kernel: ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
Feb 06 15:49:58 localhost kernel: ohci-pci: OHCI PCI platform driver
Feb 06 15:49:58 localhost kernel: ohci-platform: OHCI generic platform driver
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver uas
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver usb-storage
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver usbserial_generic
Feb 06 15:49:58 localhost kernel: usbserial: USB Serial support registered for generic
Feb 06 15:49:58 localhost kernel: i2c /dev entries driver
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART driver ver 2.3
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol H4 registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol BCSP registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol LL registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol ATH3K registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol Three-wire (H5) registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol Broadcom registered
Feb 06 15:49:58 localhost kernel: Bluetooth: HCI UART protocol QCA registered
Feb 06 15:49:58 localhost kernel: sdhci: Secure Digital Host Controller Interface driver
Feb 06 15:49:58 localhost kernel: sdhci: Copyright(c) Pierre Ossman
Feb 06 15:49:58 localhost kernel: Synopsys Designware Multimedia Card Interface Driver
Feb 06 15:49:58 localhost kernel: sdhci-pltfm: SDHCI platform and OF driver helper
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
Feb 06 15:49:58 localhost kernel: ledtrig-cpu: registered to indicate activity on CPUs
Feb 06 15:49:58 localhost kernel: SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
Feb 06 15:49:58 localhost kernel: usbcore: registered new interface driver usbhid
Feb 06 15:49:58 localhost kernel: usbhid: USB HID core driver
Feb 06 15:49:58 localhost kernel: galcore: clk_get vg clock failed, disable vg!
Feb 06 15:49:58 localhost kernel: Galcore version 6.4.3.p2.336687
Feb 06 15:49:58 localhost kernel: mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
Feb 06 15:49:58 localhost kernel: [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 10
Feb 06 15:49:58 localhost kernel: Segment Routing with IPv6
Feb 06 15:49:58 localhost kernel: NET: Registered protocol family 17
Feb 06 15:49:58 localhost kernel: Bluetooth: RFCOMM TTY layer initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: RFCOMM socket layer initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: RFCOMM ver 1.11
Feb 06 15:49:58 localhost kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Feb 06 15:49:58 localhost kernel: Bluetooth: BNEP filters: protocol multicast
Feb 06 15:49:58 localhost kernel: Bluetooth: BNEP socket layer initialized
Feb 06 15:49:58 localhost kernel: Bluetooth: HIDP (Human Interface Emulation) ver 1.2
Feb 06 15:49:58 localhost kernel: Bluetooth: HIDP socket layer initialized
Feb 06 15:49:58 localhost kernel: 8021q: 802.1Q VLAN Support v1.8
Feb 06 15:49:58 localhost kernel: lib80211: common routines for IEEE802.11 drivers
Feb 06 15:49:58 localhost kernel: lib80211_crypt: registered algorithm 'NULL'
Feb 06 15:49:58 localhost kernel: lib80211_crypt: registered algorithm 'WEP'
Feb 06 15:49:58 localhost kernel: lib80211_crypt: registered algorithm 'CCMP'
Feb 06 15:49:58 localhost kernel: lib80211_crypt: registered algorithm 'TKIP'
Feb 06 15:49:58 localhost kernel: tsn generic netlink module v1 init...
Feb 06 15:49:58 localhost kernel: Key type dns_resolver registered
Feb 06 15:49:58 localhost kernel: registered taskstats version 1
Feb 06 15:49:58 localhost kernel: Loading compiled-in X.509 certificates
Feb 06 15:49:58 localhost kernel: usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
Feb 06 15:49:58 localhost kernel: usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
Feb 06 15:49:58 localhost kernel: usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
Feb 06 15:49:58 localhost kernel: usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
Feb 06 15:49:58 localhost kernel: imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 15:49:58 localhost kernel: nxp-pca9450 0-0025: pca9450a probed.
Feb 06 15:49:58 localhost kernel: i2c i2c-0: IMX I2C adapter registered
Feb 06 15:49:58 localhost kernel: imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 15:49:58 localhost kernel: rtc-ds1307 1-0032: registered as rtc0
Feb 06 15:49:58 localhost kernel: rtc-ds1307 1-0032: setting system clock to 2023-02-06T15:49:54 UTC (1675698594)
Feb 06 15:49:58 localhost kernel: i2c i2c-1: IMX I2C adapter registered
Feb 06 15:49:58 localhost kernel: imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 15:49:58 localhost kernel: mmc2: new DDR MMC card at address 0001
Feb 06 15:49:58 localhost kernel: mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
Feb 06 15:49:58 localhost kernel: mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
Feb 06 15:49:58 localhost kernel: mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
Feb 06 15:49:58 localhost kernel: mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
Feb 06 15:49:58 localhost kernel: mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
Feb 06 15:49:58 localhost kernel:  mmcblk2: p1 p2 p3 p4
Feb 06 15:49:58 localhost kernel: input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
Feb 06 15:49:58 localhost kernel: i2c i2c-2: IMX I2C adapter registered
Feb 06 15:49:58 localhost kernel: pwm-backlight backlight: supply power not found, using dummy regulator
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
Feb 06 15:49:58 localhost kernel: SoC: i.MX8MM revision 1.0
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: GPR15=6188ffff
Feb 06 15:49:58 localhost kernel: imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: invalid resource
Feb 06 15:49:58 localhost kernel: imx_usb 32e40000.usb: No over current polarity defined
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.0: EHCI Host Controller
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
Feb 06 15:49:58 localhost kernel: hub 1-0:1.0: USB hub found
Feb 06 15:49:58 localhost kernel: hub 1-0:1.0: 1 port detected
Feb 06 15:49:58 localhost kernel: imx_usb 32e50000.usb: No over current polarity defined
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.1: EHCI Host Controller
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
Feb 06 15:49:58 localhost kernel: ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
Feb 06 15:49:58 localhost kernel: hub 2-0:1.0: USB hub found
Feb 06 15:49:58 localhost kernel: hub 2-0:1.0: 1 port detected
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 15:49:58 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
Feb 06 15:49:58 localhost kernel: hantrodec 0 : module inserted. Major = 234
Feb 06 15:49:58 localhost kernel: hantrodec 1 : module inserted. Major = 234
Feb 06 15:49:58 localhost kernel: hx280enc: module inserted. Major <511>
Feb 06 15:49:58 localhost kernel: ALSA device list:
Feb 06 15:49:58 localhost kernel:   No soundcards found.
Feb 06 15:49:58 localhost kernel: mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: Phy link never came up
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: failed to initialize host
Feb 06 15:49:58 localhost kernel: imx6q-pcie 33800000.pcie: unable to add pcie port.
Feb 06 15:49:58 localhost kernel: Freeing unused kernel memory: 5184K
Feb 06 15:49:58 localhost kernel: Run /init as init process
Feb 06 15:49:58 localhost kernel:   with arguments:
Feb 06 15:49:58 localhost kernel:     /init
Feb 06 15:49:58 localhost kernel:     splash
Feb 06 15:49:58 localhost kernel:   with environment:
Feb 06 15:49:58 localhost kernel:     HOME=/
Feb 06 15:49:58 localhost kernel:     TERM=linux
Feb 06 15:49:58 localhost kernel:     jtag=on
Feb 06 15:49:58 localhost kernel: fec 30be0000.ethernet end0: renamed from eth0
Feb 06 15:49:58 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
Feb 06 15:49:58 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
Feb 06 15:49:58 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
Feb 06 15:49:58 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
Feb 06 15:49:58 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
Feb 06 15:49:58 localhost kernel: [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
Feb 06 15:49:58 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 15:49:58 localhost kernel: device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
Feb 06 15:49:58 localhost kernel: random: lvm: uninitialized urandom read (2 bytes read)
Feb 06 15:49:58 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 15:49:58 localhost kernel: EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 15:49:58 localhost kernel: EXT4-fs (dm-2): recovery complete
Feb 06 15:49:58 localhost kernel: EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 15:49:58 localhost systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
Feb 06 15:49:58 localhost systemd[1]: Detected architecture arm64.
Feb 06 15:49:58 localhost systemd[1]: No hostname configured, using default hostname.
Feb 06 15:49:58 localhost systemd[1]: Hostname set to <localhost>.
Feb 06 15:49:58 localhost kernel: random: lvmconfig: uninitialized urandom read (4 bytes read)
Feb 06 15:49:58 localhost systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
Feb 06 15:49:58 localhost systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
Feb 06 15:49:58 localhost systemd[1]: Queued start job for default target Graphical Interface.
Feb 06 15:49:58 localhost systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
Feb 06 15:49:58 localhost systemd[1]: Unnecessary job was removed for /dev/dm-2.
Feb 06 15:49:58 localhost systemd[1]: Created slice Slice /system/getty.
Feb 06 15:49:58 localhost systemd[1]: Created slice Slice /system/modprobe.
Feb 06 15:49:58 localhost systemd[1]: Created slice Slice /system/serial-getty.
Feb 06 15:49:58 localhost systemd[1]: Created slice Slice /system/systemd-fsck.
Feb 06 15:49:58 localhost systemd[1]: Created slice Slice /system/weston.
Feb 06 15:49:58 localhost systemd[1]: Created slice User and Session Slice.
Feb 06 15:49:58 localhost systemd[1]: Started Forward Password Requests to Wall Directory Watch.
Feb 06 15:49:58 localhost systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
Feb 06 15:49:58 localhost systemd[1]: Reached target Local Integrity Protected Volumes.
Feb 06 15:49:58 localhost systemd[1]: Reached target Remote File Systems.
Feb 06 15:49:58 localhost systemd[1]: Reached target Slice Units.
Feb 06 15:49:58 localhost systemd[1]: Reached target Swaps.
Feb 06 15:49:58 localhost systemd[1]: Reached target Local Verity Protected Volumes.
Feb 06 15:49:58 localhost systemd[1]: Listening on Device-mapper event daemon FIFOs.
Feb 06 15:49:58 localhost systemd[1]: Listening on LVM2 poll daemon socket.
Feb 06 15:49:58 localhost systemd[1]: Listening on fsck to fsckd communication Socket.
Feb 06 15:49:58 localhost systemd[1]: Listening on initctl Compatibility Named Pipe.
Feb 06 15:49:58 localhost systemd[1]: Listening on Journal Audit Socket.
Feb 06 15:49:58 localhost systemd[1]: Listening on Journal Socket (/dev/log).
Feb 06 15:49:58 localhost systemd[1]: Listening on Journal Socket.
Feb 06 15:49:58 localhost systemd[1]: Listening on udev Control Socket.
Feb 06 15:49:58 localhost systemd[1]: Listening on udev Kernel Socket.
Feb 06 15:49:58 localhost systemd[1]: Mounting Huge Pages File System...
Feb 06 15:49:58 localhost systemd[1]: Mounting POSIX Message Queue File System...
Feb 06 15:49:58 localhost systemd[1]: Mounting Kernel Debug File System...
Feb 06 15:49:58 localhost systemd[1]: Mounting Kernel Trace File System...
Feb 06 15:49:58 localhost systemd[1]: Finished Availability of block devices.
Feb 06 15:49:58 localhost systemd[1]: Starting Set the console keyboard layout...
Feb 06 15:49:58 localhost systemd[1]: Starting Create List of Static Device Nodes...
Feb 06 15:49:58 localhost systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
Feb 06 15:49:58 localhost systemd[1]: Starting Load Kernel Module configfs...
Feb 06 15:49:58 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 15:49:58 localhost systemd[1]: Starting Load Kernel Module efi_pstore...
Feb 06 15:49:58 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 15:49:58 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 15:49:58 localhost systemd[1]: Starting Network initialization...
Feb 06 15:49:58 localhost systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
Feb 06 15:49:58 localhost systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
Feb 06 15:49:58 localhost systemd[1]: Starting Journal Service...
Feb 06 15:49:58 localhost systemd[1]: Starting Load Kernel Modules...
Feb 06 15:49:58 localhost systemd[1]: Starting Remount Root and Kernel File Systems...
Feb 06 15:49:58 localhost systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
Feb 06 15:49:58 localhost kernel: fuse: init (API version 7.32)
Feb 06 15:49:58 localhost systemd[1]: Starting Coldplug All udev Devices...
Feb 06 15:49:58 localhost systemd[1]: Starting Uncomplicated firewall...
Feb 06 15:49:58 localhost systemd[1]: Mounted Huge Pages File System.
Feb 06 15:49:58 localhost systemd[1]: Mounted POSIX Message Queue File System.
Feb 06 15:49:58 localhost systemd[1]: Mounted Kernel Debug File System.
Feb 06 15:49:58 localhost systemd[1]: Mounted Kernel Trace File System.
Feb 06 15:49:58 localhost systemd[1]: Finished Create List of Static Device Nodes.
Feb 06 15:49:58 localhost systemd[1]: modprobe@configfs.service: Deactivated successfully.
Feb 06 15:49:58 localhost systemd[1]: Finished Load Kernel Module configfs.
Feb 06 15:49:58 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 15:49:58 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 15:49:58 localhost systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
Feb 06 15:49:58 localhost systemd[1]: Finished Load Kernel Module efi_pstore.
Feb 06 15:49:58 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 15:49:58 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 15:49:58 localhost systemd[1]: Finished Load Kernel Modules.
Feb 06 15:49:58 localhost systemd[1]: Finished Uncomplicated firewall.
Feb 06 15:49:58 localhost systemd[1]: Mounting FUSE Control File System...
Feb 06 15:49:58 localhost systemd[1]: Mounting Kernel Configuration File System...
Feb 06 15:49:58 localhost systemd[1]: Starting Apply Kernel Variables...
Feb 06 15:49:58 localhost systemd[1]: Mounted FUSE Control File System.
Feb 06 15:49:58 localhost systemd[1]: Mounted Kernel Configuration File System.
Feb 06 15:49:58 localhost systemd[1]: Finished Remount Root and Kernel File Systems.
Feb 06 15:49:58 localhost systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 15:49:58 localhost systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
Feb 06 15:49:58 localhost systemd[1]: Starting Load/Save Random Seed...
Feb 06 15:49:58 localhost systemd[1]: Starting Create System Users...
Feb 06 15:49:58 localhost systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
Feb 06 15:49:58 localhost systemd[1]: Finished Apply Kernel Variables.
Feb 06 15:49:58 localhost kernel: random: python3: uninitialized urandom read (24 bytes read)
Feb 06 15:49:58 localhost systemd-journald[360]: Journal started
Feb 06 15:49:58 localhost systemd-journald[360]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 15:49:58 localhost systemd-modules-load[361]: Failed to find module 'lp'
Feb 06 15:49:58 localhost systemd[1]: Started Journal Service.
Feb 06 15:49:58 localhost systemd-modules-load[361]: Failed to find module 'ppdev'
Feb 06 15:49:58 localhost systemd-modules-load[361]: Failed to find module 'parport_pc'
Feb 06 15:49:58 localhost systemd-random-seed[381]: Kernel entropy pool is not initialized yet, waiting until it is.
Feb 06 15:49:58 localhost systemd[1]: Finished Create System Users.
Feb 06 15:49:58 localhost systemd[1]: Starting Create Static Device Nodes in /dev...
Feb 06 15:49:58 localhost lvm[351]:   5 logical volume(s) in volume group "vg_sys" monitored
Feb 06 15:49:58 localhost networking[365]: rm: cannot remove '/var/tmp/network/ifstatenew': Read-only file system
Feb 06 15:49:58 localhost networking[359]: networking: Configuring network interfaces
Feb 06 15:49:58 localhost systemd[1]: Finished Create Static Device Nodes in /dev.
Feb 06 15:49:58 localhost systemd[1]: Starting Rule-based Manager for Device Events and Files...
Feb 06 15:49:58 localhost systemd-udevd[386]: Using default interface naming scheme 'v252'.
Feb 06 15:49:58 localhost systemd[1]: Started Rule-based Manager for Device Events and Files.
Feb 06 15:49:58 localhost systemd[1]: Finished Coldplug All udev Devices.
Feb 06 15:49:58 localhost systemd[1]: Found device /dev/disk/by-label/lv_pavo.
Feb 06 15:49:58 localhost systemd[1]: Finished Set the console keyboard layout.
Feb 06 15:49:58 localhost systemd[1]: Reached target Preparation for Local File Systems.
Feb 06 15:49:58 localhost systemd[1]: Starting Show Plymouth Boot Screen...
Feb 06 15:49:58 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_pavo...
Feb 06 15:49:58 localhost systemd[1]: Found device /dev/ttymxc1.
Feb 06 15:49:59 localhost systemd[1]: Started File System Check Daemon to report status.
Feb 06 15:49:59 localhost systemd[1]: Started Show Plymouth Boot Screen.
Feb 06 15:49:59 localhost systemd[1]: Dispatch Password Requests to Console Directory Watch was skipped because of an unmet condition check (ConditionPathExists=!/run/plymouth/pid).
Feb 06 15:49:59 localhost systemd[1]: Started Forward Password Requests to Plymouth Directory Watch.
Feb 06 15:49:59 localhost systemd[1]: Reached target Local Encrypted Volumes.
Feb 06 15:49:59 localhost systemd-fsck[429]: lv_pavo: recovering journal
Feb 06 15:49:59 localhost systemd-fsck[429]: lv_pavo: clean, 11/16384 files, 7465/65536 blocks
Feb 06 15:49:59 localhost systemd-udevd[398]: event_source: Failed to get device name: No such file or directory
Feb 06 15:49:59 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_pavo.
Feb 06 15:49:59 localhost systemd[1]: Found device /dev/disk/by-label/lv_rtvo.
Feb 06 15:49:59 localhost systemd[1]: Mounting /etc/hmi/FwServices/pa...
Feb 06 15:49:59 localhost systemd[1]: var-log.mount: Directory /var/log to mount over is not empty, mounting anyway.
Feb 06 15:49:59 localhost systemd[1]: Mounting /var/log...
Feb 06 15:49:59 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_rtvo...
Feb 06 15:49:59 localhost kernel: EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 15:49:59 localhost kernel: ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 15:49:59 localhost systemd[1]: Mounted /etc/hmi/FwServices/pa.
Feb 06 15:49:59 localhost systemd[1]: Mounted /var/log.
Feb 06 15:49:59 localhost systemd[1]: Starting Flush Journal to Persistent Storage...
Feb 06 15:49:59 localhost systemd-journald[360]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 15:49:59 localhost systemd-journald[360]: Received client request to flush runtime journal.
Feb 06 15:49:59 localhost systemd[1]: Finished Flush Journal to Persistent Storage.
Feb 06 15:49:59 localhost systemd[1]: Condition check resulted in /dev/disk/by-path/platform-30b60000.mmc-part1 being skipped.
Feb 06 15:49:59 localhost systemd-fsck[440]: lv_rtvo: recovering journal
Feb 06 15:49:59 localhost systemd[1]: Condition check resulted in /dev/disk/by-partlabel/system being skipped.
Feb 06 15:49:59 localhost systemd[1]: Condition check resulted in /dev/disk/by-id/mmc-G1M15N_0x182776aa-part1 being skipped.
Feb 06 15:49:59 localhost systemd[1]: Condition check resulted in /dev/disk/by-partuuid/d78c2ee2-d4f8-43f3-a818-02e1398a35b5 being skipped.
Feb 06 15:49:59 localhost systemd-fsck[440]: lv_rtvo: clean, 11/65536 files, 12955/262144 blocks
Feb 06 15:49:59 localhost systemd[1]: Created slice Slice /system/lvm2-pvscan.
Feb 06 15:49:59 localhost systemd[1]: Starting LVM event activation on device 179:1...
Feb 06 15:49:59 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_rtvo.
Feb 06 15:49:59 localhost systemd[1]: Mounting /var/opt/siemens/automation/WinCCUnified/Projects...
Feb 06 15:49:59 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 15:49:59 localhost kernel: EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 15:49:59 localhost systemd[1]: Mounted /var/opt/siemens/automation/WinCCUnified/Projects.
Feb 06 15:49:59 localhost systemd[1]: Reached target Local File Systems.
Feb 06 15:49:59 localhost systemd[1]: Starting Tell Plymouth To Write Out Runtime Data...
Feb 06 15:49:59 localhost systemd[1]: Set Up Additional Binary Formats was skipped because no trigger condition checks were met.
Feb 06 15:49:59 localhost systemd[1]: Starting Create Volatile Files and Directories...
Feb 06 15:49:59 localhost systemd[1]: Finished Tell Plymouth To Write Out Runtime Data.
Feb 06 15:49:59 localhost systemd[1]: Received SIGRTMIN+20 from PID 248 (plymouthd).
Feb 06 15:49:59 localhost lvm[442]:   pvscan[442] PV /dev/mmcblk2p1 online, VG vg_sys is complete.
Feb 06 15:49:59 localhost lvm[442]:   pvscan[442] VG vg_sys skip autoactivation.
Feb 06 15:49:59 localhost systemd[1]: Finished Create Volatile Files and Directories.
Feb 06 15:49:59 localhost systemd[1]: Starting Set console font and keymap...
Feb 06 15:49:59 localhost systemd[1]: Started Entropy Daemon based on the HAVEGE algorithm.
Feb 06 15:49:59 localhost systemd[1]: Starting Record System Boot/Shutdown in UTMP...
Feb 06 15:49:59 localhost systemd[1]: Finished LVM event activation on device 179:1.
Feb 06 15:49:59 localhost systemd[1]: Finished Set console font and keymap.
Feb 06 15:49:59 localhost systemd[1]: Finished Record System Boot/Shutdown in UTMP.
Feb 06 15:49:59 localhost systemd[1]: Reached target System Initialization.
Feb 06 15:49:59 localhost systemd[1]: Started CUPS Scheduler.
Feb 06 15:49:59 localhost systemd[1]: Started Trigger anacron every hour.
Feb 06 15:49:59 localhost systemd[1]: Started Daily apt download activities.
Feb 06 15:49:59 localhost systemd[1]: Started Daily apt upgrade and clean activities.
Feb 06 15:49:59 localhost systemd[1]: Started Periodic ext4 Online Metadata Check for All Filesystems.
Feb 06 15:49:59 localhost systemd[1]: Started Run ent periodically and on boot.
Feb 06 15:49:59 localhost systemd[1]: Started Discard unused blocks once a week.
Feb 06 15:49:59 localhost systemd[1]: Started Daily rotation of log files.
Feb 06 15:49:59 localhost systemd[1]: Started Daily Cleanup of Temporary Directories.
Feb 06 15:49:59 localhost systemd[1]: Reached target Path Units.
Feb 06 15:49:59 localhost systemd[1]: Reached target Timer Units.
Feb 06 15:49:59 localhost systemd[1]: Listening on CUPS Scheduler.
Feb 06 15:49:59 localhost systemd[1]: Listening on D-Bus System Message Bus Socket.
Feb 06 15:49:59 localhost systemd[1]: Starting Docker Socket for the API...
Feb 06 15:49:59 localhost systemd[1]: TPM2 PCR Barrier (Initialization) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 15:49:59 localhost systemd[1]: Listening on Docker Socket for the API.
Feb 06 15:49:59 localhost systemd[1]: Reached target Socket Units.
Feb 06 15:49:59 localhost systemd[1]: Reached target Basic System.
Feb 06 15:49:59 localhost systemd[1]: System is tainted: cgroupsv1
Feb 06 15:49:59 localhost systemd[1]: Started Run anacron jobs.
Feb 06 15:49:59 localhost anacron[461]: Anacron 2.3 started on 2023-02-06
Feb 06 15:49:59 localhost systemd[1]: Started Regular background program processing daemon.
Feb 06 15:49:59 localhost anacron[461]: Normal exit (0 jobs run)
Feb 06 15:49:59 localhost systemd[1]: Started D-Bus System Message Bus.
Feb 06 15:49:59 localhost cron[462]: (CRON) INFO (pidfile fd = 3)
Feb 06 15:49:59 localhost systemd[1]: Starting Network Manager...
Feb 06 15:49:59 localhost systemd[1]: Starting Remove Stale Online ext4 Metadata Check Snapshots...
Feb 06 15:49:59 localhost systemd[1]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 15:49:59 localhost systemd[1]: Started Early OOM Daemon.
Feb 06 15:49:59 localhost cron[462]: (CRON) INFO (Running @reboot jobs)
Feb 06 15:49:59 localhost systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 15:49:59 localhost systemd[1]: getty on tty2-tty6 if dbus and logind are not available was skipped because of an unmet condition check (ConditionPathExists=!/usr/bin/dbus-daemon).
Feb 06 15:49:59 localhost kernel: random: dbus-daemon: uninitialized urandom read (12 bytes read)
Feb 06 15:49:59 localhost systemd[1]: Starting Initialize hardware monitoring sensors...
Feb 06 15:49:59 localhost kernel: random: dd: uninitialized urandom read (1048576 bytes read)
Feb 06 15:49:59 localhost systemd[1]: Started LTTng session daemon.
Feb 06 15:49:59 localhost systemd[1]: Starting User Login Management...
Feb 06 15:49:59 localhost systemd[1]: TPM2 PCR Barrier (User) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 15:49:59 localhost sensors[470]: No sensors found!
Feb 06 15:49:59 localhost sensors[470]: Make sure you loaded all the kernel drivers you need.
Feb 06 15:49:59 localhost sensors[470]: Try sensors-detect to find out which these are.
Feb 06 15:49:59 localhost systemd[1]: Starting Disk Manager...
Feb 06 15:49:59 localhost systemd[1]: Starting USBGuard D-Bus Service...
Feb 06 15:49:59 localhost systemd[1]: Starting USBGuard daemon...
Feb 06 15:49:59 localhost systemd[1]: Starting WPA supplicant...
Feb 06 15:49:59 localhost systemd[1]: anacron.service: Deactivated successfully.
Feb 06 15:49:59 localhost sensors[477]: No sensors found!
Feb 06 15:49:59 localhost sensors[477]: Make sure you loaded all the kernel drivers you need.
Feb 06 15:49:59 localhost sensors[477]: Try sensors-detect to find out which these are.
Feb 06 15:49:59 localhost systemd[1]: Finished Initialize hardware monitoring sensors.
Feb 06 15:49:59 localhost sh[469]: Entropy = 7.999806 bits per byte.
Feb 06 15:49:59 localhost sh[469]: Optimum compression would reduce the size
Feb 06 15:49:59 localhost sh[469]: of this 1048576 byte file by 0 percent.
Feb 06 15:49:59 localhost sh[469]: Chi square distribution for 1048576 samples is 282.46, and randomly
Feb 06 15:49:59 localhost sh[469]: would exceed this value 11.43 percent of the times.
Feb 06 15:49:59 localhost sh[469]: Arithmetic mean value of data bytes is 127.6103 (127.5 = random).
Feb 06 15:49:59 localhost sh[469]: Monte Carlo value for Pi is 3.143475126 (error 0.06 percent).
Feb 06 15:49:59 localhost sh[469]: Serial correlation coefficient is 0.000699 (totally uncorrelated = 0.0).
Feb 06 15:49:59 localhost systemd[1]: ent.service: Deactivated successfully.
Feb 06 15:49:59 localhost systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 15:49:59 localhost wpa_supplicant[476]: Successfully initialized wpa_supplicant
Feb 06 15:49:59 localhost systemd[1]: Created slice Slice /system/systemd-backlight.
Feb 06 15:49:59 localhost udisksd[473]: udisks daemon version 2.9.2 starting
Feb 06 15:49:59 localhost systemd[1]: Starting Load/Save Screen Backlight Brightness of backlight:backlight...
Feb 06 15:49:59 localhost systemd[1]: Started WPA supplicant.
Feb 06 15:50:00 localhost systemd[1]: Finished Load/Save Screen Backlight Brightness of backlight:backlight.
Feb 06 15:50:00 localhost udisksd[473]: failed to load module crypto: libbd_crypto.so.2: cannot open shared object file: No such file or directory
Feb 06 15:50:00 localhost udisksd[473]: failed to load module mdraid: libbd_mdraid.so.2: cannot open shared object file: No such file or directory
Feb 06 15:50:00 localhost udisksd[473]: Failed to load the 'mdraid' libblockdev plugin
Feb 06 15:50:00 localhost udisksd[473]: Failed to load the 'crypto' libblockdev plugin
Feb 06 15:50:00 localhost kernel: LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
Feb 06 15:50:00 localhost kernel: caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
Feb 06 15:50:00 localhost kernel: caam 30900000.crypto: job rings = 3, qi = 0
Feb 06 15:50:00 localhost haveged[454]: haveged: command socket is listening at fd 3
Feb 06 15:50:00 localhost kernel: caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
Feb 06 15:50:00 localhost NetworkManager[464]: <info>  [1675698600.3288] NetworkManager (version 1.30.6) is starting... (for the first time)
Feb 06 15:50:00 localhost NetworkManager[464]: <info>  [1675698600.3291] Read config: /etc/NetworkManager/NetworkManager.conf (lib: no-mac-addr-change.conf)
Feb 06 15:50:00 localhost systemd[1]: Started Network Manager.
Feb 06 15:50:00 localhost NetworkManager[464]: <info>  [1675698600.3402] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
Feb 06 15:50:00 localhost systemd[1]: Reached target Network.
Feb 06 15:50:00 localhost systemd[1]: Starting Network Manager Wait Online...
Feb 06 15:50:00 localhost systemd[1]: Starting Crossbar.io service...
Feb 06 15:50:00 localhost systemd[1]: Starting containerd container runtime...
Feb 06 15:50:00 localhost systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 06 15:50:00 localhost systemd[1]: Starting Simple Network Management Protocol (SNMP) Daemon....
Feb 06 15:50:00 localhost kernel: random: nm-online: uninitialized urandom read (48 bytes read)
Feb 06 15:50:00 localhost systemd[1]: Starting OpenBSD Secure Shell server...
Feb 06 15:50:00 localhost systemd[1]: Starting Permit User Sessions...
Feb 06 15:50:00 localhost systemd[1]: Started Simple Network Management Protocol (SNMP) Daemon..
Feb 06 15:50:00 localhost NetworkManager[464]: <info>  [1675698600.4492] manager[0xaaaada5c9040]: monitoring kernel firmware directory '/lib/firmware'.
Feb 06 15:50:00 localhost NetworkManager[464]: <info>  [1675698600.4495] monitoring ifupdown state file '/run/network/ifstate'.
Feb 06 15:50:00 localhost dbus-daemon[463]: [system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.3' (uid=0 pid=464 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 15:50:00 localhost systemd[1]: Starting Hostname Service...
Feb 06 15:50:00 localhost earlyoom[466]: earlyoom v1.6.2
Feb 06 15:50:00 localhost earlyoom[466]: mem total: 1980 MiB, swap total:    0 MiB
Feb 06 15:50:00 localhost earlyoom[466]: sending SIGTERM when mem <= 20.00% and swap <= 10.00%,
Feb 06 15:50:00 localhost earlyoom[466]:         SIGKILL when mem <= 10.00% and swap <=  5.00%
Feb 06 15:50:00 localhost systemd[1]: e2scrub_reap.service: Deactivated successfully.
Feb 06 15:50:00 localhost systemd[1]: Finished Remove Stale Online ext4 Metadata Check Snapshots.
Feb 06 15:50:00 localhost earlyoom[466]: mem avail:  1730 of  1980 MiB (87.40%), swap free:    0 of    0 MiB ( 0.00%)
Feb 06 15:50:00 localhost systemd[1]: Finished Permit User Sessions.
Feb 06 15:50:00 localhost systemd[1]: Starting Hold until boot process finishes up...
Feb 06 15:50:00 localhost systemd[1]: Starting Terminate Plymouth Boot Screen...
Feb 06 15:50:00 localhost systemd[1]: Started Weston Wayland Compositor (on tty7).
Feb 06 15:50:00 localhost systemd[1]: Received SIGRTMIN+21 from PID 248 (plymouthd).
Feb 06 15:50:00 localhost systemd[1]: Finished Terminate Plymouth Boot Screen.
Feb 06 15:50:00 localhost systemd[1]: Finished Hold until boot process finishes up.
Feb 06 15:50:00 localhost systemd[1]: Started Getty on tty1.
Feb 06 15:50:00 localhost systemd[1]: Started Serial Getty on ttymxc1.
Feb 06 15:50:00 localhost systemd[1]: Reached target Login Prompts.
Feb 06 15:50:00 localhost kernel: random: crng init done
Feb 06 15:50:00 localhost kernel: random: 5 urandom warning(s) missed due to ratelimiting
Feb 06 15:50:00 localhost systemd[524]: pam_unix(login:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 15:50:00 localhost dbus-daemon[463]: [system] Activating via systemd: service name='org.freedesktop.login1' unit='dbus-org.freedesktop.login1.service' requested by ':1.5' (uid=0 pid=524 comm="(n-launch) " label="kernel")
Feb 06 15:50:00 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 15:50:00 localhost systemd[1]: Finished Load/Save Random Seed.
Feb 06 15:50:00 localhost systemd[1]: First Boot Complete was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 15:50:00 localhost systemd[1]: Commit a transient machine-id on disk was skipped because of an unmet condition check (ConditionPathIsMountPoint=/etc/machine-id).
Feb 06 15:50:00 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 15:50:00 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 15:50:00 localhost systemd[1]: Started USBGuard D-Bus Service.
Feb 06 15:50:00 localhost dbus-daemon[463]: [system] Activating via systemd: service name='org.freedesktop.PolicyKit1' unit='polkit.service' requested by ':1.2' (uid=0 pid=473 comm="/usr/libexec/udisks2/udisksd " label="kernel")
Feb 06 15:50:00 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 15:50:00 localhost systemd[1]: Starting Authorization Manager...
Feb 06 15:50:00 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 15:50:01 localhost sshd[537]: Server listening on 0.0.0.0 port 22.
Feb 06 15:50:01 localhost sshd[537]: Server listening on :: port 22.
Feb 06 15:50:01 localhost systemd[1]: Started OpenBSD Secure Shell server.
Feb 06 15:50:01 localhost polkitd[535]: started daemon version 0.105 using authority implementation `local' version `0.105'
Feb 06 15:50:01 localhost dbus-daemon[463]: [system] Successfully activated service 'org.freedesktop.PolicyKit1'
Feb 06 15:50:01 localhost systemd[1]: Started Authorization Manager.
Feb 06 15:50:01 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 15:50:01 localhost systemd[1]: Started USBGuard daemon.
Feb 06 15:50:01 localhost usbguard-daemon[548]: uid=0 pid=475 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' type='Device.Present'
Feb 06 15:50:01 localhost systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 06 15:50:01 localhost usbguard-daemon[548]: uid=0 pid=475 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 15:50:01 localhost usbguard-daemon[548]: uid=0 pid=475 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' type='Device.Present'
Feb 06 15:50:01 localhost usbguard-daemon[548]: uid=0 pid=475 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 15:50:01 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.233898250Z" level=info msg="starting containerd" revision="1.4.13~ds1-1~deb11u3" version="1.4.13~ds1"
Feb 06 15:50:01 localhost systemd-logind[472]: New seat seat0.
Feb 06 15:50:01 localhost dbus-daemon[463]: [system] Successfully activated service 'org.freedesktop.login1'
Feb 06 15:50:01 localhost systemd[1]: Started User Login Management.
Feb 06 15:50:01 localhost systemd[1]: Created slice User Slice of UID 500.
Feb 06 15:50:01 localhost systemd[1]: Starting User Runtime Directory /run/user/500...
Feb 06 15:50:01 localhost systemd-logind[472]: New session 1 of user industrial.
Feb 06 15:50:01 localhost systemd[1]: Finished User Runtime Directory /run/user/500.
Feb 06 15:50:01 localhost systemd[1]: Starting User Manager for UID 500...
Feb 06 15:50:01 localhost systemd[563]: pam_unix(systemd-user:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 15:50:01 localhost systemd[1]: Started Disk Manager.
Feb 06 15:50:01 localhost dbus-daemon[463]: [system] Successfully activated service 'org.freedesktop.hostname1'
Feb 06 15:50:01 localhost systemd[1]: Started Hostname Service.
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.6680] hostname: hostname: using hostnamed
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.6701] dns-mgr[0xaaaada5bf170]: init: dns=default,systemd-resolved rc-manager=symlink (auto)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.6714] manager[0xaaaada5c9040]: rfkill: Wi-Fi hardware radio set enabled
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.6716] manager[0xaaaada5c9040]: rfkill: WWAN hardware radio set enabled
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.6955] Loaded device plugin: NMAtmManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-adsl.so)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7595] Loaded device plugin: NMBluezManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-bluetooth.so)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7624] Loaded device plugin: NMWwanFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wwan.so)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7823] Loaded device plugin: NMWifiFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wifi.so)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7961] Loaded device plugin: NMTeamFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-team.so)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7972] manager: rfkill: Wi-Fi enabled by radio killswitch; enabled by state file
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7976] manager: rfkill: WWAN enabled by radio killswitch; enabled by state file
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7980] manager: Networking is enabled by state file
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.7985] dhcp-init: Using DHCP client 'internal'
Feb 06 15:50:01 localhost dbus-daemon[463]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.3' (uid=0 pid=464 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.803138625Z" level=info msg="loading plugin \"io.containerd.content.v1.content\"..." type=io.containerd.content.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.807514125Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.aufs\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost udisksd[473]: Acquired the name org.freedesktop.UDisks2 on the system message bus
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8055] settings: Loaded settings plugin: ifupdown ("/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-settings-plugin-ifupdown.so")
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8057] settings: Loaded settings plugin: keyfile (internal)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8067] ifupdown: management mode: unmanaged
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8068] ifupdown:       interface-parser: parsing file /etc/network/interfaces
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8070] ifupdown:       interface-parser: finished parsing file /etc/network/interfaces
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8157] device (lo): carrier: link connected
Feb 06 15:50:01 localhost systemd[1]: Starting Network Manager Script Dispatcher Service...
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8171] manager: (lo): new Generic device (/org/freedesktop/NetworkManager/Devices/1)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8228] manager: (end0): new Ethernet device (/org/freedesktop/NetworkManager/Devices/2)
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8441] settings: (end0): created default wired connection 'Wired connection 1'
Feb 06 15:50:01 localhost NetworkManager[464]: <info>  [1675698601.8623] device (end0): state change: unmanaged -> unavailable (reason 'managed', sys-iface-state: 'external')
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.863891250Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.aufs\"..." error="aufs is not supported (modprobe aufs failed: exit status 1 \"modprobe: FATAL: Module aufs not found in directory /lib/modules/5.10.158-cip22+ind1\\n\"): skip plugin" type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.864106875Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.865440125Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.btrfs (overlay) must be a btrfs filesystem to be used with the btrfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.865666500Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.devmapper\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.865881875Z" level=warning msg="failed to load plugin io.containerd.snapshotter.v1.devmapper" error="devmapper not configured"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.865959750Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.native\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.882534750Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.overlayfs\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.888271625Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.zfs\"..." type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.890186000Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.zfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.zfs must be a zfs filesystem to be used with the zfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.890426250Z" level=info msg="loading plugin \"io.containerd.metadata.v1.bolt\"..." type=io.containerd.metadata.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.890750250Z" level=warning msg="could not use snapshotter devmapper in metadata plugin" error="devmapper not configured"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.890905625Z" level=info msg="metadata content store policy set" policy=shared
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.897202250Z" level=info msg="loading plugin \"io.containerd.differ.v1.walking\"..." type=io.containerd.differ.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.897641000Z" level=info msg="loading plugin \"io.containerd.gc.v1.scheduler\"..." type=io.containerd.gc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.897899875Z" level=info msg="loading plugin \"io.containerd.service.v1.introspection-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898328125Z" level=info msg="loading plugin \"io.containerd.service.v1.containers-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898450125Z" level=info msg="loading plugin \"io.containerd.service.v1.content-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898519750Z" level=info msg="loading plugin \"io.containerd.service.v1.diff-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898778625Z" level=info msg="loading plugin \"io.containerd.service.v1.images-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898869250Z" level=info msg="loading plugin \"io.containerd.service.v1.leases-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.898980000Z" level=info msg="loading plugin \"io.containerd.service.v1.namespaces-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.899052875Z" level=info msg="loading plugin \"io.containerd.service.v1.snapshots-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.899117750Z" level=info msg="loading plugin \"io.containerd.runtime.v1.linux\"..." type=io.containerd.runtime.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.899548375Z" level=info msg="loading plugin \"io.containerd.runtime.v2.task\"..." type=io.containerd.runtime.v2
Feb 06 15:50:01 localhost kernel: Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.902809500Z" level=info msg="loading plugin \"io.containerd.monitor.v1.cgroups\"..." type=io.containerd.monitor.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.917605125Z" level=info msg="loading plugin \"io.containerd.service.v1.tasks-service\"..." type=io.containerd.service.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.917790250Z" level=info msg="loading plugin \"io.containerd.internal.v1.restart\"..." type=io.containerd.internal.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.917998125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.containers\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918074500Z" level=info msg="loading plugin \"io.containerd.grpc.v1.content\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918138375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.diff\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918197250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.events\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918278250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.healthcheck\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918345500Z" level=info msg="loading plugin \"io.containerd.grpc.v1.images\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918406250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.leases\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918465000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.namespaces\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.918524875Z" level=info msg="loading plugin \"io.containerd.internal.v1.opt\"..." type=io.containerd.internal.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.923218875Z" level=info msg="loading plugin \"io.containerd.grpc.v1.snapshots\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.923452250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.tasks\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.923545250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.version\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.923621000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.cri\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.924270500Z" level=info msg="Start cri plugin with config {PluginConfig:{ContainerdConfig:{Snapshotter:overlayfs DefaultRuntimeName:runc DefaultRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} UntrustedWorkloadRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} Runtimes:map[runc:{Type:io.containerd.runc.v2 Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:0x400046aea0 PrivilegedWithoutHostDevices:false BaseRuntimeSpec:}] NoPivot:false DisableSnapshotAnnotations:true DiscardUnpackedLayers:false} CniConfig:{NetworkPluginBinDir:/usr/lib/cni NetworkPluginConfDir:/etc/cni/net.d NetworkPluginMaxConfNum:1 NetworkPluginConfTemplate:} Registry:{Mirrors:map[docker.io:{Endpoints:[https://registry-1.docker.io]}] Configs:map[] Auths:map[] Headers:map[]} ImageDecryption:{KeyModel:} DisableTCPService:true StreamServerAddress:127.0.0.1 StreamServerPort:0 StreamIdleTimeout:4h0m0s EnableSelinux:false SelinuxCategoryRange:1024 SandboxImage:k8s.gcr.io/pause:3.2 StatsCollectPeriod:10 SystemdCgroup:false EnableTLSStreaming:false X509KeyPairStreaming:{TLSCertFile: TLSKeyFile:} MaxContainerLogLineSize:16384 DisableCgroup:false DisableApparmor:false RestrictOOMScoreAdj:false MaxConcurrentDownloads:3 DisableProcMount:false UnsetSeccompProfile: TolerateMissingHugetlbController:true DisableHugetlbController:true IgnoreImageDefinedVolumes:false} ContainerdRootDir:/var/lib/containerd ContainerdEndpoint:/run/containerd/containerd.sock RootDir:/var/lib/containerd/io.containerd.grpc.v1.cri StateDir:/run/containerd/io.containerd.grpc.v1.cri}"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.924634375Z" level=info msg="Connect containerd service"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.925013000Z" level=info msg="Get image filesystem path \"/var/lib/containerd/io.containerd.snapshotter.v1.overlayfs\""
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.935935250Z" level=error msg="failed to load cni during init, please check CRI plugin status before setting up network for pods" error="cni config load failed: no network config found in /etc/cni/net.d: cni plugin not initialized: failed to load cni config"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.936287000Z" level=info msg="Start subscribing containerd event"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.936519875Z" level=info msg="Start recovering state"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.936914000Z" level=info msg="Start event monitor"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.937007500Z" level=info msg="Start snapshots syncer"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.937049750Z" level=info msg="Start cni network conf syncer"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.937098000Z" level=info msg="Start streaming server"
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.938171250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.introspection\"..." type=io.containerd.grpc.v1
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.939498125Z" level=info msg=serving... address=/run/containerd/containerd.sock.ttrpc
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.939723625Z" level=info msg=serving... address=/run/containerd/containerd.sock
Feb 06 15:50:01 localhost systemd[1]: Started containerd container runtime.
Feb 06 15:50:01 localhost dbus-daemon[463]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Feb 06 15:50:01 localhost systemd[1]: Started Network Manager Script Dispatcher Service.
Feb 06 15:50:01 localhost containerd[499]: time="2023-02-06T15:50:01.961602875Z" level=info msg="containerd successfully booted in 0.732520s"
Feb 06 15:50:01 localhost NetworkManager[464]: <warn>  [1675698601.9640] Error: failed to open /run/network/ifstate
Feb 06 15:50:02 localhost systemd[1]: Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
Feb 06 15:50:02 localhost haveged[454]: haveged: ver: 1.9.14; arch: generic; vend: ; build: (gcc 10.2.1 CTV); collect: 128K
Feb 06 15:50:02 localhost haveged[454]: haveged: cpu: (VC); data: 16K (D V); inst: 16K (D V); idx: 11/40; sz: 15456/64452
Feb 06 15:50:02 localhost haveged[454]: haveged: tot tests(BA8): A:1/1 B:1/1 continuous tests(B):  last entropy estimate 7.99791
Feb 06 15:50:02 localhost haveged[454]: haveged: fills: 0, generated: 0
Feb 06 15:50:02 localhost systemd[563]: Queued start job for default target Main User Target.
Feb 06 15:50:02 localhost systemd[563]: Created slice User Application Slice.
Feb 06 15:50:02 localhost systemd[563]: Reached target Paths.
Feb 06 15:50:02 localhost systemd[563]: Reached target Timers.
Feb 06 15:50:02 localhost systemd[563]: Starting D-Bus User Message Bus Socket...
Feb 06 15:50:02 localhost systemd[563]: Listening on GnuPG network certificate management daemon.
Feb 06 15:50:02 localhost systemd[563]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 15:50:02 localhost systemd[563]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 15:50:02 localhost systemd[563]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 15:50:02 localhost systemd[563]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 15:50:02 localhost systemd[563]: Listening on D-Bus User Message Bus Socket.
Feb 06 15:50:02 localhost systemd[563]: Reached target Sockets.
Feb 06 15:50:02 localhost systemd[563]: Reached target Basic System.
Feb 06 15:50:02 localhost systemd[563]: Reached target Main User Target.
Feb 06 15:50:02 localhost systemd[563]: Startup finished in 750ms.
Feb 06 15:50:02 localhost systemd[1]: Started User Manager for UID 500.
Feb 06 15:50:02 localhost systemd[1]: Started Session 1 of User industrial.
Feb 06 15:50:02 localhost kernel: caam_jr 30901000.jr: failed to flush job ring 0
Feb 06 15:50:02 localhost kernel: caam_jr: probe of 30901000.jr failed with error -5
Feb 06 15:50:02 localhost networking[505]: warning: vrf: cache v4: cmd '/bin/ip rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 15:50:02 localhost networking[505]: Dump terminated
Feb 06 15:50:02 localhost networking[505]: )
Feb 06 15:50:02 localhost networking[505]: warning: vrf: cache v6: cmd '/bin/ip -6 rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 15:50:02 localhost networking[505]: Dump terminated
Feb 06 15:50:02 localhost networking[505]: )
Feb 06 15:50:02 localhost kernel: caam algorithms registered in /proc/crypto
Feb 06 15:50:02 localhost kernel: caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
Feb 06 15:50:02 localhost kernel: caam 30900000.crypto: registering rng-caam
Feb 06 15:50:02 localhost kernel: Device caam-keygen registered
Feb 06 15:50:02 localhost kernel: fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
Feb 06 15:50:02 localhost weston-launch[705]: Internal warning: debug scope 'drm-backend' has not been destroyed.
Feb 06 15:50:02 localhost weston-launch[524]: failed to restore keyboard mode: Bad file descriptor
Feb 06 15:50:02 localhost weston-launch[524]: failed to set KD_TEXT mode on tty: Bad file descriptor
Feb 06 15:50:02 localhost weston-launch[524]: could not reset vt handling
Feb 06 15:50:02 localhost systemd[1]: weston@industrial.service: Main process exited, code=exited, status=1/FAILURE
Feb 06 15:50:02 localhost systemd[1]: weston@industrial.service: Failed with result 'exit-code'.
Feb 06 15:50:02 localhost systemd[1]: session-1.scope: Deactivated successfully.
Feb 06 15:50:02 localhost systemd-logind[472]: Session 1 logged out. Waiting for processes to exit.
Feb 06 15:50:02 localhost systemd-logind[472]: Removed session 1.
Feb 06 15:50:03 localhost systemd[1]: Finished Network initialization.
Feb 06 15:50:05 localhost crossbar[491]: Directory /web already exists - SKIPPING
Feb 06 15:50:05 localhost crossbar[491]: Directory /.crossbar already exists - SKIPPING
Feb 06 15:50:05 localhost crossbar[491]: File /README.md already exists - SKIPPING
Feb 06 15:50:05 localhost crossbar[491]: File /web/README.md already exists - SKIPPING
Feb 06 15:50:05 localhost crossbar[491]: File /.crossbar/config.json already exists - SKIPPING
Feb 06 15:50:06 localhost kernel: fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
Feb 06 15:50:06 localhost kernel: IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0045] device (end0): carrier: link connected
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0062] device (end0): state change: unavailable -> disconnected (reason 'carrier-changed', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0118] policy: auto-activating connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0147] device (end0): Activation: starting connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0158] device (end0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0179] manager: NetworkManager state is now CONNECTING
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0195] device (end0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0220] device (end0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0245] dhcp4 (end0): activation: beginning transaction (timeout in 45 seconds)
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0826] dhcp4 (end0): state changed unknown -> bound, address=134.86.254.71
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0873] device (end0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.0990] device (end0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1001] device (end0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1023] manager: NetworkManager state is now CONNECTED_LOCAL
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1070] manager: NetworkManager state is now CONNECTED_SITE
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1075] policy: set 'Wired connection 1' (end0) as default for IPv4 routing and DNS
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1241] device (end0): Activation: successful, device activated.
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1273] manager: NetworkManager state is now CONNECTED_GLOBAL
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1298] manager: startup complete
Feb 06 15:50:06 localhost NetworkManager[464]: <info>  [1675698606.1396] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 15:50:06 localhost.localdomain systemd-hostnamed[504]: Hostname set to <localhost.localdomain> (transient)
Feb 06 15:50:06 localhost.localdomain systemd[1]: Finished Network Manager Wait Online.
Feb 06 15:50:06 localhost.localdomain systemd[1]: Reached target Network is Online.
Feb 06 15:50:06 localhost.localdomain systemd[1]: Starting Docker Application Container Engine...
Feb 06 15:50:06 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 15:50:06 localhost.localdomain crossbar[491]: Initializing node in directory '/'
Feb 06 15:50:06 localhost.localdomain crossbar[491]: Using template from '/usr/lib/python3/dist-packages/crossbar/node/templates/default'
Feb 06 15:50:06 localhost.localdomain crossbar[491]: Node key files exist and are valid. Node public key is 0x4e11fad1afb274d91bf345271e5583001f0a81c6c87190238e95b19111494c5a
Feb 06 15:50:06 localhost.localdomain crossbar[491]: Node key loaded from /.crossbar/key.priv
Feb 06 15:50:06 localhost.localdomain crossbar[491]: Application template initialized
Feb 06 15:50:06 localhost.localdomain crossbar[491]: To start your node, run 'crossbar start --cbdir /.crossbar'
Feb 06 15:50:06 localhost.localdomain ntpd[729]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 15:50:06 localhost.localdomain ntpd[729]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 15:50:06 localhost.localdomain ntpd[729]: ----------------------------------------------------
Feb 06 15:50:06 localhost.localdomain ntpd[729]: ntp-4 is maintained by Network Time Foundation,
Feb 06 15:50:06 localhost.localdomain ntpd[729]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 15:50:06 localhost.localdomain ntpd[729]: corporation.  Support and training for ntp-4 are
Feb 06 15:50:06 localhost.localdomain ntpd[729]: available at https://www.nwtime.org/support
Feb 06 15:50:06 localhost.localdomain ntpd[729]: ----------------------------------------------------
Feb 06 15:50:06 localhost.localdomain ntpd[746]: proto: precision = 0.125 usec (-23)
Feb 06 15:50:06 localhost.localdomain ntpd[746]: basedate set to 2020-09-11
Feb 06 15:50:06 localhost.localdomain ntpd[746]: gps base set to 2020-09-13 (week 2123)
Feb 06 15:50:06 localhost.localdomain ntpd[746]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 15:50:06 localhost.localdomain ntpd[746]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listen normally on 4 lo [::1]:123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 15:50:06 localhost.localdomain ntpd[746]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 15:50:06 localhost.localdomain ntpd[746]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 15:50:06 localhost.localdomain ntpd[746]: Listening on routing socket on fd #21 for interface updates
Feb 06 15:50:06 localhost.localdomain ntpd[746]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:06 localhost.localdomain ntpd[746]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:06 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 15:50:06 localhost.localdomain ntpd[746]: ntpd exiting on signal 15 (Terminated)
Feb 06 15:50:06 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 15:50:06 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 15:50:06 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 15:50:06 localhost.localdomain systemd[1]: Started Crossbar.io service.
Feb 06 15:50:06 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 15:50:06 localhost.localdomain ntpd[754]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 15:50:06 localhost.localdomain ntpd[754]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -c /run/ntp.conf.dhcp -u 102:108
Feb 06 15:50:06 localhost.localdomain ntpd[754]: ----------------------------------------------------
Feb 06 15:50:06 localhost.localdomain ntpd[754]: ntp-4 is maintained by Network Time Foundation,
Feb 06 15:50:06 localhost.localdomain ntpd[754]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 15:50:06 localhost.localdomain ntpd[754]: corporation.  Support and training for ntp-4 are
Feb 06 15:50:06 localhost.localdomain ntpd[754]: available at https://www.nwtime.org/support
Feb 06 15:50:06 localhost.localdomain ntpd[754]: ----------------------------------------------------
Feb 06 15:50:06 localhost.localdomain ntpd[760]: proto: precision = 0.125 usec (-23)
Feb 06 15:50:06 localhost.localdomain ntpd[760]: basedate set to 2020-09-11
Feb 06 15:50:06 localhost.localdomain ntpd[760]: gps base set to 2020-09-13 (week 2123)
Feb 06 15:50:06 localhost.localdomain ntpd[760]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 15:50:06 localhost.localdomain ntpd[760]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listen normally on 4 lo [::1]:123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 15:50:06 localhost.localdomain ntpd[760]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 15:50:06 localhost.localdomain ntpd[760]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 15:50:06 localhost.localdomain ntpd[760]: Listening on routing socket on fd #21 for interface updates
Feb 06 15:50:06 localhost.localdomain ntpd[760]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:06 localhost.localdomain ntpd[760]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:06 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.186874550Z" level=info msg="Starting up"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.197244512Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.197389512Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.197529136Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.197588511Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.218356060Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.218494184Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.218607309Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.218668309Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.376056483Z" level=warning msg="Usage of loopback devices is strongly discouraged for production use. Please use `--storage-opt dm.thinpooldev` or use `man dockerd` to refer to dm.thinpooldev section." storage-driver=devicemapper
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.459247679Z" level=warning msg="Base device already exists and has filesystem ext4 on it. User specified filesystem  will be ignored." storage-driver=devicemapper
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.495757920Z" level=info msg="[graphdriver] using prior storage driver: devicemapper"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.495925920Z" level=warning msg="[graphdriver] WARNING: the devicemapper storage-driver is deprecated, and will be removed in a future release"
Feb 06 15:50:07 localhost.localdomain ntpd[760]: bind(24) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 15:50:07 localhost.localdomain ntpd[760]: unable to create socket on end0 (6) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 15:50:07 localhost.localdomain ntpd[760]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.527729554Z" level=warning msg="Your kernel does not support cgroup blkio weight"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.527864553Z" level=warning msg="Your kernel does not support cgroup blkio weight_device"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.527904428Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_bps_device"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.527949928Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_bps_device"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.527984678Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_iops_device"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.528015303Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_iops_device"
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.529348923Z" level=info msg="Loading containers: start."
Feb 06 15:50:07 localhost.localdomain kernel: bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
Feb 06 15:50:07 localhost.localdomain kernel: Bridge firewalling registered
Feb 06 15:50:07 localhost.localdomain NetworkManager[464]: <info>  [1675698607.5732] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 15:50:07 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:07.846388138Z" level=warning msg="Could not load necessary modules for IPSEC rules: protocol not supported"
Feb 06 15:50:07 localhost.localdomain NetworkManager[464]: <info>  [1675698607.8850] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0513] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0629] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0659] device (docker0): Activation: starting connection 'docker0' (a32d6771-3170-4473-a336-5e18bfc09ed1)
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0669] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0684] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0780] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0801] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0888] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0908] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.0971] device (docker0): Activation: successful, device activated.
Feb 06 15:50:08 localhost.localdomain NetworkManager[464]: <info>  [1675698608.1000] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 15:50:08 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:08.225173128Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip can be used to set a preferred IP address"
Feb 06 15:50:08 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 15:50:08 localhost.localdomain ntpd[760]: ntpd exiting on signal 15 (Terminated)
Feb 06 15:50:08 localhost.localdomain ntpd[760]: 134.86.61.33 local addr 134.86.254.71 -> <null>
Feb 06 15:50:08 localhost.localdomain ntpd[760]: 137.202.187.89 local addr 134.86.254.71 -> <null>
Feb 06 15:50:08 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 15:50:08 localhost.localdomain ntpd[908]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 15:50:08 localhost.localdomain ntpd[908]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 15:50:08 localhost.localdomain ntpd[908]: ----------------------------------------------------
Feb 06 15:50:08 localhost.localdomain ntpd[908]: ntp-4 is maintained by Network Time Foundation,
Feb 06 15:50:08 localhost.localdomain ntpd[908]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 15:50:08 localhost.localdomain ntpd[908]: corporation.  Support and training for ntp-4 are
Feb 06 15:50:08 localhost.localdomain ntpd[908]: available at https://www.nwtime.org/support
Feb 06 15:50:08 localhost.localdomain ntpd[908]: ----------------------------------------------------
Feb 06 15:50:08 localhost.localdomain ntpd[923]: proto: precision = 0.125 usec (-23)
Feb 06 15:50:08 localhost.localdomain ntpd[923]: basedate set to 2020-09-11
Feb 06 15:50:08 localhost.localdomain ntpd[923]: gps base set to 2020-09-13 (week 2123)
Feb 06 15:50:08 localhost.localdomain ntpd[923]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 15:50:08 localhost.localdomain ntpd[923]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen normally on 4 lo [::1]:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listen normally on 5 end0 [fe80::7e63:9923:2c77:e358%2]:123
Feb 06 15:50:08 localhost.localdomain ntpd[923]: Listening on routing socket on fd #22 for interface updates
Feb 06 15:50:08 localhost.localdomain ntpd[923]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:08 localhost.localdomain ntpd[923]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 15:50:08 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 15:50:08 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:08.423155154Z" level=info msg="Loading containers: done."
Feb 06 15:50:08 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:08.565356134Z" level=info msg="Docker daemon" commit=363e9a8 graphdriver(s)=devicemapper version=20.10.5+dfsg1
Feb 06 15:50:08 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:08.566405630Z" level=info msg="Daemon has completed initialization"
Feb 06 15:50:08 localhost.localdomain systemd[1]: Started Docker Application Container Engine.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Reached target Multi-User System.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Reached target Graphical Interface.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Reached target MEL OS Boot Complete.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Starting Record Runlevel Change in UTMP...
Feb 06 15:50:08 localhost.localdomain dockerd[726]: time="2023-02-06T15:50:08.677155475Z" level=info msg="API listen on /var/run/docker.sock"
Feb 06 15:50:08 localhost.localdomain systemd[1]: systemd-update-utmp-runlevel.service: Deactivated successfully.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Finished Record Runlevel Change in UTMP.
Feb 06 15:50:08 localhost.localdomain systemd[1]: Startup finished in 4.128s (kernel) + 11.490s (userspace) = 15.619s.
Feb 06 15:50:10 localhost.localdomain ntpd[923]: Soliciting pool server 207.192.69.118
Feb 06 15:50:11 localhost.localdomain ntpd[923]: Soliciting pool server 195.186.1.100
Feb 06 15:50:11 localhost.localdomain ntpd[923]: Soliciting pool server 5.161.111.190
Feb 06 15:50:11 localhost.localdomain ntpd[923]: Soliciting pool server 195.171.43.10
Feb 06 15:50:12 localhost.localdomain ntpd[923]: Soliciting pool server 44.4.53.2
Feb 06 15:50:12 localhost.localdomain ntpd[923]: Soliciting pool server 216.240.36.24
Feb 06 15:50:12 localhost.localdomain ntpd[923]: Soliciting pool server 95.215.175.2
Feb 06 15:50:13 localhost.localdomain systemd[1]: Stopping User Manager for UID 500...
Feb 06 15:50:13 localhost.localdomain systemd[563]: Activating special unit Exit the Session...
Feb 06 15:50:13 localhost.localdomain systemd[563]: Stopped target Main User Target.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Stopped target Basic System.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Stopped target Paths.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Stopped target Sockets.
Feb 06 15:50:13 localhost.localdomain systemd-journald[360]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.0 (2731 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
Feb 06 15:50:13 localhost.localdomain systemd-journald[360]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Stopped target Timers.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed D-Bus User Message Bus Socket.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed GnuPG network certificate management daemon.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 15:50:13 localhost.localdomain systemd[563]: Closed GnuPG cryptographic agent and passphrase cache.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Removed slice User Application Slice.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Reached target Shutdown.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Finished Exit the Session.
Feb 06 15:50:13 localhost.localdomain systemd[563]: Reached target Exit the Session.
Feb 06 15:50:13 localhost.localdomain systemd[1]: user@500.service: Deactivated successfully.
Feb 06 15:50:13 localhost.localdomain systemd[1]: Stopped User Manager for UID 500.
Feb 06 15:50:13 localhost.localdomain systemd[1]: Stopping User Runtime Directory /run/user/500...
Feb 06 15:50:13 localhost.localdomain systemd[1]: run-user-500.mount: Deactivated successfully.
Feb 06 15:50:13 localhost.localdomain systemd[1]: user-runtime-dir@500.service: Deactivated successfully.
Feb 06 15:50:13 localhost.localdomain systemd[1]: Stopped User Runtime Directory /run/user/500.
Feb 06 15:50:13 localhost.localdomain systemd[1]: Removed slice User Slice of UID 500.
Feb 06 15:50:13 localhost.localdomain ntpd[923]: Soliciting pool server 41.175.49.55
Feb 06 15:50:13 localhost.localdomain ntpd[923]: Soliciting pool server 213.32.246.229
Feb 06 15:50:14 localhost.localdomain ntpd[923]: Soliciting pool server 80.203.110.169
Feb 06 15:50:14 localhost.localdomain ntpd[923]: Soliciting pool server 144.76.0.164
Feb 06 15:50:15 localhost.localdomain ntpd[923]: Soliciting pool server 185.57.191.229
Feb 06 15:50:19 localhost.localdomain systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
Feb 06 15:50:29 localhost.localdomain systemd[1]: systemd-fsckd.service: Deactivated successfully.
Feb 06 15:50:38 localhost.localdomain systemd[1]: systemd-hostnamed.service: Deactivated successfully.
Feb 06 15:50:53 localhost.localdomain systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 15:50:53 localhost.localdomain sh[971]: Entropy = 7.999814 bits per byte.
Feb 06 15:50:53 localhost.localdomain sh[971]: Optimum compression would reduce the size
Feb 06 15:50:53 localhost.localdomain sh[971]: of this 1048576 byte file by 0 percent.
Feb 06 15:50:53 localhost.localdomain sh[971]: Chi square distribution for 1048576 samples is 269.33, and randomly
Feb 06 15:50:53 localhost.localdomain sh[971]: would exceed this value 25.71 percent of the times.
Feb 06 15:50:53 localhost.localdomain sh[971]: Arithmetic mean value of data bytes is 127.4789 (127.5 = random).
Feb 06 15:50:53 localhost.localdomain sh[971]: Monte Carlo value for Pi is 3.146404825 (error 0.15 percent).
Feb 06 15:50:53 localhost.localdomain sh[971]: Serial correlation coefficient is 0.001158 (totally uncorrelated = 0.0).
Feb 06 15:50:53 localhost.localdomain systemd[1]: ent.service: Deactivated successfully.
Feb 06 15:50:53 localhost.localdomain systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 15:52:46 localhost.localdomain sshd[972]: Accepted publickey for root from 134.86.254.7 port 55212 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:52:46 localhost.localdomain sshd[972]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:52:46 localhost.localdomain systemd[1]: Created slice User Slice of UID 0.
Feb 06 15:52:46 localhost.localdomain systemd[1]: Starting User Runtime Directory /run/user/0...
Feb 06 15:52:46 localhost.localdomain systemd-logind[472]: New session 3 of user root.
Feb 06 15:52:46 localhost.localdomain systemd[1]: Finished User Runtime Directory /run/user/0.
Feb 06 15:52:46 localhost.localdomain systemd[1]: Starting User Manager for UID 0...
Feb 06 15:52:46 localhost.localdomain systemd[975]: pam_unix(systemd-user:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:52:46 localhost.localdomain systemd[975]: Queued start job for default target Main User Target.
Feb 06 15:52:46 localhost.localdomain systemd[975]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Created slice User Application Slice.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Reached target Paths.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Reached target Timers.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Starting D-Bus User Message Bus Socket...
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on GnuPG network certificate management daemon.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Listening on D-Bus User Message Bus Socket.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Reached target Sockets.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Reached target Basic System.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Reached target Main User Target.
Feb 06 15:52:46 localhost.localdomain systemd[975]: Startup finished in 484ms.
Feb 06 15:52:46 localhost.localdomain systemd[1]: Started User Manager for UID 0.
Feb 06 15:52:47 localhost.localdomain systemd[1]: Started Session 3 of User root.
Feb 06 15:52:54 localhost.localdomain sshd[972]: Received disconnect from 134.86.254.7 port 55212:11: disconnected by user
Feb 06 15:52:54 localhost.localdomain sshd[972]: Disconnected from user root 134.86.254.7 port 55212
Feb 06 15:52:54 localhost.localdomain sshd[972]: pam_unix(sshd:session): session closed for user root
Feb 06 15:52:54 localhost.localdomain systemd[1]: session-3.scope: Deactivated successfully.
Feb 06 15:52:54 localhost.localdomain systemd-logind[472]: Session 3 logged out. Waiting for processes to exit.
Feb 06 15:52:54 localhost.localdomain systemd-logind[472]: Removed session 3.
Feb 06 15:52:55 localhost.localdomain sshd[1001]: Accepted publickey for root from 134.86.254.7 port 47384 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:52:55 localhost.localdomain sshd[1001]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:52:55 localhost.localdomain systemd-logind[472]: New session 5 of user root.
Feb 06 15:52:55 localhost.localdomain systemd[1]: Started Session 5 of User root.
Feb 06 15:53:55 localhost.localdomain sshd[1001]: Received disconnect from 134.86.254.7 port 47384:11: disconnected by user
Feb 06 15:53:55 localhost.localdomain sshd[1001]: Disconnected from user root 134.86.254.7 port 47384
Feb 06 15:53:55 localhost.localdomain sshd[1001]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:55 localhost.localdomain systemd[1]: session-5.scope: Deactivated successfully.
Feb 06 15:53:55 localhost.localdomain systemd-logind[472]: Session 5 logged out. Waiting for processes to exit.
Feb 06 15:53:55 localhost.localdomain systemd-logind[472]: Removed session 5.
Feb 06 15:53:57 localhost.localdomain sshd[1014]: error: kex_exchange_identification: Connection closed by remote host
Feb 06 15:53:57 localhost.localdomain sshd[1014]: Connection closed by 134.86.254.7 port 36434
Feb 06 15:53:57 localhost.localdomain sshd[1015]: Connection closed by authenticating user root 134.86.254.7 port 36448 [preauth]
Feb 06 15:53:57 localhost.localdomain sshd[1017]: Accepted publickey for root from 134.86.254.7 port 36464 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:57 localhost.localdomain sshd[1017]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: New session 6 of user root.
Feb 06 15:53:57 localhost.localdomain systemd[1]: Started Session 6 of User root.
Feb 06 15:53:57 localhost.localdomain sshd[1017]: Received disconnect from 134.86.254.7 port 36464:11: disconnected by user
Feb 06 15:53:57 localhost.localdomain sshd[1017]: Disconnected from user root 134.86.254.7 port 36464
Feb 06 15:53:57 localhost.localdomain sshd[1017]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:57 localhost.localdomain systemd[1]: session-6.scope: Deactivated successfully.
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: Session 6 logged out. Waiting for processes to exit.
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: Removed session 6.
Feb 06 15:53:57 localhost.localdomain sshd[1028]: Accepted publickey for root from 134.86.254.7 port 36480 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:57 localhost.localdomain sshd[1028]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: New session 7 of user root.
Feb 06 15:53:57 localhost.localdomain systemd[1]: Started Session 7 of User root.
Feb 06 15:53:57 localhost.localdomain sshd[1028]: Received disconnect from 134.86.254.7 port 36480:11: disconnected by user
Feb 06 15:53:57 localhost.localdomain sshd[1028]: Disconnected from user root 134.86.254.7 port 36480
Feb 06 15:53:57 localhost.localdomain sshd[1028]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:57 localhost.localdomain systemd[1]: session-7.scope: Deactivated successfully.
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: Session 7 logged out. Waiting for processes to exit.
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: Removed session 7.
Feb 06 15:53:57 localhost.localdomain sshd[1041]: Accepted publickey for root from 134.86.254.7 port 36496 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:57 localhost.localdomain sshd[1041]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:57 localhost.localdomain systemd-logind[472]: New session 8 of user root.
Feb 06 15:53:57 localhost.localdomain systemd[1]: Started Session 8 of User root.
Feb 06 15:53:58 localhost.localdomain sshd[1041]: Received disconnect from 134.86.254.7 port 36496:11: disconnected by user
Feb 06 15:53:58 localhost.localdomain sshd[1041]: Disconnected from user root 134.86.254.7 port 36496
Feb 06 15:53:58 localhost.localdomain sshd[1041]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:58 localhost.localdomain systemd[1]: session-8.scope: Deactivated successfully.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Session 8 logged out. Waiting for processes to exit.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Removed session 8.
Feb 06 15:53:58 localhost.localdomain sshd[1054]: Accepted publickey for root from 134.86.254.7 port 36508 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:58 localhost.localdomain sshd[1054]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: New session 9 of user root.
Feb 06 15:53:58 localhost.localdomain systemd[1]: Started Session 9 of User root.
Feb 06 15:53:58 localhost.localdomain sshd[1054]: Received disconnect from 134.86.254.7 port 36508:11: disconnected by user
Feb 06 15:53:58 localhost.localdomain sshd[1054]: Disconnected from user root 134.86.254.7 port 36508
Feb 06 15:53:58 localhost.localdomain sshd[1054]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:58 localhost.localdomain systemd[1]: session-9.scope: Deactivated successfully.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Session 9 logged out. Waiting for processes to exit.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Removed session 9.
Feb 06 15:53:58 localhost.localdomain sshd[1067]: Accepted publickey for root from 134.86.254.7 port 36516 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:58 localhost.localdomain sshd[1067]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: New session 10 of user root.
Feb 06 15:53:58 localhost.localdomain systemd[1]: Started Session 10 of User root.
Feb 06 15:53:58 localhost.localdomain sshd[1067]: Received disconnect from 134.86.254.7 port 36516:11: disconnected by user
Feb 06 15:53:58 localhost.localdomain sshd[1067]: Disconnected from user root 134.86.254.7 port 36516
Feb 06 15:53:58 localhost.localdomain sshd[1067]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:58 localhost.localdomain systemd[1]: session-10.scope: Deactivated successfully.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Session 10 logged out. Waiting for processes to exit.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Removed session 10.
Feb 06 15:53:58 localhost.localdomain sshd[1078]: Accepted publickey for root from 134.86.254.7 port 36524 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:53:58 localhost.localdomain sshd[1078]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: New session 11 of user root.
Feb 06 15:53:58 localhost.localdomain systemd[1]: Started Session 11 of User root.
Feb 06 15:53:58 localhost.localdomain sshd[1078]: Received disconnect from 134.86.254.7 port 36524:11: disconnected by user
Feb 06 15:53:58 localhost.localdomain sshd[1078]: Disconnected from user root 134.86.254.7 port 36524
Feb 06 15:53:58 localhost.localdomain sshd[1078]: pam_unix(sshd:session): session closed for user root
Feb 06 15:53:58 localhost.localdomain systemd[1]: session-11.scope: Deactivated successfully.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Session 11 logged out. Waiting for processes to exit.
Feb 06 15:53:58 localhost.localdomain systemd-logind[472]: Removed session 11.
Feb 06 15:54:00 localhost.localdomain sshd[1089]: Accepted publickey for root from 134.86.254.7 port 36530 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:00 localhost.localdomain sshd[1089]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: New session 12 of user root.
Feb 06 15:54:00 localhost.localdomain systemd[1]: Started Session 12 of User root.
Feb 06 15:54:00 localhost.localdomain sshd[1089]: Received disconnect from 134.86.254.7 port 36530:11: disconnected by user
Feb 06 15:54:00 localhost.localdomain sshd[1089]: Disconnected from user root 134.86.254.7 port 36530
Feb 06 15:54:00 localhost.localdomain sshd[1089]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:00 localhost.localdomain systemd[1]: session-12.scope: Deactivated successfully.
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: Session 12 logged out. Waiting for processes to exit.
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: Removed session 12.
Feb 06 15:54:00 localhost.localdomain sshd[1102]: Accepted publickey for root from 134.86.254.7 port 36534 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:00 localhost.localdomain sshd[1102]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: New session 13 of user root.
Feb 06 15:54:00 localhost.localdomain systemd[1]: Started Session 13 of User root.
Feb 06 15:54:00 localhost.localdomain sshd[1102]: Received disconnect from 134.86.254.7 port 36534:11: disconnected by user
Feb 06 15:54:00 localhost.localdomain sshd[1102]: Disconnected from user root 134.86.254.7 port 36534
Feb 06 15:54:00 localhost.localdomain sshd[1102]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:00 localhost.localdomain systemd[1]: session-13.scope: Deactivated successfully.
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: Session 13 logged out. Waiting for processes to exit.
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: Removed session 13.
Feb 06 15:54:00 localhost.localdomain sshd[1113]: Accepted publickey for root from 134.86.254.7 port 36538 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:00 localhost.localdomain sshd[1113]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:00 localhost.localdomain systemd-logind[472]: New session 14 of user root.
Feb 06 15:54:00 localhost.localdomain systemd[1]: Started Session 14 of User root.
Feb 06 15:54:04 localhost.localdomain sshd[1113]: Received disconnect from 134.86.254.7 port 36538:11: disconnected by user
Feb 06 15:54:04 localhost.localdomain sshd[1113]: Disconnected from user root 134.86.254.7 port 36538
Feb 06 15:54:04 localhost.localdomain sshd[1113]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:04 localhost.localdomain systemd[1]: session-14.scope: Deactivated successfully.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Session 14 logged out. Waiting for processes to exit.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Removed session 14.
Feb 06 15:54:04 localhost.localdomain sshd[1124]: Accepted publickey for root from 134.86.254.7 port 35662 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:04 localhost.localdomain sshd[1124]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: New session 15 of user root.
Feb 06 15:54:04 localhost.localdomain systemd[1]: Started Session 15 of User root.
Feb 06 15:54:04 localhost.localdomain sshd[1124]: Received disconnect from 134.86.254.7 port 35662:11: disconnected by user
Feb 06 15:54:04 localhost.localdomain sshd[1124]: Disconnected from user root 134.86.254.7 port 35662
Feb 06 15:54:04 localhost.localdomain sshd[1124]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:04 localhost.localdomain systemd[1]: session-15.scope: Deactivated successfully.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Session 15 logged out. Waiting for processes to exit.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Removed session 15.
Feb 06 15:54:04 localhost.localdomain sshd[1136]: Accepted publickey for root from 134.86.254.7 port 35674 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:04 localhost.localdomain sshd[1136]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: New session 16 of user root.
Feb 06 15:54:04 localhost.localdomain systemd[1]: Started Session 16 of User root.
Feb 06 15:54:04 localhost.localdomain sshd[1136]: Received disconnect from 134.86.254.7 port 35674:11: disconnected by user
Feb 06 15:54:04 localhost.localdomain sshd[1136]: Disconnected from user root 134.86.254.7 port 35674
Feb 06 15:54:04 localhost.localdomain sshd[1136]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:04 localhost.localdomain systemd[1]: session-16.scope: Deactivated successfully.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Session 16 logged out. Waiting for processes to exit.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Removed session 16.
Feb 06 15:54:04 localhost.localdomain sshd[1147]: Accepted publickey for root from 134.86.254.7 port 35688 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:04 localhost.localdomain sshd[1147]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: New session 17 of user root.
Feb 06 15:54:04 localhost.localdomain systemd[1]: Started Session 17 of User root.
Feb 06 15:54:04 localhost.localdomain sshd[1147]: Received disconnect from 134.86.254.7 port 35688:11: disconnected by user
Feb 06 15:54:04 localhost.localdomain sshd[1147]: Disconnected from user root 134.86.254.7 port 35688
Feb 06 15:54:04 localhost.localdomain sshd[1147]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:04 localhost.localdomain systemd[1]: session-17.scope: Deactivated successfully.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Session 17 logged out. Waiting for processes to exit.
Feb 06 15:54:04 localhost.localdomain systemd-logind[472]: Removed session 17.
Feb 06 15:54:05 localhost.localdomain sshd[1159]: Accepted publickey for root from 134.86.254.7 port 35700 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:05 localhost.localdomain sshd[1159]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: New session 18 of user root.
Feb 06 15:54:05 localhost.localdomain systemd[1]: Started Session 18 of User root.
Feb 06 15:54:05 localhost.localdomain sshd[1159]: Received disconnect from 134.86.254.7 port 35700:11: disconnected by user
Feb 06 15:54:05 localhost.localdomain sshd[1159]: Disconnected from user root 134.86.254.7 port 35700
Feb 06 15:54:05 localhost.localdomain sshd[1159]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:05 localhost.localdomain systemd[1]: session-18.scope: Deactivated successfully.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Session 18 logged out. Waiting for processes to exit.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Removed session 18.
Feb 06 15:54:05 localhost.localdomain sshd[1170]: Accepted publickey for root from 134.86.254.7 port 35706 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:05 localhost.localdomain sshd[1170]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: New session 19 of user root.
Feb 06 15:54:05 localhost.localdomain systemd[1]: Started Session 19 of User root.
Feb 06 15:54:05 localhost.localdomain sshd[1170]: Received disconnect from 134.86.254.7 port 35706:11: disconnected by user
Feb 06 15:54:05 localhost.localdomain sshd[1170]: Disconnected from user root 134.86.254.7 port 35706
Feb 06 15:54:05 localhost.localdomain sshd[1170]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:05 localhost.localdomain systemd[1]: session-19.scope: Deactivated successfully.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Session 19 logged out. Waiting for processes to exit.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Removed session 19.
Feb 06 15:54:05 localhost.localdomain sshd[1182]: Accepted publickey for root from 134.86.254.7 port 35720 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:05 localhost.localdomain sshd[1182]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: New session 20 of user root.
Feb 06 15:54:05 localhost.localdomain systemd[1]: Started Session 20 of User root.
Feb 06 15:54:05 localhost.localdomain sshd[1182]: Received disconnect from 134.86.254.7 port 35720:11: disconnected by user
Feb 06 15:54:05 localhost.localdomain sshd[1182]: Disconnected from user root 134.86.254.7 port 35720
Feb 06 15:54:05 localhost.localdomain sshd[1182]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:05 localhost.localdomain systemd[1]: session-20.scope: Deactivated successfully.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Session 20 logged out. Waiting for processes to exit.
Feb 06 15:54:05 localhost.localdomain systemd-logind[472]: Removed session 20.
Feb 06 15:54:06 localhost.localdomain sshd[1193]: Accepted publickey for root from 134.86.254.7 port 35722 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:06 localhost.localdomain sshd[1193]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: New session 21 of user root.
Feb 06 15:54:06 localhost.localdomain systemd[1]: Started Session 21 of User root.
Feb 06 15:54:06 localhost.localdomain sshd[1193]: Received disconnect from 134.86.254.7 port 35722:11: disconnected by user
Feb 06 15:54:06 localhost.localdomain sshd[1193]: Disconnected from user root 134.86.254.7 port 35722
Feb 06 15:54:06 localhost.localdomain sshd[1193]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:06 localhost.localdomain systemd[1]: session-21.scope: Deactivated successfully.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Session 21 logged out. Waiting for processes to exit.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Removed session 21.
Feb 06 15:54:06 localhost.localdomain sshd[1206]: Accepted publickey for root from 134.86.254.7 port 35736 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:06 localhost.localdomain sshd[1206]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: New session 22 of user root.
Feb 06 15:54:06 localhost.localdomain systemd[1]: Started Session 22 of User root.
Feb 06 15:54:06 localhost.localdomain sshd[1206]: Received disconnect from 134.86.254.7 port 35736:11: disconnected by user
Feb 06 15:54:06 localhost.localdomain sshd[1206]: Disconnected from user root 134.86.254.7 port 35736
Feb 06 15:54:06 localhost.localdomain sshd[1206]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:06 localhost.localdomain systemd[1]: session-22.scope: Deactivated successfully.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Session 22 logged out. Waiting for processes to exit.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Removed session 22.
Feb 06 15:54:06 localhost.localdomain sshd[1218]: Accepted publickey for root from 134.86.254.7 port 35738 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:06 localhost.localdomain sshd[1218]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: New session 23 of user root.
Feb 06 15:54:06 localhost.localdomain systemd[1]: Started Session 23 of User root.
Feb 06 15:54:06 localhost.localdomain sshd[1218]: Received disconnect from 134.86.254.7 port 35738:11: disconnected by user
Feb 06 15:54:06 localhost.localdomain sshd[1218]: Disconnected from user root 134.86.254.7 port 35738
Feb 06 15:54:06 localhost.localdomain sshd[1218]: pam_unix(sshd:session): session closed for user root
Feb 06 15:54:06 localhost.localdomain systemd[1]: session-23.scope: Deactivated successfully.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Session 23 logged out. Waiting for processes to exit.
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: Removed session 23.
Feb 06 15:54:06 localhost.localdomain sshd[1229]: Accepted publickey for root from 134.86.254.7 port 35746 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 15:54:06 localhost.localdomain sshd[1229]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 15:54:06 localhost.localdomain systemd-logind[472]: New session 24 of user root.
Feb 06 15:54:06 localhost.localdomain systemd[1]: Started Session 24 of User root.
```

## Degraded Services 

```sh
● weston@industrial.service                                                                                         loaded failed failed    Weston Wayland Compositor (on tty7)
```

