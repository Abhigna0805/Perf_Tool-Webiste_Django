# realboot.sh Test for MTP700_Unified_Basic 

## Test Date 06-02-2023-03-27-12 

## IMAGE VERSION BUILD_ID="HMI_ubp-3.4~F0612" 

## COREBOOT VERSION R02.05.00.00_01.01.01.02 

## OS INFO Siemens Industrial OS 3.4 (based on Debian 11.6) \n \l 

* This test iteration booted succesfully !

# Details for test iteration 47 

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
│ │ ├─/sys/fs/cgroup/memory                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,memory
│ │ ├─/sys/fs/cgroup/cpu,cpuacct                        cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpu,cpuacct
│ │ ├─/sys/fs/cgroup/pids                               cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,pids
│ │ ├─/sys/fs/cgroup/blkio                              cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,blkio
│ │ ├─/sys/fs/cgroup/devices                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,devices
│ │ ├─/sys/fs/cgroup/freezer                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,freezer
│ │ ├─/sys/fs/cgroup/perf_event                         cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,perf_event
│ │ ├─/sys/fs/cgroup/cpuset                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpuset
│ │ ├─/sys/fs/cgroup/net_prio                           cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,net_prio
│ │ └─/sys/fs/cgroup/hugetlb                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,hugetlb
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
├─/var/log                                              tmpfs                      tmpfs      rw,relatime,size=131072k
├─/var/opt/siemens/automation/WinCCUnified/Projects     /dev/mapper/vg_sys-lv_rtvo ext4       rw,relatime
└─/etc/hmi/FwServices/pa                                /dev/mapper/vg_sys-lv_pavo ext4       rw,relatime
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
       valid_lft 28562sec preferred_lft 28562sec
    inet6 fe80::7e63:9923:2c77:e358/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:8d:76:f8:b7 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
```

## Systemd Analyze Plot 

![](systemd_analyze_plot.svg) 

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
[    0.000129] Console: colour dummy device 80x25
[    0.000200] Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
[    0.000208] pid_max: default: 32768 minimum: 301
[    0.000268] LSM: Security Framework initializing
[    0.000293] SELinux:  Initializing.
[    0.000353] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.000364] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.001651] rcu: Hierarchical SRCU implementation.
[    0.002896] smp: Bringing up secondary CPUs ...
[    0.003361] Detected VIPT I-cache on CPU1
[    0.003392] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
[    0.003458] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.003951] Detected VIPT I-cache on CPU2
[    0.003973] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
[    0.004015] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004431] Detected VIPT I-cache on CPU3
[    0.004452] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
[    0.004494] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004543] smp: Brought up 1 node, 4 CPUs
[    0.004550] SMP: Total of 4 processors activated.
[    0.004554] CPU features: detected: 32-bit EL0 Support
[    0.004557] CPU features: detected: CRC32 instructions
[    0.011320] CPU: All CPU(s) started at EL2
[    0.011339] alternatives: patching kernel code
[    0.012662] devtmpfs: initialized
[    0.017884] KASLR disabled due to lack of seed
[    0.018016] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.018029] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.031772] pinctrl core: initialized pinctrl subsystem
[    0.032867] NET: Registered protocol family 16
[    0.038608] DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
[    0.039411] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.040233] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.040340] audit: initializing netlink subsys (disabled)
[    0.040601] audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
[    0.041097] thermal_sys: Registered thermal governor 'step_wise'
[    0.041101] thermal_sys: Registered thermal governor 'power_allocator'
[    0.041377] cpuidle: using governor menu
[    0.041667] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.041748] ASID allocator initialised with 65536 entries
[    0.042521] Serial: AMBA PL011 UART driver
[    0.042568] imx mu driver is registered.
[    0.042584] imx rpmsg driver is registered.
[    0.061471] imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
[    0.061481] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
[    0.073718] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.073727] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.073731] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.073736] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.074463] cryptd: max_cpu_qlen set to 1000
[    0.077604] iommu: Default domain type: Translated 
[    0.077766] vgaarb: loaded
[    0.078031] SCSI subsystem initialized
[    0.078185] libata version 3.00 loaded.
[    0.078347] usbcore: registered new interface driver usbfs
[    0.078373] usbcore: registered new interface driver hub
[    0.078392] usbcore: registered new device driver usb
[    0.079216] mc: Linux media interface: v0.10
[    0.079236] videodev: Linux video capture interface: v2.00
[    0.079284] pps_core: LinuxPPS API ver. 1 registered
[    0.079287] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.079300] PTP clock support registered
[    0.079411] EDAC MC: Ver: 3.0.0
[    0.080452] FPGA manager framework
[    0.080522] Advanced Linux Sound Architecture Driver Initialized.
[    0.081040] Bluetooth: Core ver 2.22
[    0.081063] NET: Registered protocol family 31
[    0.081066] Bluetooth: HCI device and connection manager initialized
[    0.081074] Bluetooth: HCI socket layer initialized
[    0.081079] Bluetooth: L2CAP socket layer initialized
[    0.081089] Bluetooth: SCO socket layer initialized
[    0.081941] clocksource: Switched to clocksource arch_sys_counter
[    0.728263] VFS: Disk quotas dquot_6.6.0
[    0.728310] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.733554] NET: Registered protocol family 2
[    0.733713] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.734512] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.734542] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.734650] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.734910] TCP: Hash tables configured (established 16384 bind 16384)
[    0.735005] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735036] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735161] NET: Registered protocol family 1
[    0.735471] RPC: Registered named UNIX socket transport module.
[    0.735474] RPC: Registered udp transport module.
[    0.735477] RPC: Registered tcp transport module.
[    0.735479] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.735489] PCI: CLS 0 bytes, default 64
[    0.735650] Unpacking initramfs...
[    1.210592] Freeing initrd memory: 15480K
[    1.211316] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
[    1.214452] Initialise system trusted keyrings
[    1.214585] workingset: timestamp_bits=42 max_order=19 bucket_order=0
[    1.219953] NFS: Registering the id_resolver key type
[    1.219983] Key type id_resolver registered
[    1.219986] Key type id_legacy registered
[    1.220052] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.220056] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    1.220072] jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
[    1.247560] Key type asymmetric registered
[    1.247569] Asymmetric key parser 'x509' registered
[    1.247607] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
[    1.247612] io scheduler mq-deadline registered
[    1.247615] io scheduler kyber registered
[    1.252805] M4 is started
[    1.258368] imx-sdma 302b0000.dma-controller: firmware found.
[    1.261316] imx-sdma 302c0000.dma-controller: firmware found.
[    1.263453] imx-sdma 30bd0000.dma-controller: firmware found.
[    1.264874] mxs-dma 33000000.dma-controller: initialized
[    1.266588] Bus freq driver module loaded
[    1.271300] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.273136] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
[    1.273192] printk: console [ttymxc1] enabled
[    1.273195] printk: bootconsole [ec_imx6q0] disabled
[    1.286912] loop: module loaded
[    1.287732] of_reserved_mem_lookup() returned NULL
[    1.288989] imx ahci driver is registered.
[    1.290895] spi_imx 30800000.spba-bus:spi@30830000: invalid resource
[    1.290916] spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
[    1.292899] tun: Universal TUN/TAP device driver, 1.6
[    1.293714] pps pps0: new PPS source ptp0
[    1.305172] fec 30be0000.ethernet eth0: registered PHC device 0
[    1.306583] e1000: Intel(R) PRO/1000 Network Driver
[    1.306589] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.306617] e1000e: Intel(R) PRO/1000 Network Driver
[    1.306619] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.306647] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.306650] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.306671] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.306674] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.306790] sky2: driver version 1.30
[    1.306954] usbcore: registered new interface driver r8152
[    1.306983] usbcore: registered new interface driver asix
[    1.307004] usbcore: registered new interface driver ax88179_178a
[    1.307024] usbcore: registered new interface driver cdc_ether
[    1.307044] usbcore: registered new interface driver net1080
[    1.307064] usbcore: registered new interface driver cdc_subset
[    1.307088] usbcore: registered new interface driver zaurus
[    1.307133] usbcore: registered new interface driver cdc_ncm
[    1.307388] VFIO - User Level meta-driver version: 0.3
[    1.309113] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.309118] ehci-pci: EHCI PCI platform driver
[    1.309141] ehci-platform: EHCI generic platform driver
[    1.309267] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.309289] ohci-pci: OHCI PCI platform driver
[    1.309312] ohci-platform: OHCI generic platform driver
[    1.309907] usbcore: registered new interface driver uas
[    1.309962] usbcore: registered new interface driver usb-storage
[    1.310026] usbcore: registered new interface driver usbserial_generic
[    1.310040] usbserial: USB Serial support registered for generic
[    1.312877] i2c /dev entries driver
[    1.315310] Bluetooth: HCI UART driver ver 2.3
[    1.315318] Bluetooth: HCI UART protocol H4 registered
[    1.315321] Bluetooth: HCI UART protocol BCSP registered
[    1.315341] Bluetooth: HCI UART protocol LL registered
[    1.315344] Bluetooth: HCI UART protocol ATH3K registered
[    1.315357] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.315409] Bluetooth: HCI UART protocol Broadcom registered
[    1.315422] Bluetooth: HCI UART protocol QCA registered
[    1.316476] sdhci: Secure Digital Host Controller Interface driver
[    1.316480] sdhci: Copyright(c) Pierre Ossman
[    1.316679] Synopsys Designware Multimedia Card Interface Driver
[    1.317128] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.317802] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.317835] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.317889] sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
[    1.317908] sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
[    1.318714] ledtrig-cpu: registered to indicate activity on CPUs
[    1.319143] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.319510] usbcore: registered new interface driver usbhid
[    1.319513] usbhid: USB HID core driver
[    1.323539] galcore: clk_get vg clock failed, disable vg!
[    1.323699] Galcore version 6.4.3.p2.336687
[    1.349228] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
[    1.382453] [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
[    1.388799] NET: Registered protocol family 10
[    1.389512] Segment Routing with IPv6
[    1.389552] NET: Registered protocol family 17
[    1.389643] Bluetooth: RFCOMM TTY layer initialized
[    1.389651] Bluetooth: RFCOMM socket layer initialized
[    1.389682] Bluetooth: RFCOMM ver 1.11
[    1.389690] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.389693] Bluetooth: BNEP filters: protocol multicast
[    1.389699] Bluetooth: BNEP socket layer initialized
[    1.389702] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.389706] Bluetooth: HIDP socket layer initialized
[    1.389736] 8021q: 802.1Q VLAN Support v1.8
[    1.389753] lib80211: common routines for IEEE802.11 drivers
[    1.389757] lib80211_crypt: registered algorithm 'NULL'
[    1.389761] lib80211_crypt: registered algorithm 'WEP'
[    1.389764] lib80211_crypt: registered algorithm 'CCMP'
[    1.389770] lib80211_crypt: registered algorithm 'TKIP'
[    1.389774] tsn generic netlink module v1 init...
[    1.389847] Key type dns_resolver registered
[    1.390262] registered taskstats version 1
[    1.390268] Loading compiled-in X.509 certificates
[    1.408282] usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
[    1.408399] usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
[    1.408538] usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
[    1.408607] usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
[    1.408830] imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
[    1.417797] nxp-pca9450 0-0025: pca9450a probed.
[    1.417943] i2c i2c-0: IMX I2C adapter registered
[    1.418289] imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
[    1.422934] rtc-ds1307 1-0032: registered as rtc0
[    1.423739] rtc-ds1307 1-0032: setting system clock to 2023-02-06T11:57:20 UTC (1675684640)
[    1.423905] i2c i2c-1: IMX I2C adapter registered
[    1.424227] imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
[    1.432575] mmc2: new DDR MMC card at address 0001
[    1.433056] mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
[    1.433223] mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
[    1.433390] mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
[    1.433558] mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
[    1.433697] mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
[    1.436532]  mmcblk2: p1 p2 p3 p4
[    1.465204] input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
[    1.465718] i2c i2c-2: IMX I2C adapter registered
[    1.467969] pwm-backlight backlight: supply power not found, using dummy regulator
[    1.468094] imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
[    1.468246] imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
[    1.468373] imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
[    1.468624] SoC: i.MX8MM revision 1.0
[    1.468684] imx6q-pcie 33800000.pcie: GPR15=6188ffff
[    1.468845] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
[    1.469262] imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
[    1.469314] imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
[    1.469338] imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
[    1.469355] imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
[    1.469449] imx6q-pcie 33800000.pcie: invalid resource
[    1.470830] imx_usb 32e40000.usb: No over current polarity defined
[    1.473587] ci_hdrc ci_hdrc.0: EHCI Host Controller
[    1.473613] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
[    1.485951] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[    1.486551] hub 1-0:1.0: USB hub found
[    1.486580] hub 1-0:1.0: 1 port detected
[    1.488187] imx_usb 32e50000.usb: No over current polarity defined
[    1.491008] ci_hdrc ci_hdrc.1: EHCI Host Controller
[    1.491028] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
[    1.505947] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
[    1.506512] hub 2-0:1.0: USB hub found
[    1.506538] hub 2-0:1.0: 1 port detected
[    1.509695] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.509714] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.509742] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.511266] hantrodec 0 : module inserted. Major = 234
[    1.512682] hantrodec 1 : module inserted. Major = 234
[    1.513978] hx280enc: module inserted. Major <511>
[    1.516770] ALSA device list:
[    1.516781]   No soundcards found.
[    1.542190] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
[    2.465948] imx6q-pcie 33800000.pcie: Phy link never came up
[    2.465980] imx6q-pcie 33800000.pcie: failed to initialize host
[    2.465985] imx6q-pcie 33800000.pcie: unable to add pcie port.
[    2.471579] Freeing unused kernel memory: 5184K
[    2.490042] Run /init as init process
[    2.490046]   with arguments:
[    2.490049]     /init
[    2.490051]     splash
[    2.490054]   with environment:
[    2.490057]     HOME=/
[    2.490059]     TERM=linux
[    2.490062]     jtag=on
[    3.018454] fec 30be0000.ethernet end0: renamed from eth0
[    3.022082] imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
[    3.022268] imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
[    3.022350] imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
[    3.022358] imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
[    3.022378] imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
[    3.022791] [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
[    3.068852] random: lvm: uninitialized urandom read (4 bytes read)
[    3.128817] device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
[    3.131914] random: lvm: uninitialized urandom read (2 bytes read)
[    3.378361] random: lvm: uninitialized urandom read (4 bytes read)
[    3.672378] EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
[    3.759692] EXT4-fs (dm-2): recovery complete
[    3.760446] EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
[    4.188555] systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
[    4.188573] systemd[1]: Detected architecture arm64.
[    4.221159] systemd[1]: No hostname configured, using default hostname.
[    4.221449] systemd[1]: Hostname set to <localhost>.
[    4.403735] random: lvmconfig: uninitialized urandom read (4 bytes read)
[    4.534238] systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
[    4.691539] systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
[    4.768422] systemd[1]: Queued start job for default target Graphical Interface.
[    4.768503] systemd[1]: Unnecessary job was removed for /dev/dm-2.
[    4.768527] systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
[    4.813400] systemd[1]: Created slice Slice /system/getty.
[    4.815959] systemd[1]: Created slice Slice /system/modprobe.
[    4.818381] systemd[1]: Created slice Slice /system/serial-getty.
[    4.820980] systemd[1]: Created slice Slice /system/systemd-fsck.
[    4.823363] systemd[1]: Created slice Slice /system/weston.
[    4.825070] systemd[1]: Created slice User and Session Slice.
[    4.825411] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    4.825630] systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
[    4.825846] systemd[1]: Reached target Local Integrity Protected Volumes.
[    4.826305] systemd[1]: Reached target Remote File Systems.
[    4.826361] systemd[1]: Reached target Slice Units.
[    4.826449] systemd[1]: Reached target Swaps.
[    4.826525] systemd[1]: Reached target Local Verity Protected Volumes.
[    4.826868] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    4.827338] systemd[1]: Listening on LVM2 poll daemon socket.
[    4.827708] systemd[1]: Listening on fsck to fsckd communication Socket.
[    4.827917] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    4.828559] systemd[1]: Listening on Journal Audit Socket.
[    4.828978] systemd[1]: Listening on Journal Socket (/dev/log).
[    4.829417] systemd[1]: Listening on Journal Socket.
[    4.832200] systemd[1]: Listening on udev Control Socket.
[    4.832807] systemd[1]: Listening on udev Kernel Socket.
[    4.836819] systemd[1]: Mounting Huge Pages File System...
[    4.841216] systemd[1]: Mounting POSIX Message Queue File System...
[    4.846473] systemd[1]: Mounting Kernel Debug File System...
[    4.851737] systemd[1]: Mounting Kernel Trace File System...
[    4.852648] systemd[1]: Finished Availability of block devices.
[    4.859200] systemd[1]: Starting Set the console keyboard layout...
[    4.864289] systemd[1]: Starting Create List of Static Device Nodes...
[    4.869516] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    4.875127] systemd[1]: Starting Load Kernel Module configfs...
[    4.880388] systemd[1]: Starting Load Kernel Module drm...
[    4.885805] systemd[1]: Starting Load Kernel Module efi_pstore...
[    4.893025] systemd[1]: Starting Load Kernel Module fuse...
[    4.894524] random: lvm: uninitialized urandom read (4 bytes read)
[    4.900506] systemd[1]: Starting Network initialization...
[    4.901892] systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
[    4.901908] systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
[    4.908358] systemd[1]: Starting Journal Service...
[    4.917839] systemd[1]: Starting Load Kernel Modules...
[    4.923895] systemd[1]: Starting Remount Root and Kernel File Systems...
[    4.924562] systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
[    4.931821] systemd[1]: Starting Coldplug All udev Devices...
[    4.932141] fuse: init (API version 7.32)
[    4.938699] systemd[1]: Starting Uncomplicated firewall...
[    4.952057] systemd[1]: Mounted Huge Pages File System.
[    4.953484] systemd[1]: Mounted POSIX Message Queue File System.
[    4.955017] systemd[1]: Mounted Kernel Debug File System.
[    4.956473] systemd[1]: Mounted Kernel Trace File System.
[    4.959765] systemd[1]: Finished Create List of Static Device Nodes.
[    4.962850] systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    4.964129] systemd[1]: Finished Load Kernel Module configfs.
[    4.965706] systemd[1]: modprobe@drm.service: Deactivated successfully.
[    4.966873] systemd[1]: Finished Load Kernel Module drm.
[    4.969491] systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
[    4.971572] systemd[1]: Finished Load Kernel Module efi_pstore.
[    4.973146] systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    4.974272] systemd[1]: Finished Load Kernel Module fuse.
[    4.976365] systemd[1]: Finished Uncomplicated firewall.
[    4.981444] systemd[1]: Finished Load Kernel Modules.
[    5.001509] systemd[1]: Mounting FUSE Control File System...
[    5.010141] systemd[1]: Mounting Kernel Configuration File System...
[    5.015656] systemd[1]: Starting Apply Kernel Variables...
[    5.030954] systemd[1]: Mounted FUSE Control File System.
[    5.032697] systemd[1]: Mounted Kernel Configuration File System.
[    5.038358] systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
[    5.072679] systemd[1]: Finished Remount Root and Kernel File Systems.
[    5.074420] systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
[    5.074641] systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
[    5.085406] systemd[1]: Starting Load/Save Random Seed...
[    5.091816] systemd[1]: Starting Create System Users...
[    5.094975] systemd[1]: Finished Apply Kernel Variables.
[    5.117184] random: python3: uninitialized urandom read (24 bytes read)
[    5.161439] systemd[1]: Finished Create System Users.
[    5.167633] systemd[1]: Starting Create Static Device Nodes in /dev...
[    5.168501] systemd[1]: Started Journal Service.
[    6.031266] systemd-journald[358]: Received client request to flush runtime journal.
[    6.376219] EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
[    6.501529] EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
[    6.501572] ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    6.524140] random: lvm: uninitialized urandom read (4 bytes read)
[    6.566031] random: crng init done
[    6.566045] random: 1 urandom warning(s) missed due to ratelimiting
[    7.166694] LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
[    7.599697] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.640291] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.864028] caam-snvs 30370000.caam-snvs: violation handlers armed - init state
[    8.377636] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    8.391265] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    8.431462] caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
[    8.431476] caam 30900000.crypto: job rings = 3, qi = 0
[    8.942519] Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
[    9.687971] caam_jr 30901000.jr: failed to flush job ring 0
[    9.688099] caam_jr: probe of 30901000.jr failed with error -5
[    9.740704] caam algorithms registered in /proc/crypto
[    9.743073] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
[    9.743092] caam 30900000.crypto: registering rng-caam
[    9.749150] Device caam-keygen registered
[    9.774927] fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
[   13.023332] fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
[   13.023440] IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
[   14.613328] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[   14.616359] Bridge firewalling registered
[   19.517394] systemd-journald[358]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2732 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
[   19.517418] systemd-journald[358]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
[   26.594965] systemd-journald[358]: Time jumped backwards, rotating.
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
Feb 06 11:57:24 localhost kernel: Booting Linux on physical CPU 0x0000000000 [0x410fd034]
Feb 06 11:57:24 localhost kernel: Linux version 5.10.158-cip22+ind1 (builder@narmada) (aarch64-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023
Feb 06 11:57:24 localhost kernel: Machine model: Siemens Foxxy
Feb 06 11:57:24 localhost kernel: earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
Feb 06 11:57:24 localhost kernel: printk: bootconsole [ec_imx6q0] enabled
Feb 06 11:57:24 localhost kernel: Reserved memory: created CMA memory pool at 0x0000000096000000, size 640 MiB
Feb 06 11:57:24 localhost kernel: OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
Feb 06 11:57:24 localhost kernel: NUMA: No NUMA configuration found
Feb 06 11:57:24 localhost kernel: NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 11:57:24 localhost kernel: NUMA: NODE_DATA [mem 0xbfa46700-0xbfa48fff]
Feb 06 11:57:24 localhost kernel: Zone ranges:
Feb 06 11:57:24 localhost kernel:   DMA      [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 11:57:24 localhost kernel:   DMA32    empty
Feb 06 11:57:24 localhost kernel:   Normal   empty
Feb 06 11:57:24 localhost kernel: Movable zone start for each node
Feb 06 11:57:24 localhost kernel: Early memory node ranges
Feb 06 11:57:24 localhost kernel:   node   0: [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 11:57:24 localhost kernel: Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 11:57:24 localhost kernel: On node 0 totalpages: 523898
Feb 06 11:57:24 localhost kernel:   DMA zone: 8186 pages used for memmap
Feb 06 11:57:24 localhost kernel:   DMA zone: 0 pages reserved
Feb 06 11:57:24 localhost kernel:   DMA zone: 523898 pages, LIFO batch:63
Feb 06 11:57:24 localhost kernel: On node 0, zone DMA: 390 pages in unavailable ranges
Feb 06 11:57:24 localhost kernel: psci: probing for conduit method from DT.
Feb 06 11:57:24 localhost kernel: psci: PSCIv1.1 detected in firmware.
Feb 06 11:57:24 localhost kernel: psci: Using standard PSCI v0.2 function IDs
Feb 06 11:57:24 localhost kernel: psci: MIGRATE_INFO_TYPE not supported.
Feb 06 11:57:24 localhost kernel: psci: SMC Calling Convention v1.2
Feb 06 11:57:24 localhost kernel: percpu: Embedded 30 pages/cpu s84248 r8192 d30440 u122880
Feb 06 11:57:24 localhost kernel: pcpu-alloc: s84248 r8192 d30440 u122880 alloc=30*4096
Feb 06 11:57:24 localhost kernel: pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
Feb 06 11:57:24 localhost kernel: Detected VIPT I-cache on CPU0
Feb 06 11:57:24 localhost kernel: CPU features: detected: ARM erratum 845719
Feb 06 11:57:24 localhost kernel: CPU features: detected: GIC system register CPU interface
Feb 06 11:57:24 localhost kernel: Built 1 zonelists, mobility grouping on.  Total pages: 515712
Feb 06 11:57:24 localhost kernel: Policy zone: DMA
Feb 06 11:57:24 localhost kernel: Kernel command line: console=ttymxc1,115200 earlycon=ec_imx6q,0x30890000,115200 loglevel=2 root=/dev/vg_sys/lv_mainvo ro rootfstype=ext4 rootwait security=selinux selinux=1 enforcing=0 enforcing=0 cryptomgr.notests systemd.unified_cgroup_hierarchy=0 module_blacklist=intel_ish_ipc,intel_ishtp jtag=on nohlt splash plymouth.ignore-serial-consoles quiet vt.global_cursor_default=0
Feb 06 11:57:24 localhost kernel: Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
Feb 06 11:57:24 localhost kernel: Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
Feb 06 11:57:24 localhost kernel: mem auto-init: stack:off, heap alloc:off, heap free:off
Feb 06 11:57:24 localhost kernel: Memory: 1351880K/2095592K available (17406K kernel code, 2216K rwdata, 6740K rodata, 5184K init, 529K bss, 88352K reserved, 655360K cma-reserved)
Feb 06 11:57:24 localhost kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
Feb 06 11:57:24 localhost kernel: ftrace: allocating 56519 entries in 221 pages
Feb 06 11:57:24 localhost kernel: ftrace: allocated 221 pages with 6 groups
Feb 06 11:57:24 localhost kernel: rcu: Preemptible hierarchical RCU implementation.
Feb 06 11:57:24 localhost kernel: rcu:         RCU event tracing is enabled.
Feb 06 11:57:24 localhost kernel: rcu:         RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
Feb 06 11:57:24 localhost kernel:         Trampoline variant of Tasks RCU enabled.
Feb 06 11:57:24 localhost kernel:         Rude variant of Tasks RCU enabled.
Feb 06 11:57:24 localhost kernel: rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
Feb 06 11:57:24 localhost kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
Feb 06 11:57:24 localhost kernel: NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
Feb 06 11:57:24 localhost kernel: GICv3: GIC: Using split EOI/Deactivate mode
Feb 06 11:57:24 localhost kernel: GICv3: 128 SPIs implemented
Feb 06 11:57:24 localhost kernel: GICv3: 0 Extended SPIs implemented
Feb 06 11:57:24 localhost kernel: GICv3: Distributor has no Range Selector support
Feb 06 11:57:24 localhost kernel: GICv3: 16 PPIs implemented
Feb 06 11:57:24 localhost kernel: GICv3: CPU0: found redistributor 0 region 0:0x0000000038880000
Feb 06 11:57:24 localhost kernel: ITS: No ITS available, not enabling LPIs
Feb 06 11:57:24 localhost kernel: arch_timer: cp15 timer(s) running at 8.00MHz (phys).
Feb 06 11:57:24 localhost kernel: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
Feb 06 11:57:24 localhost kernel: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
Feb 06 11:57:24 localhost kernel: Console: colour dummy device 80x25
Feb 06 11:57:24 localhost kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
Feb 06 11:57:24 localhost kernel: pid_max: default: 32768 minimum: 301
Feb 06 11:57:24 localhost kernel: LSM: Security Framework initializing
Feb 06 11:57:24 localhost kernel: SELinux:  Initializing.
Feb 06 11:57:24 localhost kernel: Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 11:57:24 localhost kernel: Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 11:57:24 localhost kernel: rcu: Hierarchical SRCU implementation.
Feb 06 11:57:24 localhost kernel: smp: Bringing up secondary CPUs ...
Feb 06 11:57:24 localhost kernel: Detected VIPT I-cache on CPU1
Feb 06 11:57:24 localhost kernel: GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
Feb 06 11:57:24 localhost kernel: CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
Feb 06 11:57:24 localhost kernel: Detected VIPT I-cache on CPU2
Feb 06 11:57:24 localhost kernel: GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
Feb 06 11:57:24 localhost kernel: CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
Feb 06 11:57:24 localhost kernel: Detected VIPT I-cache on CPU3
Feb 06 11:57:24 localhost kernel: GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
Feb 06 11:57:24 localhost kernel: CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
Feb 06 11:57:24 localhost kernel: smp: Brought up 1 node, 4 CPUs
Feb 06 11:57:24 localhost kernel: SMP: Total of 4 processors activated.
Feb 06 11:57:24 localhost kernel: CPU features: detected: 32-bit EL0 Support
Feb 06 11:57:24 localhost kernel: CPU features: detected: CRC32 instructions
Feb 06 11:57:24 localhost kernel: CPU: All CPU(s) started at EL2
Feb 06 11:57:24 localhost kernel: alternatives: patching kernel code
Feb 06 11:57:24 localhost kernel: devtmpfs: initialized
Feb 06 11:57:24 localhost kernel: KASLR disabled due to lack of seed
Feb 06 11:57:24 localhost kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
Feb 06 11:57:24 localhost kernel: futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
Feb 06 11:57:24 localhost kernel: pinctrl core: initialized pinctrl subsystem
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 16
Feb 06 11:57:24 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
Feb 06 11:57:24 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
Feb 06 11:57:24 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
Feb 06 11:57:24 localhost kernel: audit: initializing netlink subsys (disabled)
Feb 06 11:57:24 localhost kernel: audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
Feb 06 11:57:24 localhost kernel: thermal_sys: Registered thermal governor 'step_wise'
Feb 06 11:57:24 localhost kernel: thermal_sys: Registered thermal governor 'power_allocator'
Feb 06 11:57:24 localhost kernel: cpuidle: using governor menu
Feb 06 11:57:24 localhost kernel: hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
Feb 06 11:57:24 localhost kernel: ASID allocator initialised with 65536 entries
Feb 06 11:57:24 localhost kernel: Serial: AMBA PL011 UART driver
Feb 06 11:57:24 localhost kernel: imx mu driver is registered.
Feb 06 11:57:24 localhost kernel: imx rpmsg driver is registered.
Feb 06 11:57:24 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
Feb 06 11:57:24 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
Feb 06 11:57:24 localhost kernel: HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
Feb 06 11:57:24 localhost kernel: HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
Feb 06 11:57:24 localhost kernel: HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
Feb 06 11:57:24 localhost kernel: HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
Feb 06 11:57:24 localhost kernel: cryptd: max_cpu_qlen set to 1000
Feb 06 11:57:24 localhost kernel: iommu: Default domain type: Translated 
Feb 06 11:57:24 localhost kernel: vgaarb: loaded
Feb 06 11:57:24 localhost kernel: SCSI subsystem initialized
Feb 06 11:57:24 localhost kernel: libata version 3.00 loaded.
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver usbfs
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver hub
Feb 06 11:57:24 localhost kernel: usbcore: registered new device driver usb
Feb 06 11:57:24 localhost kernel: mc: Linux media interface: v0.10
Feb 06 11:57:24 localhost kernel: videodev: Linux video capture interface: v2.00
Feb 06 11:57:24 localhost kernel: pps_core: LinuxPPS API ver. 1 registered
Feb 06 11:57:24 localhost kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
Feb 06 11:57:24 localhost kernel: PTP clock support registered
Feb 06 11:57:24 localhost kernel: EDAC MC: Ver: 3.0.0
Feb 06 11:57:24 localhost kernel: FPGA manager framework
Feb 06 11:57:24 localhost kernel: Advanced Linux Sound Architecture Driver Initialized.
Feb 06 11:57:24 localhost kernel: Bluetooth: Core ver 2.22
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 31
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI device and connection manager initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI socket layer initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: L2CAP socket layer initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: SCO socket layer initialized
Feb 06 11:57:24 localhost kernel: clocksource: Switched to clocksource arch_sys_counter
Feb 06 11:57:24 localhost kernel: VFS: Disk quotas dquot_6.6.0
Feb 06 11:57:24 localhost kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 2
Feb 06 11:57:24 localhost kernel: IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
Feb 06 11:57:24 localhost kernel: tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
Feb 06 11:57:24 localhost kernel: TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
Feb 06 11:57:24 localhost kernel: TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
Feb 06 11:57:24 localhost kernel: TCP: Hash tables configured (established 16384 bind 16384)
Feb 06 11:57:24 localhost kernel: UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 11:57:24 localhost kernel: UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 1
Feb 06 11:57:24 localhost kernel: RPC: Registered named UNIX socket transport module.
Feb 06 11:57:24 localhost kernel: RPC: Registered udp transport module.
Feb 06 11:57:24 localhost kernel: RPC: Registered tcp transport module.
Feb 06 11:57:24 localhost kernel: RPC: Registered tcp NFSv4.1 backchannel transport module.
Feb 06 11:57:24 localhost kernel: PCI: CLS 0 bytes, default 64
Feb 06 11:57:24 localhost kernel: Unpacking initramfs...
Feb 06 11:57:24 localhost kernel: Freeing initrd memory: 15480K
Feb 06 11:57:24 localhost kernel: hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
Feb 06 11:57:24 localhost kernel: Initialise system trusted keyrings
Feb 06 11:57:24 localhost kernel: workingset: timestamp_bits=42 max_order=19 bucket_order=0
Feb 06 11:57:24 localhost kernel: NFS: Registering the id_resolver key type
Feb 06 11:57:24 localhost kernel: Key type id_resolver registered
Feb 06 11:57:24 localhost kernel: Key type id_legacy registered
Feb 06 11:57:24 localhost kernel: nfs4filelayout_init: NFSv4 File Layout Driver Registering...
Feb 06 11:57:24 localhost kernel: nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
Feb 06 11:57:24 localhost kernel: jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
Feb 06 11:57:24 localhost kernel: Key type asymmetric registered
Feb 06 11:57:24 localhost kernel: Asymmetric key parser 'x509' registered
Feb 06 11:57:24 localhost kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
Feb 06 11:57:24 localhost kernel: io scheduler mq-deadline registered
Feb 06 11:57:24 localhost kernel: io scheduler kyber registered
Feb 06 11:57:24 localhost kernel: M4 is started
Feb 06 11:57:24 localhost kernel: imx-sdma 302b0000.dma-controller: firmware found.
Feb 06 11:57:24 localhost kernel: imx-sdma 302c0000.dma-controller: firmware found.
Feb 06 11:57:24 localhost kernel: imx-sdma 30bd0000.dma-controller: firmware found.
Feb 06 11:57:24 localhost kernel: mxs-dma 33000000.dma-controller: initialized
Feb 06 11:57:24 localhost kernel: Bus freq driver module loaded
Feb 06 11:57:24 localhost kernel: Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
Feb 06 11:57:24 localhost kernel: 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
Feb 06 11:57:24 localhost kernel: printk: console [ttymxc1] enabled
Feb 06 11:57:24 localhost kernel: printk: bootconsole [ec_imx6q0] disabled
Feb 06 11:57:24 localhost kernel: loop: module loaded
Feb 06 11:57:24 localhost kernel: of_reserved_mem_lookup() returned NULL
Feb 06 11:57:24 localhost kernel: imx ahci driver is registered.
Feb 06 11:57:24 localhost kernel: spi_imx 30800000.spba-bus:spi@30830000: invalid resource
Feb 06 11:57:24 localhost kernel: spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
Feb 06 11:57:24 localhost kernel: tun: Universal TUN/TAP device driver, 1.6
Feb 06 11:57:24 localhost kernel: pps pps0: new PPS source ptp0
Feb 06 11:57:24 localhost kernel: fec 30be0000.ethernet eth0: registered PHC device 0
Feb 06 11:57:24 localhost kernel: e1000: Intel(R) PRO/1000 Network Driver
Feb 06 11:57:24 localhost kernel: e1000: Copyright (c) 1999-2006 Intel Corporation.
Feb 06 11:57:24 localhost kernel: e1000e: Intel(R) PRO/1000 Network Driver
Feb 06 11:57:24 localhost kernel: e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
Feb 06 11:57:24 localhost kernel: igb: Intel(R) Gigabit Ethernet Network Driver
Feb 06 11:57:24 localhost kernel: igb: Copyright (c) 2007-2014 Intel Corporation.
Feb 06 11:57:24 localhost kernel: igbvf: Intel(R) Gigabit Virtual Function Network Driver
Feb 06 11:57:24 localhost kernel: igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
Feb 06 11:57:24 localhost kernel: sky2: driver version 1.30
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver r8152
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver asix
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver ax88179_178a
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver cdc_ether
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver net1080
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver cdc_subset
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver zaurus
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver cdc_ncm
Feb 06 11:57:24 localhost kernel: VFIO - User Level meta-driver version: 0.3
Feb 06 11:57:24 localhost kernel: ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
Feb 06 11:57:24 localhost kernel: ehci-pci: EHCI PCI platform driver
Feb 06 11:57:24 localhost kernel: ehci-platform: EHCI generic platform driver
Feb 06 11:57:24 localhost kernel: ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
Feb 06 11:57:24 localhost kernel: ohci-pci: OHCI PCI platform driver
Feb 06 11:57:24 localhost kernel: ohci-platform: OHCI generic platform driver
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver uas
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver usb-storage
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver usbserial_generic
Feb 06 11:57:24 localhost kernel: usbserial: USB Serial support registered for generic
Feb 06 11:57:24 localhost kernel: i2c /dev entries driver
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART driver ver 2.3
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol H4 registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol BCSP registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol LL registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol ATH3K registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol Three-wire (H5) registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol Broadcom registered
Feb 06 11:57:24 localhost kernel: Bluetooth: HCI UART protocol QCA registered
Feb 06 11:57:24 localhost kernel: sdhci: Secure Digital Host Controller Interface driver
Feb 06 11:57:24 localhost kernel: sdhci: Copyright(c) Pierre Ossman
Feb 06 11:57:24 localhost kernel: Synopsys Designware Multimedia Card Interface Driver
Feb 06 11:57:24 localhost kernel: sdhci-pltfm: SDHCI platform and OF driver helper
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
Feb 06 11:57:24 localhost kernel: ledtrig-cpu: registered to indicate activity on CPUs
Feb 06 11:57:24 localhost kernel: SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
Feb 06 11:57:24 localhost kernel: usbcore: registered new interface driver usbhid
Feb 06 11:57:24 localhost kernel: usbhid: USB HID core driver
Feb 06 11:57:24 localhost kernel: galcore: clk_get vg clock failed, disable vg!
Feb 06 11:57:24 localhost kernel: Galcore version 6.4.3.p2.336687
Feb 06 11:57:24 localhost kernel: mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
Feb 06 11:57:24 localhost kernel: [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 10
Feb 06 11:57:24 localhost kernel: Segment Routing with IPv6
Feb 06 11:57:24 localhost kernel: NET: Registered protocol family 17
Feb 06 11:57:24 localhost kernel: Bluetooth: RFCOMM TTY layer initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: RFCOMM socket layer initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: RFCOMM ver 1.11
Feb 06 11:57:24 localhost kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Feb 06 11:57:24 localhost kernel: Bluetooth: BNEP filters: protocol multicast
Feb 06 11:57:24 localhost kernel: Bluetooth: BNEP socket layer initialized
Feb 06 11:57:24 localhost kernel: Bluetooth: HIDP (Human Interface Emulation) ver 1.2
Feb 06 11:57:24 localhost kernel: Bluetooth: HIDP socket layer initialized
Feb 06 11:57:24 localhost kernel: 8021q: 802.1Q VLAN Support v1.8
Feb 06 11:57:24 localhost kernel: lib80211: common routines for IEEE802.11 drivers
Feb 06 11:57:24 localhost kernel: lib80211_crypt: registered algorithm 'NULL'
Feb 06 11:57:24 localhost kernel: lib80211_crypt: registered algorithm 'WEP'
Feb 06 11:57:24 localhost kernel: lib80211_crypt: registered algorithm 'CCMP'
Feb 06 11:57:24 localhost kernel: lib80211_crypt: registered algorithm 'TKIP'
Feb 06 11:57:24 localhost kernel: tsn generic netlink module v1 init...
Feb 06 11:57:24 localhost kernel: Key type dns_resolver registered
Feb 06 11:57:24 localhost kernel: registered taskstats version 1
Feb 06 11:57:24 localhost kernel: Loading compiled-in X.509 certificates
Feb 06 11:57:24 localhost kernel: usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
Feb 06 11:57:24 localhost kernel: usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
Feb 06 11:57:24 localhost kernel: usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
Feb 06 11:57:24 localhost kernel: usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
Feb 06 11:57:24 localhost kernel: imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 11:57:24 localhost kernel: nxp-pca9450 0-0025: pca9450a probed.
Feb 06 11:57:24 localhost kernel: i2c i2c-0: IMX I2C adapter registered
Feb 06 11:57:24 localhost kernel: imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 11:57:24 localhost kernel: rtc-ds1307 1-0032: registered as rtc0
Feb 06 11:57:24 localhost kernel: rtc-ds1307 1-0032: setting system clock to 2023-02-06T11:57:20 UTC (1675684640)
Feb 06 11:57:24 localhost kernel: i2c i2c-1: IMX I2C adapter registered
Feb 06 11:57:24 localhost kernel: imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 11:57:24 localhost kernel: mmc2: new DDR MMC card at address 0001
Feb 06 11:57:24 localhost kernel: mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
Feb 06 11:57:24 localhost kernel: mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
Feb 06 11:57:24 localhost kernel: mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
Feb 06 11:57:24 localhost kernel: mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
Feb 06 11:57:24 localhost kernel: mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
Feb 06 11:57:24 localhost kernel:  mmcblk2: p1 p2 p3 p4
Feb 06 11:57:24 localhost kernel: input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
Feb 06 11:57:24 localhost kernel: i2c i2c-2: IMX I2C adapter registered
Feb 06 11:57:24 localhost kernel: pwm-backlight backlight: supply power not found, using dummy regulator
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
Feb 06 11:57:24 localhost kernel: SoC: i.MX8MM revision 1.0
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: GPR15=6188ffff
Feb 06 11:57:24 localhost kernel: imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: invalid resource
Feb 06 11:57:24 localhost kernel: imx_usb 32e40000.usb: No over current polarity defined
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.0: EHCI Host Controller
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
Feb 06 11:57:24 localhost kernel: hub 1-0:1.0: USB hub found
Feb 06 11:57:24 localhost kernel: hub 1-0:1.0: 1 port detected
Feb 06 11:57:24 localhost kernel: imx_usb 32e50000.usb: No over current polarity defined
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.1: EHCI Host Controller
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
Feb 06 11:57:24 localhost kernel: ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
Feb 06 11:57:24 localhost kernel: hub 2-0:1.0: USB hub found
Feb 06 11:57:24 localhost kernel: hub 2-0:1.0: 1 port detected
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 11:57:24 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
Feb 06 11:57:24 localhost kernel: hantrodec 0 : module inserted. Major = 234
Feb 06 11:57:24 localhost kernel: hantrodec 1 : module inserted. Major = 234
Feb 06 11:57:24 localhost kernel: hx280enc: module inserted. Major <511>
Feb 06 11:57:24 localhost kernel: ALSA device list:
Feb 06 11:57:24 localhost kernel:   No soundcards found.
Feb 06 11:57:24 localhost kernel: mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: Phy link never came up
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: failed to initialize host
Feb 06 11:57:24 localhost kernel: imx6q-pcie 33800000.pcie: unable to add pcie port.
Feb 06 11:57:24 localhost kernel: Freeing unused kernel memory: 5184K
Feb 06 11:57:24 localhost kernel: Run /init as init process
Feb 06 11:57:24 localhost kernel:   with arguments:
Feb 06 11:57:24 localhost kernel:     /init
Feb 06 11:57:24 localhost kernel:     splash
Feb 06 11:57:24 localhost kernel:   with environment:
Feb 06 11:57:24 localhost kernel:     HOME=/
Feb 06 11:57:24 localhost kernel:     TERM=linux
Feb 06 11:57:24 localhost kernel:     jtag=on
Feb 06 11:57:24 localhost kernel: fec 30be0000.ethernet end0: renamed from eth0
Feb 06 11:57:24 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
Feb 06 11:57:24 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
Feb 06 11:57:24 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
Feb 06 11:57:24 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
Feb 06 11:57:24 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
Feb 06 11:57:24 localhost kernel: [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
Feb 06 11:57:24 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 11:57:24 localhost kernel: device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
Feb 06 11:57:24 localhost kernel: random: lvm: uninitialized urandom read (2 bytes read)
Feb 06 11:57:24 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 11:57:24 localhost kernel: EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 11:57:24 localhost kernel: EXT4-fs (dm-2): recovery complete
Feb 06 11:57:24 localhost kernel: EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 11:57:24 localhost systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
Feb 06 11:57:24 localhost systemd[1]: Detected architecture arm64.
Feb 06 11:57:24 localhost systemd[1]: No hostname configured, using default hostname.
Feb 06 11:57:24 localhost systemd[1]: Hostname set to <localhost>.
Feb 06 11:57:24 localhost kernel: random: lvmconfig: uninitialized urandom read (4 bytes read)
Feb 06 11:57:24 localhost systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
Feb 06 11:57:24 localhost systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
Feb 06 11:57:24 localhost systemd[1]: Queued start job for default target Graphical Interface.
Feb 06 11:57:24 localhost systemd[1]: Unnecessary job was removed for /dev/dm-2.
Feb 06 11:57:24 localhost systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
Feb 06 11:57:24 localhost systemd[1]: Created slice Slice /system/getty.
Feb 06 11:57:24 localhost systemd[1]: Created slice Slice /system/modprobe.
Feb 06 11:57:24 localhost systemd[1]: Created slice Slice /system/serial-getty.
Feb 06 11:57:24 localhost systemd[1]: Created slice Slice /system/systemd-fsck.
Feb 06 11:57:24 localhost systemd[1]: Created slice Slice /system/weston.
Feb 06 11:57:24 localhost systemd[1]: Created slice User and Session Slice.
Feb 06 11:57:24 localhost systemd[1]: Started Forward Password Requests to Wall Directory Watch.
Feb 06 11:57:24 localhost systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
Feb 06 11:57:24 localhost systemd[1]: Reached target Local Integrity Protected Volumes.
Feb 06 11:57:24 localhost systemd[1]: Reached target Remote File Systems.
Feb 06 11:57:24 localhost systemd[1]: Reached target Slice Units.
Feb 06 11:57:24 localhost systemd[1]: Reached target Swaps.
Feb 06 11:57:24 localhost systemd[1]: Reached target Local Verity Protected Volumes.
Feb 06 11:57:24 localhost systemd[1]: Listening on Device-mapper event daemon FIFOs.
Feb 06 11:57:24 localhost systemd[1]: Listening on LVM2 poll daemon socket.
Feb 06 11:57:24 localhost systemd[1]: Listening on fsck to fsckd communication Socket.
Feb 06 11:57:24 localhost systemd[1]: Listening on initctl Compatibility Named Pipe.
Feb 06 11:57:24 localhost systemd[1]: Listening on Journal Audit Socket.
Feb 06 11:57:24 localhost systemd[1]: Listening on Journal Socket (/dev/log).
Feb 06 11:57:24 localhost systemd[1]: Listening on Journal Socket.
Feb 06 11:57:24 localhost systemd[1]: Listening on udev Control Socket.
Feb 06 11:57:24 localhost systemd[1]: Listening on udev Kernel Socket.
Feb 06 11:57:24 localhost systemd[1]: Mounting Huge Pages File System...
Feb 06 11:57:24 localhost systemd[1]: Mounting POSIX Message Queue File System...
Feb 06 11:57:24 localhost systemd[1]: Mounting Kernel Debug File System...
Feb 06 11:57:24 localhost systemd[1]: Mounting Kernel Trace File System...
Feb 06 11:57:24 localhost systemd[1]: Finished Availability of block devices.
Feb 06 11:57:24 localhost systemd[1]: Starting Set the console keyboard layout...
Feb 06 11:57:24 localhost systemd[1]: Starting Create List of Static Device Nodes...
Feb 06 11:57:24 localhost systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
Feb 06 11:57:24 localhost systemd[1]: Starting Load Kernel Module configfs...
Feb 06 11:57:24 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 11:57:24 localhost systemd[1]: Starting Load Kernel Module efi_pstore...
Feb 06 11:57:24 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 11:57:24 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 11:57:24 localhost systemd[1]: Starting Network initialization...
Feb 06 11:57:24 localhost systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
Feb 06 11:57:24 localhost systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
Feb 06 11:57:24 localhost systemd[1]: Starting Journal Service...
Feb 06 11:57:24 localhost systemd[1]: Starting Load Kernel Modules...
Feb 06 11:57:24 localhost systemd[1]: Starting Remount Root and Kernel File Systems...
Feb 06 11:57:24 localhost systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
Feb 06 11:57:24 localhost systemd[1]: Starting Coldplug All udev Devices...
Feb 06 11:57:24 localhost kernel: fuse: init (API version 7.32)
Feb 06 11:57:24 localhost systemd[1]: Starting Uncomplicated firewall...
Feb 06 11:57:24 localhost systemd[1]: Mounted Huge Pages File System.
Feb 06 11:57:24 localhost systemd[1]: Mounted POSIX Message Queue File System.
Feb 06 11:57:24 localhost systemd[1]: Mounted Kernel Debug File System.
Feb 06 11:57:24 localhost systemd[1]: Mounted Kernel Trace File System.
Feb 06 11:57:24 localhost systemd[1]: Finished Create List of Static Device Nodes.
Feb 06 11:57:24 localhost systemd[1]: modprobe@configfs.service: Deactivated successfully.
Feb 06 11:57:24 localhost systemd[1]: Finished Load Kernel Module configfs.
Feb 06 11:57:24 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 11:57:24 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 11:57:24 localhost systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
Feb 06 11:57:24 localhost systemd[1]: Finished Load Kernel Module efi_pstore.
Feb 06 11:57:24 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 11:57:24 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 11:57:24 localhost systemd[1]: Finished Uncomplicated firewall.
Feb 06 11:57:24 localhost systemd[1]: Finished Load Kernel Modules.
Feb 06 11:57:24 localhost systemd[1]: Mounting FUSE Control File System...
Feb 06 11:57:24 localhost systemd[1]: Mounting Kernel Configuration File System...
Feb 06 11:57:24 localhost systemd[1]: Starting Apply Kernel Variables...
Feb 06 11:57:24 localhost systemd[1]: Mounted FUSE Control File System.
Feb 06 11:57:24 localhost systemd[1]: Mounted Kernel Configuration File System.
Feb 06 11:57:24 localhost systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
Feb 06 11:57:24 localhost systemd[1]: Finished Remount Root and Kernel File Systems.
Feb 06 11:57:24 localhost systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 11:57:24 localhost systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
Feb 06 11:57:24 localhost systemd[1]: Starting Load/Save Random Seed...
Feb 06 11:57:24 localhost systemd[1]: Starting Create System Users...
Feb 06 11:57:24 localhost systemd[1]: Finished Apply Kernel Variables.
Feb 06 11:57:24 localhost kernel: random: python3: uninitialized urandom read (24 bytes read)
Feb 06 11:57:24 localhost systemd[1]: Finished Create System Users.
Feb 06 11:57:24 localhost systemd-journald[358]: Journal started
Feb 06 11:57:24 localhost systemd-journald[358]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 11:57:24 localhost systemd-modules-load[359]: Failed to find module 'lp'
Feb 06 11:57:24 localhost systemd-modules-load[359]: Failed to find module 'ppdev'
Feb 06 11:57:24 localhost systemd-modules-load[359]: Failed to find module 'parport_pc'
Feb 06 11:57:24 localhost systemd-random-seed[379]: Kernel entropy pool is not initialized yet, waiting until it is.
Feb 06 11:57:24 localhost systemd[1]: Starting Create Static Device Nodes in /dev...
Feb 06 11:57:24 localhost systemd[1]: Started Journal Service.
Feb 06 11:57:24 localhost lvm[349]:   5 logical volume(s) in volume group "vg_sys" monitored
Feb 06 11:57:24 localhost networking[363]: rm: cannot remove '/var/tmp/network/ifstatenew': Read-only file system
Feb 06 11:57:24 localhost networking[357]: networking: Configuring network interfaces
Feb 06 11:57:24 localhost systemd[1]: Finished Create Static Device Nodes in /dev.
Feb 06 11:57:24 localhost systemd[1]: Starting Rule-based Manager for Device Events and Files...
Feb 06 11:57:24 localhost systemd-udevd[384]: Using default interface naming scheme 'v252'.
Feb 06 11:57:24 localhost systemd[1]: Started Rule-based Manager for Device Events and Files.
Feb 06 11:57:24 localhost systemd[1]: Finished Coldplug All udev Devices.
Feb 06 11:57:24 localhost systemd[1]: Finished Set the console keyboard layout.
Feb 06 11:57:24 localhost systemd[1]: Reached target Preparation for Local File Systems.
Feb 06 11:57:25 localhost systemd[1]: Starting Show Plymouth Boot Screen...
Feb 06 11:57:25 localhost systemd[1]: var-log.mount: Directory /var/log to mount over is not empty, mounting anyway.
Feb 06 11:57:25 localhost systemd[1]: Mounting /var/log...
Feb 06 11:57:25 localhost systemd[1]: Started Show Plymouth Boot Screen.
Feb 06 11:57:25 localhost systemd[1]: Dispatch Password Requests to Console Directory Watch was skipped because of an unmet condition check (ConditionPathExists=!/run/plymouth/pid).
Feb 06 11:57:25 localhost systemd[1]: Started Forward Password Requests to Plymouth Directory Watch.
Feb 06 11:57:25 localhost systemd[1]: Reached target Local Encrypted Volumes.
Feb 06 11:57:25 localhost systemd[1]: Mounted /var/log.
Feb 06 11:57:25 localhost systemd[1]: Starting Flush Journal to Persistent Storage...
Feb 06 11:57:25 localhost systemd-journald[358]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 11:57:25 localhost systemd-journald[358]: Received client request to flush runtime journal.
Feb 06 11:57:25 localhost systemd[1]: Finished Flush Journal to Persistent Storage.
Feb 06 11:57:25 localhost systemd[1]: Found device /dev/ttymxc1.
Feb 06 11:57:25 localhost systemd[1]: Found device /dev/disk/by-label/lv_pavo.
Feb 06 11:57:25 localhost systemd[1]: Found device /dev/disk/by-label/lv_rtvo.
Feb 06 11:57:25 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_pavo...
Feb 06 11:57:25 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_rtvo...
Feb 06 11:57:25 localhost systemd[1]: Started File System Check Daemon to report status.
Feb 06 11:57:25 localhost systemd-udevd[404]: event_source: Failed to get device name: No such file or directory
Feb 06 11:57:25 localhost systemd-fsck[434]: lv_rtvo: recovering journal
Feb 06 11:57:25 localhost systemd-fsck[435]: lv_pavo: recovering journal
Feb 06 11:57:25 localhost systemd-fsck[434]: lv_rtvo: clean, 11/65536 files, 12955/262144 blocks
Feb 06 11:57:25 localhost systemd-fsck[435]: lv_pavo: clean, 11/16384 files, 7465/65536 blocks
Feb 06 11:57:25 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_rtvo.
Feb 06 11:57:25 localhost systemd[1]: Mounting /var/opt/siemens/automation/WinCCUnified/Projects...
Feb 06 11:57:25 localhost kernel: EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 11:57:25 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_pavo.
Feb 06 11:57:25 localhost systemd[1]: Mounted /var/opt/siemens/automation/WinCCUnified/Projects.
Feb 06 11:57:25 localhost systemd[1]: Condition check resulted in /dev/disk/by-path/platform-30b60000.mmc-part1 being skipped.
Feb 06 11:57:25 localhost systemd[1]: Condition check resulted in /dev/disk/by-id/lvm-pv-uuid-5Rzba1-ZlTA-I4eM-nQii-m4P1-rfub-tWp3XI being skipped.
Feb 06 11:57:25 localhost systemd[1]: Created slice Slice /system/lvm2-pvscan.
Feb 06 11:57:25 localhost systemd[1]: Mounting /etc/hmi/FwServices/pa...
Feb 06 11:57:25 localhost systemd[1]: Starting LVM event activation on device 179:1...
Feb 06 11:57:25 localhost kernel: EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 11:57:25 localhost kernel: ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 11:57:25 localhost systemd[1]: Mounted /etc/hmi/FwServices/pa.
Feb 06 11:57:25 localhost systemd[1]: Reached target Local File Systems.
Feb 06 11:57:25 localhost systemd[1]: Starting Tell Plymouth To Write Out Runtime Data...
Feb 06 11:57:25 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 11:57:25 localhost systemd[1]: Set Up Additional Binary Formats was skipped because no trigger condition checks were met.
Feb 06 11:57:25 localhost systemd[1]: Starting Create Volatile Files and Directories...
Feb 06 11:57:25 localhost systemd[1]: Finished Tell Plymouth To Write Out Runtime Data.
Feb 06 11:57:25 localhost systemd[1]: Received SIGRTMIN+20 from PID 246 (plymouthd).
Feb 06 11:57:25 localhost kernel: random: crng init done
Feb 06 11:57:25 localhost kernel: random: 1 urandom warning(s) missed due to ratelimiting
Feb 06 11:57:25 localhost systemd[1]: Finished Load/Save Random Seed.
Feb 06 11:57:25 localhost systemd[1]: First Boot Complete was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 11:57:25 localhost systemd[1]: Commit a transient machine-id on disk was skipped because of an unmet condition check (ConditionPathIsMountPoint=/etc/machine-id).
Feb 06 11:57:25 localhost lvm[446]:   pvscan[446] PV /dev/mmcblk2p1 online, VG vg_sys is complete.
Feb 06 11:57:25 localhost lvm[446]:   pvscan[446] VG vg_sys skip autoactivation.
Feb 06 11:57:25 localhost systemd[1]: Finished Create Volatile Files and Directories.
Feb 06 11:57:25 localhost systemd[1]: Starting Set console font and keymap...
Feb 06 11:57:25 localhost systemd[1]: Started Entropy Daemon based on the HAVEGE algorithm.
Feb 06 11:57:25 localhost systemd[1]: Starting Record System Boot/Shutdown in UTMP...
Feb 06 11:57:25 localhost systemd[1]: Finished LVM event activation on device 179:1.
Feb 06 11:57:25 localhost systemd[1]: Finished Set console font and keymap.
Feb 06 11:57:25 localhost systemd[1]: Finished Record System Boot/Shutdown in UTMP.
Feb 06 11:57:25 localhost systemd[1]: Reached target System Initialization.
Feb 06 11:57:25 localhost systemd[1]: Started CUPS Scheduler.
Feb 06 11:57:25 localhost systemd[1]: Started Trigger anacron every hour.
Feb 06 11:57:25 localhost systemd[1]: Started Daily apt download activities.
Feb 06 11:57:25 localhost systemd[1]: Started Daily apt upgrade and clean activities.
Feb 06 11:57:25 localhost systemd[1]: Started Periodic ext4 Online Metadata Check for All Filesystems.
Feb 06 11:57:25 localhost systemd[1]: Started Run ent periodically and on boot.
Feb 06 11:57:25 localhost systemd[1]: Started Discard unused blocks once a week.
Feb 06 11:57:25 localhost systemd[1]: Started Daily rotation of log files.
Feb 06 11:57:25 localhost systemd[1]: Started Daily Cleanup of Temporary Directories.
Feb 06 11:57:25 localhost systemd[1]: Reached target Path Units.
Feb 06 11:57:25 localhost systemd[1]: Reached target Timer Units.
Feb 06 11:57:25 localhost systemd[1]: Listening on CUPS Scheduler.
Feb 06 11:57:25 localhost systemd[1]: Listening on D-Bus System Message Bus Socket.
Feb 06 11:57:25 localhost systemd[1]: Starting Docker Socket for the API...
Feb 06 11:57:25 localhost systemd[1]: TPM2 PCR Barrier (Initialization) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 11:57:25 localhost systemd[1]: Listening on Docker Socket for the API.
Feb 06 11:57:25 localhost systemd[1]: Reached target Socket Units.
Feb 06 11:57:25 localhost systemd[1]: Reached target Basic System.
Feb 06 11:57:25 localhost systemd[1]: System is tainted: cgroupsv1
Feb 06 11:57:25 localhost systemd[1]: Started Run anacron jobs.
Feb 06 11:57:25 localhost systemd[1]: Started Regular background program processing daemon.
Feb 06 11:57:25 localhost cron[461]: (CRON) INFO (pidfile fd = 3)
Feb 06 11:57:25 localhost systemd[1]: Started D-Bus System Message Bus.
Feb 06 11:57:25 localhost anacron[460]: Anacron 2.3 started on 2023-02-06
Feb 06 11:57:25 localhost cron[461]: (CRON) INFO (Running @reboot jobs)
Feb 06 11:57:25 localhost anacron[460]: Normal exit (0 jobs run)
Feb 06 11:57:25 localhost systemd[1]: Starting Network Manager...
Feb 06 11:57:25 localhost systemd[1]: Starting Remove Stale Online ext4 Metadata Check Snapshots...
Feb 06 11:57:25 localhost systemd[1]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 11:57:25 localhost systemd[1]: Started Early OOM Daemon.
Feb 06 11:57:25 localhost systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 11:57:25 localhost systemd[1]: getty on tty2-tty6 if dbus and logind are not available was skipped because of an unmet condition check (ConditionPathExists=!/usr/bin/dbus-daemon).
Feb 06 11:57:25 localhost systemd[1]: Starting Initialize hardware monitoring sensors...
Feb 06 11:57:25 localhost systemd[1]: Started LTTng session daemon.
Feb 06 11:57:25 localhost systemd[1]: Starting User Login Management...
Feb 06 11:57:25 localhost systemd[1]: TPM2 PCR Barrier (User) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 11:57:25 localhost sensors[469]: No sensors found!
Feb 06 11:57:25 localhost sensors[469]: Make sure you loaded all the kernel drivers you need.
Feb 06 11:57:25 localhost sensors[469]: Try sensors-detect to find out which these are.
Feb 06 11:57:25 localhost systemd[1]: Starting Disk Manager...
Feb 06 11:57:25 localhost systemd[1]: Starting USBGuard D-Bus Service...
Feb 06 11:57:25 localhost systemd[1]: Starting USBGuard daemon...
Feb 06 11:57:25 localhost systemd[1]: Starting WPA supplicant...
Feb 06 11:57:25 localhost systemd[1]: anacron.service: Deactivated successfully.
Feb 06 11:57:25 localhost sensors[476]: No sensors found!
Feb 06 11:57:25 localhost sensors[476]: Make sure you loaded all the kernel drivers you need.
Feb 06 11:57:25 localhost sensors[476]: Try sensors-detect to find out which these are.
Feb 06 11:57:25 localhost systemd[1]: Finished Initialize hardware monitoring sensors.
Feb 06 11:57:26 localhost sh[468]: Entropy = 7.999843 bits per byte.
Feb 06 11:57:26 localhost sh[468]: Optimum compression would reduce the size
Feb 06 11:57:26 localhost sh[468]: of this 1048576 byte file by 0 percent.
Feb 06 11:57:26 localhost sh[468]: Chi square distribution for 1048576 samples is 228.35, and randomly
Feb 06 11:57:26 localhost sh[468]: would exceed this value 88.38 percent of the times.
Feb 06 11:57:26 localhost sh[468]: Arithmetic mean value of data bytes is 127.4892 (127.5 = random).
Feb 06 11:57:26 localhost sh[468]: Monte Carlo value for Pi is 3.143498014 (error 0.06 percent).
Feb 06 11:57:26 localhost sh[468]: Serial correlation coefficient is 0.001128 (totally uncorrelated = 0.0).
Feb 06 11:57:26 localhost systemd[1]: ent.service: Deactivated successfully.
Feb 06 11:57:26 localhost systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 11:57:26 localhost systemd[1]: Started WPA supplicant.
Feb 06 11:57:26 localhost wpa_supplicant[475]: Successfully initialized wpa_supplicant
Feb 06 11:57:26 localhost udisksd[472]: udisks daemon version 2.9.2 starting
Feb 06 11:57:26 localhost udisksd[472]: failed to load module crypto: libbd_crypto.so.2: cannot open shared object file: No such file or directory
Feb 06 11:57:26 localhost udisksd[472]: failed to load module mdraid: libbd_mdraid.so.2: cannot open shared object file: No such file or directory
Feb 06 11:57:26 localhost kernel: LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
Feb 06 11:57:26 localhost systemd[1]: Started USBGuard D-Bus Service.
Feb 06 11:57:26 localhost udisksd[472]: Failed to load the 'mdraid' libblockdev plugin
Feb 06 11:57:26 localhost udisksd[472]: Failed to load the 'crypto' libblockdev plugin
Feb 06 11:57:26 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.PolicyKit1' unit='polkit.service' requested by ':1.2' (uid=0 pid=472 comm="/usr/libexec/udisks2/udisksd " label="kernel")
Feb 06 11:57:26 localhost systemd[1]: Starting Authorization Manager...
Feb 06 11:57:26 localhost systemd[1]: Created slice Slice /system/systemd-backlight.
Feb 06 11:57:26 localhost systemd[1]: Starting Load/Save Screen Backlight Brightness of backlight:backlight...
Feb 06 11:57:26 localhost haveged[455]: haveged: command socket is listening at fd 3
Feb 06 11:57:26 localhost polkitd[487]: started daemon version 0.105 using authority implementation `local' version `0.105'
Feb 06 11:57:26 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.PolicyKit1'
Feb 06 11:57:26 localhost systemd[1]: Started Authorization Manager.
Feb 06 11:57:26 localhost systemd[1]: Finished Load/Save Screen Backlight Brightness of backlight:backlight.
Feb 06 11:57:26 localhost systemd[1]: e2scrub_reap.service: Deactivated successfully.
Feb 06 11:57:26 localhost systemd[1]: Finished Remove Stale Online ext4 Metadata Check Snapshots.
Feb 06 11:57:26 localhost NetworkManager[463]: <info>  [1675684646.5627] NetworkManager (version 1.30.6) is starting... (for the first time)
Feb 06 11:57:26 localhost NetworkManager[463]: <info>  [1675684646.5630] Read config: /etc/NetworkManager/NetworkManager.conf (lib: no-mac-addr-change.conf)
Feb 06 11:57:26 localhost systemd[1]: Started Network Manager.
Feb 06 11:57:26 localhost systemd[1]: Reached target Network.
Feb 06 11:57:26 localhost systemd[1]: Starting Network Manager Wait Online...
Feb 06 11:57:26 localhost NetworkManager[463]: <info>  [1675684646.5893] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
Feb 06 11:57:26 localhost systemd[1]: Starting Crossbar.io service...
Feb 06 11:57:26 localhost systemd[1]: Starting containerd container runtime...
Feb 06 11:57:26 localhost earlyoom[465]: earlyoom v1.6.2
Feb 06 11:57:26 localhost earlyoom[465]: mem total: 1980 MiB, swap total:    0 MiB
Feb 06 11:57:26 localhost earlyoom[465]: sending SIGTERM when mem <= 20.00% and swap <= 10.00%,
Feb 06 11:57:26 localhost earlyoom[465]:         SIGKILL when mem <= 10.00% and swap <=  5.00%
Feb 06 11:57:26 localhost systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 06 11:57:26 localhost systemd[1]: Starting Simple Network Management Protocol (SNMP) Daemon....
Feb 06 11:57:26 localhost systemd[1]: Starting OpenBSD Secure Shell server...
Feb 06 11:57:26 localhost systemd[1]: Starting Permit User Sessions...
Feb 06 11:57:26 localhost systemd[1]: Started Simple Network Management Protocol (SNMP) Daemon..
Feb 06 11:57:26 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 11:57:26 localhost systemd[1]: Finished Permit User Sessions.
Feb 06 11:57:26 localhost earlyoom[465]: mem avail:  1730 of  1980 MiB (87.38%), swap free:    0 of    0 MiB ( 0.00%)
Feb 06 11:57:26 localhost systemd[1]: Starting Hold until boot process finishes up...
Feb 06 11:57:26 localhost systemd[1]: Starting Terminate Plymouth Boot Screen...
Feb 06 11:57:26 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 11:57:26 localhost systemd[1]: Started Weston Wayland Compositor (on tty7).
Feb 06 11:57:26 localhost systemd[1]: Received SIGRTMIN+21 from PID 246 (plymouthd).
Feb 06 11:57:26 localhost systemd[1]: Finished Hold until boot process finishes up.
Feb 06 11:57:26 localhost systemd[1]: Finished Terminate Plymouth Boot Screen.
Feb 06 11:57:26 localhost systemd[1]: Started Getty on tty1.
Feb 06 11:57:26 localhost systemd[1]: Started Serial Getty on ttymxc1.
Feb 06 11:57:26 localhost systemd[1]: Reached target Login Prompts.
Feb 06 11:57:26 localhost NetworkManager[463]: <info>  [1675684646.7453] manager[0xaaab19bce040]: monitoring kernel firmware directory '/lib/firmware'.
Feb 06 11:57:26 localhost NetworkManager[463]: <info>  [1675684646.7765] monitoring ifupdown state file '/run/network/ifstate'.
Feb 06 11:57:26 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.5' (uid=0 pid=463 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 11:57:26 localhost systemd[1]: Starting Hostname Service...
Feb 06 11:57:26 localhost kernel: caam-snvs 30370000.caam-snvs: violation handlers armed - init state
Feb 06 11:57:27 localhost systemd[524]: pam_unix(login:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 11:57:27 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.login1' unit='dbus-org.freedesktop.login1.service' requested by ':1.7' (uid=0 pid=524 comm="(n-launch) " label="kernel")
Feb 06 11:57:27 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 11:57:27 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 11:57:27 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 11:57:27 localhost systemd-logind[471]: New seat seat0.
Feb 06 11:57:27 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.login1'
Feb 06 11:57:27 localhost systemd[1]: Started User Login Management.
Feb 06 11:57:27 localhost sshd[534]: Server listening on 0.0.0.0 port 22.
Feb 06 11:57:27 localhost sshd[534]: Server listening on :: port 22.
Feb 06 11:57:27 localhost systemd[1]: Created slice User Slice of UID 500.
Feb 06 11:57:27 localhost systemd[1]: Starting User Runtime Directory /run/user/500...
Feb 06 11:57:27 localhost systemd[1]: Started OpenBSD Secure Shell server.
Feb 06 11:57:27 localhost systemd-logind[471]: New session 1 of user industrial.
Feb 06 11:57:27 localhost systemd[1]: usbguard.service: Supervising process 541 which is not our child. We'll most likely not notice when it exits.
Feb 06 11:57:27 localhost systemd[1]: Started USBGuard daemon.
Feb 06 11:57:27 localhost usbguard-daemon[541]: uid=0 pid=474 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' type='Device.Present'
Feb 06 11:57:27 localhost usbguard-daemon[541]: uid=0 pid=474 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 11:57:27 localhost usbguard-daemon[541]: uid=0 pid=474 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' type='Device.Present'
Feb 06 11:57:27 localhost usbguard-daemon[541]: uid=0 pid=474 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 11:57:27 localhost systemd[1]: Finished User Runtime Directory /run/user/500.
Feb 06 11:57:27 localhost systemd[1]: Starting User Manager for UID 500...
Feb 06 11:57:27 localhost systemd[1]: nginx.service: Failed to parse PID from file /run/nginx.pid: Invalid argument
Feb 06 11:57:27 localhost systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 06 11:57:27 localhost systemd[545]: pam_unix(systemd-user:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 11:57:27 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 11:57:27 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 11:57:27 localhost kernel: caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
Feb 06 11:57:27 localhost kernel: caam 30900000.crypto: job rings = 3, qi = 0
Feb 06 11:57:27 localhost containerd[516]: time="2023-02-06T11:57:27.549902875Z" level=info msg="starting containerd" revision="1.4.13~ds1-1~deb11u3" version="1.4.13~ds1"
Feb 06 11:57:27 localhost systemd[1]: Started Disk Manager.
Feb 06 11:57:27 localhost udisksd[472]: Acquired the name org.freedesktop.UDisks2 on the system message bus
Feb 06 11:57:27 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.hostname1'
Feb 06 11:57:27 localhost systemd[1]: Started Hostname Service.
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8229] hostname: hostname: using hostnamed
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8253] dns-mgr[0xaaab19bc4170]: init: dns=default,systemd-resolved rc-manager=symlink (auto)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8271] manager[0xaaab19bce040]: rfkill: Wi-Fi hardware radio set enabled
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8272] manager[0xaaab19bce040]: rfkill: WWAN hardware radio set enabled
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8580] Loaded device plugin: NMAtmManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-adsl.so)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8961] Loaded device plugin: NMBluezManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-bluetooth.so)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.8994] Loaded device plugin: NMWwanFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wwan.so)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9054] Loaded device plugin: NMWifiFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wifi.so)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9152] Loaded device plugin: NMTeamFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-team.so)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9170] manager: rfkill: Wi-Fi enabled by radio killswitch; enabled by state file
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9303] manager: rfkill: WWAN enabled by radio killswitch; enabled by state file
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9314] manager: Networking is enabled by state file
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9325] dhcp-init: Using DHCP client 'internal'
Feb 06 11:57:27 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.5' (uid=0 pid=463 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9390] settings: Loaded settings plugin: ifupdown ("/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-settings-plugin-ifupdown.so")
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9392] settings: Loaded settings plugin: keyfile (internal)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9396] ifupdown: management mode: unmanaged
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9398] ifupdown:       interface-parser: parsing file /etc/network/interfaces
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9399] ifupdown:       interface-parser: finished parsing file /etc/network/interfaces
Feb 06 11:57:27 localhost systemd[1]: Starting Network Manager Script Dispatcher Service...
Feb 06 11:57:27 localhost haveged[455]: haveged: ver: 1.9.14; arch: generic; vend: ; build: (gcc 10.2.1 CTV); collect: 128K
Feb 06 11:57:27 localhost haveged[455]: haveged: cpu: (VC); data: 16K (D V); inst: 16K (D V); idx: 11/40; sz: 15456/64452
Feb 06 11:57:27 localhost haveged[455]: haveged: tot tests(BA8): A:1/1 B:1/1 continuous tests(B):  last entropy estimate 7.99893
Feb 06 11:57:27 localhost haveged[455]: haveged: fills: 0, generated: 0
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9638] device (lo): carrier: link connected
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9653] manager: (lo): new Generic device (/org/freedesktop/NetworkManager/Devices/1)
Feb 06 11:57:27 localhost NetworkManager[463]: <info>  [1675684647.9751] manager: (end0): new Ethernet device (/org/freedesktop/NetworkManager/Devices/2)
Feb 06 11:57:28 localhost NetworkManager[463]: <info>  [1675684648.0028] settings: (end0): created default wired connection 'Wired connection 1'
Feb 06 11:57:28 localhost NetworkManager[463]: <info>  [1675684648.0082] device (end0): state change: unmanaged -> unavailable (reason 'managed', sys-iface-state: 'external')
Feb 06 11:57:28 localhost kernel: Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
Feb 06 11:57:28 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Feb 06 11:57:28 localhost systemd[1]: Started Network Manager Script Dispatcher Service.
Feb 06 11:57:28 localhost NetworkManager[463]: <warn>  [1675684648.0546] Error: failed to open /run/network/ifstate
Feb 06 11:57:28 localhost systemd[545]: Queued start job for default target Main User Target.
Feb 06 11:57:28 localhost systemd[545]: Created slice User Application Slice.
Feb 06 11:57:28 localhost systemd[545]: Reached target Paths.
Feb 06 11:57:28 localhost systemd[545]: Reached target Timers.
Feb 06 11:57:28 localhost systemd[545]: Starting D-Bus User Message Bus Socket...
Feb 06 11:57:28 localhost systemd[545]: Listening on GnuPG network certificate management daemon.
Feb 06 11:57:28 localhost systemd[545]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 11:57:28 localhost systemd[545]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 11:57:28 localhost systemd[545]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 11:57:28 localhost systemd[545]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.117037625Z" level=info msg="loading plugin \"io.containerd.content.v1.content\"..." type=io.containerd.content.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.120463250Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.aufs\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.141812875Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.aufs\"..." error="aufs is not supported (modprobe aufs failed: exit status 1 \"modprobe: FATAL: Module aufs not found in directory /lib/modules/5.10.158-cip22+ind1\\n\"): skip plugin" type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.142186750Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.144499500Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.btrfs (overlay) must be a btrfs filesystem to be used with the btrfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.144827625Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.devmapper\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.154907375Z" level=warning msg="failed to load plugin io.containerd.snapshotter.v1.devmapper" error="devmapper not configured"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.156795750Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.native\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.162910250Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.overlayfs\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.164979625Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.zfs\"..." type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost systemd[545]: Listening on D-Bus User Message Bus Socket.
Feb 06 11:57:28 localhost systemd[545]: Reached target Sockets.
Feb 06 11:57:28 localhost systemd[545]: Reached target Basic System.
Feb 06 11:57:28 localhost systemd[1]: Started User Manager for UID 500.
Feb 06 11:57:28 localhost systemd[1]: Started Session 1 of User industrial.
Feb 06 11:57:28 localhost systemd[545]: Reached target Main User Target.
Feb 06 11:57:28 localhost systemd[545]: Startup finished in 713ms.
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.166523250Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.zfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.zfs must be a zfs filesystem to be used with the zfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.180036125Z" level=info msg="loading plugin \"io.containerd.metadata.v1.bolt\"..." type=io.containerd.metadata.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.180324750Z" level=warning msg="could not use snapshotter devmapper in metadata plugin" error="devmapper not configured"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.180433875Z" level=info msg="metadata content store policy set" policy=shared
Feb 06 11:57:28 localhost networking[480]: warning: vrf: cache v4: cmd '/bin/ip rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 11:57:28 localhost networking[480]: Dump terminated
Feb 06 11:57:28 localhost networking[480]: )
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.194465375Z" level=info msg="loading plugin \"io.containerd.differ.v1.walking\"..." type=io.containerd.differ.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.194705000Z" level=info msg="loading plugin \"io.containerd.gc.v1.scheduler\"..." type=io.containerd.gc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.194933750Z" level=info msg="loading plugin \"io.containerd.service.v1.introspection-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.196773375Z" level=info msg="loading plugin \"io.containerd.service.v1.containers-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.196964875Z" level=info msg="loading plugin \"io.containerd.service.v1.content-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197062875Z" level=info msg="loading plugin \"io.containerd.service.v1.diff-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197148250Z" level=info msg="loading plugin \"io.containerd.service.v1.images-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197220375Z" level=info msg="loading plugin \"io.containerd.service.v1.leases-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197291000Z" level=info msg="loading plugin \"io.containerd.service.v1.namespaces-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197403375Z" level=info msg="loading plugin \"io.containerd.service.v1.snapshots-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.197480500Z" level=info msg="loading plugin \"io.containerd.runtime.v1.linux\"..." type=io.containerd.runtime.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.198170125Z" level=info msg="loading plugin \"io.containerd.runtime.v2.task\"..." type=io.containerd.runtime.v2
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.198915875Z" level=info msg="loading plugin \"io.containerd.monitor.v1.cgroups\"..." type=io.containerd.monitor.v1
Feb 06 11:57:28 localhost networking[480]: warning: vrf: cache v6: cmd '/bin/ip -6 rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 11:57:28 localhost networking[480]: Dump terminated
Feb 06 11:57:28 localhost networking[480]: )
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.206927000Z" level=info msg="loading plugin \"io.containerd.service.v1.tasks-service\"..." type=io.containerd.service.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207241625Z" level=info msg="loading plugin \"io.containerd.internal.v1.restart\"..." type=io.containerd.internal.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207576625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.containers\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207705125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.content\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207775625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.diff\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207839250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.events\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.207903375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.healthcheck\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.208016625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.images\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.208086250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.leases\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.208157250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.namespaces\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.208247625Z" level=info msg="loading plugin \"io.containerd.internal.v1.opt\"..." type=io.containerd.internal.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.211415125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.snapshots\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.211679250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.tasks\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.211794375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.version\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.211895500Z" level=info msg="loading plugin \"io.containerd.grpc.v1.cri\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.212796500Z" level=info msg="Start cri plugin with config {PluginConfig:{ContainerdConfig:{Snapshotter:overlayfs DefaultRuntimeName:runc DefaultRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} UntrustedWorkloadRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} Runtimes:map[runc:{Type:io.containerd.runc.v2 Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:0x4000468ea0 PrivilegedWithoutHostDevices:false BaseRuntimeSpec:}] NoPivot:false DisableSnapshotAnnotations:true DiscardUnpackedLayers:false} CniConfig:{NetworkPluginBinDir:/usr/lib/cni NetworkPluginConfDir:/etc/cni/net.d NetworkPluginMaxConfNum:1 NetworkPluginConfTemplate:} Registry:{Mirrors:map[docker.io:{Endpoints:[https://registry-1.docker.io]}] Configs:map[] Auths:map[] Headers:map[]} ImageDecryption:{KeyModel:} DisableTCPService:true StreamServerAddress:127.0.0.1 StreamServerPort:0 StreamIdleTimeout:4h0m0s EnableSelinux:false SelinuxCategoryRange:1024 SandboxImage:k8s.gcr.io/pause:3.2 StatsCollectPeriod:10 SystemdCgroup:false EnableTLSStreaming:false X509KeyPairStreaming:{TLSCertFile: TLSKeyFile:} MaxContainerLogLineSize:16384 DisableCgroup:false DisableApparmor:false RestrictOOMScoreAdj:false MaxConcurrentDownloads:3 DisableProcMount:false UnsetSeccompProfile: TolerateMissingHugetlbController:true DisableHugetlbController:true IgnoreImageDefinedVolumes:false} ContainerdRootDir:/var/lib/containerd ContainerdEndpoint:/run/containerd/containerd.sock RootDir:/var/lib/containerd/io.containerd.grpc.v1.cri StateDir:/run/containerd/io.containerd.grpc.v1.cri}"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.213196750Z" level=info msg="Connect containerd service"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.213576750Z" level=info msg="Get image filesystem path \"/var/lib/containerd/io.containerd.snapshotter.v1.overlayfs\""
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.218822500Z" level=error msg="failed to load cni during init, please check CRI plugin status before setting up network for pods" error="cni config load failed: no network config found in /etc/cni/net.d: cni plugin not initialized: failed to load cni config"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.219178000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.introspection\"..." type=io.containerd.grpc.v1
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.219291125Z" level=info msg="Start subscribing containerd event"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.219619000Z" level=info msg="Start recovering state"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220074250Z" level=info msg="Start event monitor"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220211625Z" level=info msg="Start snapshots syncer"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220270250Z" level=info msg="Start cni network conf syncer"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220308500Z" level=info msg="Start streaming server"
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220487250Z" level=info msg=serving... address=/run/containerd/containerd.sock.ttrpc
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.220711125Z" level=info msg=serving... address=/run/containerd/containerd.sock
Feb 06 11:57:28 localhost systemd[1]: Started containerd container runtime.
Feb 06 11:57:28 localhost containerd[516]: time="2023-02-06T11:57:28.226089000Z" level=info msg="containerd successfully booted in 0.680814s"
Feb 06 11:57:28 localhost weston-launch[616]: Internal warning: debug scope 'drm-backend' has not been destroyed.
Feb 06 11:57:28 localhost systemd[1]: weston@industrial.service: Main process exited, code=exited, status=1/FAILURE
Feb 06 11:57:28 localhost systemd[1]: weston@industrial.service: Failed with result 'exit-code'.
Feb 06 11:57:28 localhost systemd[1]: session-1.scope: Deactivated successfully.
Feb 06 11:57:28 localhost systemd-logind[471]: Session 1 logged out. Waiting for processes to exit.
Feb 06 11:57:28 localhost systemd-logind[471]: Removed session 1.
Feb 06 11:57:28 localhost systemd[1]: Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
Feb 06 11:57:28 localhost kernel: caam_jr 30901000.jr: failed to flush job ring 0
Feb 06 11:57:28 localhost kernel: caam_jr: probe of 30901000.jr failed with error -5
Feb 06 11:57:28 localhost kernel: caam algorithms registered in /proc/crypto
Feb 06 11:57:28 localhost kernel: caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
Feb 06 11:57:28 localhost kernel: caam 30900000.crypto: registering rng-caam
Feb 06 11:57:28 localhost kernel: Device caam-keygen registered
Feb 06 11:57:28 localhost kernel: fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
Feb 06 11:57:29 localhost systemd[1]: Finished Network initialization.
Feb 06 11:57:31 localhost crossbar[510]: Directory /web already exists - SKIPPING
Feb 06 11:57:31 localhost crossbar[510]: Directory /.crossbar already exists - SKIPPING
Feb 06 11:57:31 localhost crossbar[510]: File /README.md already exists - SKIPPING
Feb 06 11:57:31 localhost crossbar[510]: File /web/README.md already exists - SKIPPING
Feb 06 11:57:31 localhost crossbar[510]: File /.crossbar/config.json already exists - SKIPPING
Feb 06 11:57:32 localhost kernel: fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
Feb 06 11:57:32 localhost kernel: IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1013] device (end0): carrier: link connected
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1055] device (end0): state change: unavailable -> disconnected (reason 'carrier-changed', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1097] policy: auto-activating connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1168] device (end0): Activation: starting connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1196] device (end0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1218] manager: NetworkManager state is now CONNECTING
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1237] device (end0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1267] device (end0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1295] dhcp4 (end0): activation: beginning transaction (timeout in 45 seconds)
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1897] dhcp4 (end0): state changed unknown -> bound, address=134.86.254.71
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.1942] device (end0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2049] device (end0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2076] device (end0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2098] manager: NetworkManager state is now CONNECTED_LOCAL
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2240] manager: NetworkManager state is now CONNECTED_SITE
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2256] policy: set 'Wired connection 1' (end0) as default for IPv4 routing and DNS
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2410] device (end0): Activation: successful, device activated.
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2482] manager: NetworkManager state is now CONNECTED_GLOBAL
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2538] manager: startup complete
Feb 06 11:57:32 localhost systemd[1]: Finished Network Manager Wait Online.
Feb 06 11:57:32 localhost systemd[1]: Reached target Network is Online.
Feb 06 11:57:32 localhost NetworkManager[463]: <info>  [1675684652.2775] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 11:57:32 localhost.localdomain systemd-hostnamed[527]: Hostname set to <localhost.localdomain> (transient)
Feb 06 11:57:32 localhost.localdomain systemd[1]: Starting Docker Application Container Engine...
Feb 06 11:57:32 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 11:57:32 localhost.localdomain crossbar[510]: Initializing node in directory '/'
Feb 06 11:57:32 localhost.localdomain crossbar[510]: Using template from '/usr/lib/python3/dist-packages/crossbar/node/templates/default'
Feb 06 11:57:32 localhost.localdomain crossbar[510]: Node key files exist and are valid. Node public key is 0x4e11fad1afb274d91bf345271e5583001f0a81c6c87190238e95b19111494c5a
Feb 06 11:57:32 localhost.localdomain crossbar[510]: Node key loaded from /.crossbar/key.priv
Feb 06 11:57:32 localhost.localdomain crossbar[510]: Application template initialized
Feb 06 11:57:32 localhost.localdomain crossbar[510]: To start your node, run 'crossbar start --cbdir /.crossbar'
Feb 06 11:57:32 localhost.localdomain ntpd[723]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 11:57:32 localhost.localdomain ntpd[723]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 11:57:32 localhost.localdomain ntpd[723]: ----------------------------------------------------
Feb 06 11:57:32 localhost.localdomain ntpd[723]: ntp-4 is maintained by Network Time Foundation,
Feb 06 11:57:32 localhost.localdomain ntpd[723]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 11:57:32 localhost.localdomain ntpd[723]: corporation.  Support and training for ntp-4 are
Feb 06 11:57:32 localhost.localdomain ntpd[723]: available at https://www.nwtime.org/support
Feb 06 11:57:32 localhost.localdomain ntpd[723]: ----------------------------------------------------
Feb 06 11:57:32 localhost.localdomain ntpd[739]: proto: precision = 0.125 usec (-23)
Feb 06 11:57:32 localhost.localdomain ntpd[739]: basedate set to 2020-09-11
Feb 06 11:57:32 localhost.localdomain ntpd[739]: gps base set to 2020-09-13 (week 2123)
Feb 06 11:57:32 localhost.localdomain ntpd[739]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 11:57:32 localhost.localdomain ntpd[739]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listen normally on 4 lo [::1]:123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 11:57:32 localhost.localdomain ntpd[739]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 11:57:32 localhost.localdomain ntpd[739]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 11:57:32 localhost.localdomain ntpd[739]: Listening on routing socket on fd #21 for interface updates
Feb 06 11:57:32 localhost.localdomain ntpd[739]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:32 localhost.localdomain ntpd[739]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:32 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 11:57:32 localhost.localdomain systemd[1]: Started Crossbar.io service.
Feb 06 11:57:32 localhost.localdomain ntpd[739]: ntpd exiting on signal 15 (Terminated)
Feb 06 11:57:32 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 11:57:32 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 11:57:32 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 11:57:32 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 11:57:32 localhost.localdomain ntpd[750]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 11:57:32 localhost.localdomain ntpd[750]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -c /run/ntp.conf.dhcp -u 102:108
Feb 06 11:57:32 localhost.localdomain ntpd[750]: ----------------------------------------------------
Feb 06 11:57:32 localhost.localdomain ntpd[750]: ntp-4 is maintained by Network Time Foundation,
Feb 06 11:57:32 localhost.localdomain ntpd[750]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 11:57:32 localhost.localdomain ntpd[750]: corporation.  Support and training for ntp-4 are
Feb 06 11:57:32 localhost.localdomain ntpd[750]: available at https://www.nwtime.org/support
Feb 06 11:57:32 localhost.localdomain ntpd[750]: ----------------------------------------------------
Feb 06 11:57:32 localhost.localdomain ntpd[756]: proto: precision = 0.125 usec (-23)
Feb 06 11:57:32 localhost.localdomain ntpd[756]: basedate set to 2020-09-11
Feb 06 11:57:32 localhost.localdomain ntpd[756]: gps base set to 2020-09-13 (week 2123)
Feb 06 11:57:32 localhost.localdomain ntpd[756]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 11:57:32 localhost.localdomain ntpd[756]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listen normally on 4 lo [::1]:123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 11:57:32 localhost.localdomain ntpd[756]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 11:57:32 localhost.localdomain ntpd[756]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 11:57:32 localhost.localdomain ntpd[756]: Listening on routing socket on fd #21 for interface updates
Feb 06 11:57:32 localhost.localdomain ntpd[756]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:32 localhost.localdomain ntpd[756]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:32 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.287422564Z" level=info msg="Starting up"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.297770151Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.297934526Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.298043150Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.298100400Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.314303716Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.314453465Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.314570965Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.314635964Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.507292135Z" level=warning msg="Usage of loopback devices is strongly discouraged for production use. Please use `--storage-opt dm.thinpooldev` or use `man dockerd` to refer to dm.thinpooldev section." storage-driver=devicemapper
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.599215424Z" level=warning msg="Base device already exists and has filesystem ext4 on it. User specified filesystem  will be ignored." storage-driver=devicemapper
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.639386527Z" level=info msg="[graphdriver] using prior storage driver: devicemapper"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.639570901Z" level=warning msg="[graphdriver] WARNING: the devicemapper storage-driver is deprecated, and will be removed in a future release"
Feb 06 11:57:33 localhost.localdomain ntpd[756]: bind(24) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 11:57:33 localhost.localdomain ntpd[756]: unable to create socket on end0 (6) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 11:57:33 localhost.localdomain ntpd[756]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.662961441Z" level=warning msg="Your kernel does not support cgroup blkio weight"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.663189065Z" level=warning msg="Your kernel does not support cgroup blkio weight_device"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.663313939Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_bps_device"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.663355689Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_bps_device"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.663415189Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_iops_device"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.663468564Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_iops_device"
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.665111308Z" level=info msg="Loading containers: start."
Feb 06 11:57:33 localhost.localdomain kernel: bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
Feb 06 11:57:33 localhost.localdomain kernel: Bridge firewalling registered
Feb 06 11:57:33 localhost.localdomain NetworkManager[463]: <info>  [1675684653.7643] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 11:57:33 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:33.991030116Z" level=warning msg="Could not load necessary modules for IPSEC rules: protocol not supported"
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.0297] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2063] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2220] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2255] device (docker0): Activation: starting connection 'docker0' (96121cd5-918d-4bcb-945b-af9276ec82cd)
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2263] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2280] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2295] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2325] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2426] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2439] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2499] device (docker0): Activation: successful, device activated.
Feb 06 11:57:34 localhost.localdomain NetworkManager[463]: <info>  [1675684654.2549] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 11:57:34 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:34.375013087Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip can be used to set a preferred IP address"
Feb 06 11:57:34 localhost.localdomain ntpd[756]: ntpd exiting on signal 15 (Terminated)
Feb 06 11:57:34 localhost.localdomain ntpd[756]: 134.86.61.33 local addr 134.86.254.71 -> <null>
Feb 06 11:57:34 localhost.localdomain ntpd[756]: 137.202.187.89 local addr 134.86.254.71 -> <null>
Feb 06 11:57:34 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 11:57:34 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 11:57:34 localhost.localdomain ntpd[905]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 11:57:34 localhost.localdomain ntpd[905]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 11:57:34 localhost.localdomain ntpd[905]: ----------------------------------------------------
Feb 06 11:57:34 localhost.localdomain ntpd[905]: ntp-4 is maintained by Network Time Foundation,
Feb 06 11:57:34 localhost.localdomain ntpd[905]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 11:57:34 localhost.localdomain ntpd[905]: corporation.  Support and training for ntp-4 are
Feb 06 11:57:34 localhost.localdomain ntpd[905]: available at https://www.nwtime.org/support
Feb 06 11:57:34 localhost.localdomain ntpd[905]: ----------------------------------------------------
Feb 06 11:57:34 localhost.localdomain ntpd[919]: proto: precision = 0.125 usec (-23)
Feb 06 11:57:34 localhost.localdomain ntpd[919]: basedate set to 2020-09-11
Feb 06 11:57:34 localhost.localdomain ntpd[919]: gps base set to 2020-09-13 (week 2123)
Feb 06 11:57:34 localhost.localdomain ntpd[919]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 11:57:34 localhost.localdomain ntpd[919]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen normally on 4 lo [::1]:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listen normally on 5 end0 [fe80::7e63:9923:2c77:e358%2]:123
Feb 06 11:57:34 localhost.localdomain ntpd[919]: Listening on routing socket on fd #22 for interface updates
Feb 06 11:57:34 localhost.localdomain ntpd[919]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:34 localhost.localdomain ntpd[919]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 11:57:34 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 11:57:34 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:34.579771838Z" level=info msg="Loading containers: done."
Feb 06 11:57:34 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:34.722181567Z" level=info msg="Docker daemon" commit=363e9a8 graphdriver(s)=devicemapper version=20.10.5+dfsg1
Feb 06 11:57:34 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:34.723375188Z" level=info msg="Daemon has completed initialization"
Feb 06 11:57:34 localhost.localdomain systemd[1]: Started Docker Application Container Engine.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Reached target Multi-User System.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Reached target Graphical Interface.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Reached target MEL OS Boot Complete.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Starting Record Runlevel Change in UTMP...
Feb 06 11:57:34 localhost.localdomain dockerd[722]: time="2023-02-06T11:57:34.822772574Z" level=info msg="API listen on /var/run/docker.sock"
Feb 06 11:57:34 localhost.localdomain systemd[1]: systemd-update-utmp-runlevel.service: Deactivated successfully.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Finished Record Runlevel Change in UTMP.
Feb 06 11:57:34 localhost.localdomain systemd[1]: Startup finished in 4.118s (kernel) + 11.640s (userspace) = 15.758s.
Feb 06 11:57:35 localhost.localdomain ntpd[919]: Soliciting pool server 104.131.155.175
Feb 06 11:57:36 localhost.localdomain ntpd[919]: Soliciting pool server 69.164.213.136
Feb 06 11:57:36 localhost.localdomain ntpd[919]: Soliciting pool server 45.79.111.167
Feb 06 11:57:37 localhost.localdomain ntpd[919]: Soliciting pool server 168.61.215.74
Feb 06 11:57:37 localhost.localdomain ntpd[919]: Soliciting pool server 64.79.100.197
Feb 06 11:57:37 localhost.localdomain ntpd[919]: Soliciting pool server 162.159.200.123
Feb 06 11:57:38 localhost.localdomain ntpd[919]: Soliciting pool server 198.60.22.240
Feb 06 11:57:38 localhost.localdomain ntpd[919]: Soliciting pool server 138.197.15.27
Feb 06 11:57:38 localhost.localdomain ntpd[919]: Soliciting pool server 74.6.168.72
Feb 06 11:57:38 localhost.localdomain ntpd[919]: Soliciting pool server 73.61.36.59
Feb 06 11:57:38 localhost.localdomain systemd[1]: Stopping User Manager for UID 500...
Feb 06 11:57:38 localhost.localdomain systemd[545]: Activating special unit Exit the Session...
Feb 06 11:57:38 localhost.localdomain systemd[545]: Stopped target Main User Target.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Stopped target Basic System.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Stopped target Paths.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Stopped target Sockets.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Stopped target Timers.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed D-Bus User Message Bus Socket.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed GnuPG network certificate management daemon.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 11:57:38 localhost.localdomain systemd-journald[358]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2732 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
Feb 06 11:57:38 localhost.localdomain systemd-journald[358]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Closed GnuPG cryptographic agent and passphrase cache.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Removed slice User Application Slice.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Reached target Shutdown.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Finished Exit the Session.
Feb 06 11:57:38 localhost.localdomain systemd[545]: Reached target Exit the Session.
Feb 06 11:57:38 localhost.localdomain systemd[1]: user@500.service: Deactivated successfully.
Feb 06 11:57:38 localhost.localdomain systemd[1]: Stopped User Manager for UID 500.
Feb 06 11:57:38 localhost.localdomain systemd[1]: Stopping User Runtime Directory /run/user/500...
Feb 06 11:57:38 localhost.localdomain systemd[1]: run-user-500.mount: Deactivated successfully.
Feb 06 11:57:38 localhost.localdomain systemd[1]: user-runtime-dir@500.service: Deactivated successfully.
Feb 06 11:57:38 localhost.localdomain systemd[1]: Stopped User Runtime Directory /run/user/500.
Feb 06 11:57:38 localhost.localdomain systemd[1]: Removed slice User Slice of UID 500.
Feb 06 11:57:39 localhost.localdomain ntpd[919]: Soliciting pool server 38.229.57.9
Feb 06 11:57:39 localhost.localdomain ntpd[919]: Soliciting pool server 45.55.58.103
Feb 06 11:57:39 localhost.localdomain ntpd[919]: Soliciting pool server 152.44.36.235
Feb 06 11:57:40 localhost.localdomain ntpd[919]: Soliciting pool server 5.78.62.36
Feb 06 11:57:40 localhost.localdomain ntpd[919]: Soliciting pool server 5.161.111.190
Feb 06 11:57:41 localhost.localdomain ntpd[919]: Soliciting pool server 40.139.41.69
Feb 06 11:57:41 localhost.localdomain ntpd[919]: Soliciting pool server 2620:2d:4000:1::41
Feb 06 11:57:45 localhost.localdomain systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791f38ae does not match aorg 0000000000.00000000 from server@69.164.213.136 xmt 0xe78b69b8.9a065148
Feb 06 11:57:44 localhost.localdomain systemd-journald[358]: Time jumped backwards, rotating.
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791704bd does not match aorg 0000000000.00000000 from server@45.55.58.103 xmt 0xe78b69b8.9aa126c5
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791b32b5 does not match aorg 0000000000.00000000 from server@138.197.15.27 xmt 0xe78b69b8.9b15c0bf
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.790fba49 does not match aorg 0000000000.00000000 from server@5.161.111.190 xmt 0xe78b69b8.9d86d3af
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791a234c does not match aorg 0000000000.00000000 from server@73.61.36.59 xmt 0xe78b69b8.9fd29537
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.79190d16 does not match aorg 0000000000.00000000 from server@198.60.22.240 xmt 0xe78b69b8.9e7fa13f
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791c3ebf does not match aorg 0000000000.00000000 from server@64.79.100.197 xmt 0xe78b69b8.9d03355f
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.791e4c81 does not match aorg 0000000000.00000000 from server@45.79.111.167 xmt 0xe78b69b8.a1406374
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.7918104b does not match aorg 0000000000.00000000 from server@74.6.168.72 xmt 0xe78b69b8.a4f1353a
Feb 06 11:57:44 localhost.localdomain ntpd[919]: receive: Unexpected origin timestamp 0xe78b69b9.7915e310 does not match aorg 0000000000.00000000 from server@38.229.57.9 xmt 0xe78b69b8.bb33091d
Feb 06 11:57:55 localhost.localdomain systemd[1]: systemd-fsckd.service: Deactivated successfully.
Feb 06 11:58:03 localhost.localdomain systemd[1]: systemd-hostnamed.service: Deactivated successfully.
Feb 06 11:58:18 localhost.localdomain systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 11:58:18 localhost.localdomain sh[970]: Entropy = 7.999830 bits per byte.
Feb 06 11:58:18 localhost.localdomain sh[970]: Optimum compression would reduce the size
Feb 06 11:58:18 localhost.localdomain sh[970]: of this 1048576 byte file by 0 percent.
Feb 06 11:58:18 localhost.localdomain sh[970]: Chi square distribution for 1048576 samples is 246.94, and randomly
Feb 06 11:58:18 localhost.localdomain sh[970]: would exceed this value 62.97 percent of the times.
Feb 06 11:58:18 localhost.localdomain sh[970]: Arithmetic mean value of data bytes is 127.6516 (127.5 = random).
Feb 06 11:58:18 localhost.localdomain sh[970]: Monte Carlo value for Pi is 3.141048969 (error 0.02 percent).
Feb 06 11:58:18 localhost.localdomain sh[970]: Serial correlation coefficient is -0.000712 (totally uncorrelated = 0.0).
Feb 06 11:58:18 localhost.localdomain systemd[1]: ent.service: Deactivated successfully.
Feb 06 11:58:18 localhost.localdomain systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 12:00:11 localhost.localdomain sshd[971]: Accepted publickey for root from 134.86.254.7 port 32872 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:00:11 localhost.localdomain sshd[971]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:00:11 localhost.localdomain systemd[1]: Created slice User Slice of UID 0.
Feb 06 12:00:11 localhost.localdomain systemd[1]: Starting User Runtime Directory /run/user/0...
Feb 06 12:00:11 localhost.localdomain systemd-logind[471]: New session 3 of user root.
Feb 06 12:00:11 localhost.localdomain systemd[1]: Finished User Runtime Directory /run/user/0.
Feb 06 12:00:11 localhost.localdomain systemd[1]: Starting User Manager for UID 0...
Feb 06 12:00:11 localhost.localdomain systemd[974]: pam_unix(systemd-user:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:00:12 localhost.localdomain systemd[974]: Queued start job for default target Main User Target.
Feb 06 12:00:12 localhost.localdomain systemd[974]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Created slice User Application Slice.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Reached target Paths.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Reached target Timers.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Starting D-Bus User Message Bus Socket...
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on GnuPG network certificate management daemon.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Listening on D-Bus User Message Bus Socket.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Reached target Sockets.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Reached target Basic System.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Reached target Main User Target.
Feb 06 12:00:12 localhost.localdomain systemd[974]: Startup finished in 483ms.
Feb 06 12:00:12 localhost.localdomain systemd[1]: Started User Manager for UID 0.
Feb 06 12:00:12 localhost.localdomain systemd[1]: Started Session 3 of User root.
Feb 06 12:00:19 localhost.localdomain sshd[971]: Received disconnect from 134.86.254.7 port 32872:11: disconnected by user
Feb 06 12:00:19 localhost.localdomain sshd[971]: Disconnected from user root 134.86.254.7 port 32872
Feb 06 12:00:19 localhost.localdomain sshd[971]: pam_unix(sshd:session): session closed for user root
Feb 06 12:00:19 localhost.localdomain systemd[1]: session-3.scope: Deactivated successfully.
Feb 06 12:00:19 localhost.localdomain systemd-logind[471]: Session 3 logged out. Waiting for processes to exit.
Feb 06 12:00:19 localhost.localdomain systemd-logind[471]: Removed session 3.
Feb 06 12:00:20 localhost.localdomain sshd[1000]: Accepted publickey for root from 134.86.254.7 port 60472 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:00:20 localhost.localdomain sshd[1000]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:00:20 localhost.localdomain systemd-logind[471]: New session 5 of user root.
Feb 06 12:00:20 localhost.localdomain systemd[1]: Started Session 5 of User root.
Feb 06 12:01:21 localhost.localdomain sshd[1000]: Received disconnect from 134.86.254.7 port 60472:11: disconnected by user
Feb 06 12:01:21 localhost.localdomain sshd[1000]: Disconnected from user root 134.86.254.7 port 60472
Feb 06 12:01:21 localhost.localdomain sshd[1000]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:21 localhost.localdomain systemd[1]: session-5.scope: Deactivated successfully.
Feb 06 12:01:21 localhost.localdomain systemd-logind[471]: Session 5 logged out. Waiting for processes to exit.
Feb 06 12:01:21 localhost.localdomain systemd-logind[471]: Removed session 5.
Feb 06 12:01:22 localhost.localdomain sshd[1013]: error: kex_exchange_identification: Connection closed by remote host
Feb 06 12:01:22 localhost.localdomain sshd[1013]: Connection closed by 134.86.254.7 port 50310
Feb 06 12:01:22 localhost.localdomain sshd[1014]: Connection closed by authenticating user root 134.86.254.7 port 50326 [preauth]
Feb 06 12:01:22 localhost.localdomain sshd[1016]: Accepted publickey for root from 134.86.254.7 port 50332 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:22 localhost.localdomain sshd[1016]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: New session 6 of user root.
Feb 06 12:01:22 localhost.localdomain systemd[1]: Started Session 6 of User root.
Feb 06 12:01:22 localhost.localdomain sshd[1016]: Received disconnect from 134.86.254.7 port 50332:11: disconnected by user
Feb 06 12:01:22 localhost.localdomain sshd[1016]: Disconnected from user root 134.86.254.7 port 50332
Feb 06 12:01:22 localhost.localdomain sshd[1016]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:22 localhost.localdomain systemd[1]: session-6.scope: Deactivated successfully.
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: Session 6 logged out. Waiting for processes to exit.
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: Removed session 6.
Feb 06 12:01:22 localhost.localdomain sshd[1027]: Accepted publickey for root from 134.86.254.7 port 50342 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:22 localhost.localdomain sshd[1027]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: New session 7 of user root.
Feb 06 12:01:22 localhost.localdomain systemd[1]: Started Session 7 of User root.
Feb 06 12:01:22 localhost.localdomain sshd[1027]: Received disconnect from 134.86.254.7 port 50342:11: disconnected by user
Feb 06 12:01:22 localhost.localdomain sshd[1027]: Disconnected from user root 134.86.254.7 port 50342
Feb 06 12:01:22 localhost.localdomain sshd[1027]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:22 localhost.localdomain systemd[1]: session-7.scope: Deactivated successfully.
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: Session 7 logged out. Waiting for processes to exit.
Feb 06 12:01:22 localhost.localdomain systemd-logind[471]: Removed session 7.
Feb 06 12:01:23 localhost.localdomain sshd[1040]: Accepted publickey for root from 134.86.254.7 port 50352 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:23 localhost.localdomain sshd[1040]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: New session 8 of user root.
Feb 06 12:01:23 localhost.localdomain systemd[1]: Started Session 8 of User root.
Feb 06 12:01:23 localhost.localdomain sshd[1040]: Received disconnect from 134.86.254.7 port 50352:11: disconnected by user
Feb 06 12:01:23 localhost.localdomain sshd[1040]: Disconnected from user root 134.86.254.7 port 50352
Feb 06 12:01:23 localhost.localdomain sshd[1040]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:23 localhost.localdomain systemd[1]: session-8.scope: Deactivated successfully.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Session 8 logged out. Waiting for processes to exit.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Removed session 8.
Feb 06 12:01:23 localhost.localdomain sshd[1053]: Accepted publickey for root from 134.86.254.7 port 50364 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:23 localhost.localdomain sshd[1053]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: New session 9 of user root.
Feb 06 12:01:23 localhost.localdomain systemd[1]: Started Session 9 of User root.
Feb 06 12:01:23 localhost.localdomain sshd[1053]: Received disconnect from 134.86.254.7 port 50364:11: disconnected by user
Feb 06 12:01:23 localhost.localdomain sshd[1053]: Disconnected from user root 134.86.254.7 port 50364
Feb 06 12:01:23 localhost.localdomain sshd[1053]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:23 localhost.localdomain systemd[1]: session-9.scope: Deactivated successfully.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Session 9 logged out. Waiting for processes to exit.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Removed session 9.
Feb 06 12:01:23 localhost.localdomain sshd[1066]: Accepted publickey for root from 134.86.254.7 port 50380 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:23 localhost.localdomain sshd[1066]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: New session 10 of user root.
Feb 06 12:01:23 localhost.localdomain systemd[1]: Started Session 10 of User root.
Feb 06 12:01:23 localhost.localdomain sshd[1066]: Received disconnect from 134.86.254.7 port 50380:11: disconnected by user
Feb 06 12:01:23 localhost.localdomain sshd[1066]: Disconnected from user root 134.86.254.7 port 50380
Feb 06 12:01:23 localhost.localdomain sshd[1066]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:23 localhost.localdomain systemd[1]: session-10.scope: Deactivated successfully.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Session 10 logged out. Waiting for processes to exit.
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: Removed session 10.
Feb 06 12:01:23 localhost.localdomain sshd[1077]: Accepted publickey for root from 134.86.254.7 port 50382 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:23 localhost.localdomain sshd[1077]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:23 localhost.localdomain systemd-logind[471]: New session 11 of user root.
Feb 06 12:01:23 localhost.localdomain systemd[1]: Started Session 11 of User root.
Feb 06 12:01:24 localhost.localdomain sshd[1077]: Received disconnect from 134.86.254.7 port 50382:11: disconnected by user
Feb 06 12:01:24 localhost.localdomain sshd[1077]: Disconnected from user root 134.86.254.7 port 50382
Feb 06 12:01:24 localhost.localdomain sshd[1077]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:24 localhost.localdomain systemd[1]: session-11.scope: Deactivated successfully.
Feb 06 12:01:24 localhost.localdomain systemd-logind[471]: Session 11 logged out. Waiting for processes to exit.
Feb 06 12:01:24 localhost.localdomain systemd-logind[471]: Removed session 11.
Feb 06 12:01:25 localhost.localdomain sshd[1088]: Accepted publickey for root from 134.86.254.7 port 50384 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:25 localhost.localdomain sshd[1088]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: New session 12 of user root.
Feb 06 12:01:25 localhost.localdomain systemd[1]: Started Session 12 of User root.
Feb 06 12:01:25 localhost.localdomain sshd[1088]: Received disconnect from 134.86.254.7 port 50384:11: disconnected by user
Feb 06 12:01:25 localhost.localdomain sshd[1088]: Disconnected from user root 134.86.254.7 port 50384
Feb 06 12:01:25 localhost.localdomain sshd[1088]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:25 localhost.localdomain systemd[1]: session-12.scope: Deactivated successfully.
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: Session 12 logged out. Waiting for processes to exit.
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: Removed session 12.
Feb 06 12:01:25 localhost.localdomain sshd[1101]: Accepted publickey for root from 134.86.254.7 port 50400 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:25 localhost.localdomain sshd[1101]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: New session 13 of user root.
Feb 06 12:01:25 localhost.localdomain systemd[1]: Started Session 13 of User root.
Feb 06 12:01:25 localhost.localdomain sshd[1101]: Received disconnect from 134.86.254.7 port 50400:11: disconnected by user
Feb 06 12:01:25 localhost.localdomain sshd[1101]: Disconnected from user root 134.86.254.7 port 50400
Feb 06 12:01:25 localhost.localdomain sshd[1101]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:25 localhost.localdomain systemd[1]: session-13.scope: Deactivated successfully.
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: Session 13 logged out. Waiting for processes to exit.
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: Removed session 13.
Feb 06 12:01:25 localhost.localdomain sshd[1112]: Accepted publickey for root from 134.86.254.7 port 50416 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:25 localhost.localdomain sshd[1112]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:25 localhost.localdomain systemd-logind[471]: New session 14 of user root.
Feb 06 12:01:25 localhost.localdomain systemd[1]: Started Session 14 of User root.
Feb 06 12:01:29 localhost.localdomain sshd[1112]: Received disconnect from 134.86.254.7 port 50416:11: disconnected by user
Feb 06 12:01:29 localhost.localdomain sshd[1112]: Disconnected from user root 134.86.254.7 port 50416
Feb 06 12:01:29 localhost.localdomain sshd[1112]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:29 localhost.localdomain systemd[1]: session-14.scope: Deactivated successfully.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Session 14 logged out. Waiting for processes to exit.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Removed session 14.
Feb 06 12:01:29 localhost.localdomain sshd[1123]: Accepted publickey for root from 134.86.254.7 port 50426 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:29 localhost.localdomain sshd[1123]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: New session 15 of user root.
Feb 06 12:01:29 localhost.localdomain systemd[1]: Started Session 15 of User root.
Feb 06 12:01:29 localhost.localdomain sshd[1123]: Received disconnect from 134.86.254.7 port 50426:11: disconnected by user
Feb 06 12:01:29 localhost.localdomain sshd[1123]: Disconnected from user root 134.86.254.7 port 50426
Feb 06 12:01:29 localhost.localdomain sshd[1123]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:29 localhost.localdomain systemd[1]: session-15.scope: Deactivated successfully.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Session 15 logged out. Waiting for processes to exit.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Removed session 15.
Feb 06 12:01:29 localhost.localdomain sshd[1135]: Accepted publickey for root from 134.86.254.7 port 50432 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:29 localhost.localdomain sshd[1135]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: New session 16 of user root.
Feb 06 12:01:29 localhost.localdomain systemd[1]: Started Session 16 of User root.
Feb 06 12:01:29 localhost.localdomain sshd[1135]: Received disconnect from 134.86.254.7 port 50432:11: disconnected by user
Feb 06 12:01:29 localhost.localdomain sshd[1135]: Disconnected from user root 134.86.254.7 port 50432
Feb 06 12:01:29 localhost.localdomain sshd[1135]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:29 localhost.localdomain systemd[1]: session-16.scope: Deactivated successfully.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Session 16 logged out. Waiting for processes to exit.
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: Removed session 16.
Feb 06 12:01:29 localhost.localdomain sshd[1146]: Accepted publickey for root from 134.86.254.7 port 50448 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:29 localhost.localdomain sshd[1146]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:29 localhost.localdomain systemd-logind[471]: New session 17 of user root.
Feb 06 12:01:29 localhost.localdomain systemd[1]: Started Session 17 of User root.
Feb 06 12:01:30 localhost.localdomain sshd[1146]: Received disconnect from 134.86.254.7 port 50448:11: disconnected by user
Feb 06 12:01:30 localhost.localdomain sshd[1146]: Disconnected from user root 134.86.254.7 port 50448
Feb 06 12:01:30 localhost.localdomain sshd[1146]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:30 localhost.localdomain systemd[1]: session-17.scope: Deactivated successfully.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Session 17 logged out. Waiting for processes to exit.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Removed session 17.
Feb 06 12:01:30 localhost.localdomain sshd[1158]: Accepted publickey for root from 134.86.254.7 port 50464 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:30 localhost.localdomain sshd[1158]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: New session 18 of user root.
Feb 06 12:01:30 localhost.localdomain systemd[1]: Started Session 18 of User root.
Feb 06 12:01:30 localhost.localdomain sshd[1158]: Received disconnect from 134.86.254.7 port 50464:11: disconnected by user
Feb 06 12:01:30 localhost.localdomain sshd[1158]: Disconnected from user root 134.86.254.7 port 50464
Feb 06 12:01:30 localhost.localdomain sshd[1158]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:30 localhost.localdomain systemd[1]: session-18.scope: Deactivated successfully.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Session 18 logged out. Waiting for processes to exit.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Removed session 18.
Feb 06 12:01:30 localhost.localdomain sshd[1169]: Accepted publickey for root from 134.86.254.7 port 50474 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:30 localhost.localdomain sshd[1169]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: New session 19 of user root.
Feb 06 12:01:30 localhost.localdomain systemd[1]: Started Session 19 of User root.
Feb 06 12:01:30 localhost.localdomain sshd[1169]: Received disconnect from 134.86.254.7 port 50474:11: disconnected by user
Feb 06 12:01:30 localhost.localdomain sshd[1169]: Disconnected from user root 134.86.254.7 port 50474
Feb 06 12:01:30 localhost.localdomain sshd[1169]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:30 localhost.localdomain systemd[1]: session-19.scope: Deactivated successfully.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Session 19 logged out. Waiting for processes to exit.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Removed session 19.
Feb 06 12:01:30 localhost.localdomain sshd[1181]: Accepted publickey for root from 134.86.254.7 port 50484 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:30 localhost.localdomain sshd[1181]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: New session 20 of user root.
Feb 06 12:01:30 localhost.localdomain systemd[1]: Started Session 20 of User root.
Feb 06 12:01:30 localhost.localdomain sshd[1181]: Received disconnect from 134.86.254.7 port 50484:11: disconnected by user
Feb 06 12:01:30 localhost.localdomain sshd[1181]: Disconnected from user root 134.86.254.7 port 50484
Feb 06 12:01:30 localhost.localdomain sshd[1181]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:30 localhost.localdomain systemd[1]: session-20.scope: Deactivated successfully.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Session 20 logged out. Waiting for processes to exit.
Feb 06 12:01:30 localhost.localdomain systemd-logind[471]: Removed session 20.
Feb 06 12:01:31 localhost.localdomain sshd[1192]: Accepted publickey for root from 134.86.254.7 port 50490 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:31 localhost.localdomain sshd[1192]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: New session 21 of user root.
Feb 06 12:01:31 localhost.localdomain systemd[1]: Started Session 21 of User root.
Feb 06 12:01:31 localhost.localdomain sshd[1192]: Received disconnect from 134.86.254.7 port 50490:11: disconnected by user
Feb 06 12:01:31 localhost.localdomain sshd[1192]: Disconnected from user root 134.86.254.7 port 50490
Feb 06 12:01:31 localhost.localdomain sshd[1192]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:31 localhost.localdomain systemd[1]: session-21.scope: Deactivated successfully.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Session 21 logged out. Waiting for processes to exit.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Removed session 21.
Feb 06 12:01:31 localhost.localdomain sshd[1205]: Accepted publickey for root from 134.86.254.7 port 50504 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:31 localhost.localdomain sshd[1205]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: New session 22 of user root.
Feb 06 12:01:31 localhost.localdomain systemd[1]: Started Session 22 of User root.
Feb 06 12:01:31 localhost.localdomain sshd[1205]: Received disconnect from 134.86.254.7 port 50504:11: disconnected by user
Feb 06 12:01:31 localhost.localdomain sshd[1205]: Disconnected from user root 134.86.254.7 port 50504
Feb 06 12:01:31 localhost.localdomain sshd[1205]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:31 localhost.localdomain systemd[1]: session-22.scope: Deactivated successfully.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Session 22 logged out. Waiting for processes to exit.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Removed session 22.
Feb 06 12:01:31 localhost.localdomain sshd[1217]: Accepted publickey for root from 134.86.254.7 port 50514 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:31 localhost.localdomain sshd[1217]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: New session 23 of user root.
Feb 06 12:01:31 localhost.localdomain systemd[1]: Started Session 23 of User root.
Feb 06 12:01:31 localhost.localdomain sshd[1217]: Received disconnect from 134.86.254.7 port 50514:11: disconnected by user
Feb 06 12:01:31 localhost.localdomain sshd[1217]: Disconnected from user root 134.86.254.7 port 50514
Feb 06 12:01:31 localhost.localdomain sshd[1217]: pam_unix(sshd:session): session closed for user root
Feb 06 12:01:31 localhost.localdomain systemd[1]: session-23.scope: Deactivated successfully.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Session 23 logged out. Waiting for processes to exit.
Feb 06 12:01:31 localhost.localdomain systemd-logind[471]: Removed session 23.
Feb 06 12:01:31 localhost.localdomain sshd[1228]: Accepted publickey for root from 134.86.254.7 port 50526 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:01:31 localhost.localdomain sshd[1228]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:01:32 localhost.localdomain systemd-logind[471]: New session 24 of user root.
Feb 06 12:01:32 localhost.localdomain systemd[1]: Started Session 24 of User root.
```

## Degraded Services 

```sh
● weston@industrial.service                                                                                         loaded failed failed    Weston Wayland Compositor (on tty7)
```

