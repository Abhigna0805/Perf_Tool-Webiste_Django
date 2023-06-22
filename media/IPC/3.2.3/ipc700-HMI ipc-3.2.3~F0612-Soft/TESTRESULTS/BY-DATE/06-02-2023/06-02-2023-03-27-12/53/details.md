# realboot.sh Test for MTP700_Unified_Basic 

## Test Date 06-02-2023-03-27-12 

## IMAGE VERSION BUILD_ID="HMI_ubp-3.4~F0612" 

## COREBOOT VERSION R02.05.00.00_01.01.01.02 

## OS INFO Siemens Industrial OS 3.4 (based on Debian 11.6) \n \l 

* This test iteration booted succesfully !

# Details for test iteration 53 

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
│ │ ├─/sys/fs/cgroup/cpu,cpuacct                        cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpu,cpuacct
│ │ ├─/sys/fs/cgroup/blkio                              cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,blkio
│ │ ├─/sys/fs/cgroup/memory                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,memory
│ │ ├─/sys/fs/cgroup/perf_event                         cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,perf_event
│ │ ├─/sys/fs/cgroup/pids                               cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,pids
│ │ ├─/sys/fs/cgroup/freezer                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,freezer
│ │ ├─/sys/fs/cgroup/cpuset                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpuset
│ │ ├─/sys/fs/cgroup/hugetlb                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,hugetlb
│ │ ├─/sys/fs/cgroup/net_prio                           cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,net_prio
│ │ └─/sys/fs/cgroup/devices                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,devices
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
       valid_lft 28561sec preferred_lft 28561sec
    inet6 fe80::7e63:9923:2c77:e358/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:71:69:94:d9 brd ff:ff:ff:ff:ff:ff
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
[    0.000132] Console: colour dummy device 80x25
[    0.000205] Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
[    0.000215] pid_max: default: 32768 minimum: 301
[    0.000273] LSM: Security Framework initializing
[    0.000298] SELinux:  Initializing.
[    0.000358] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.000369] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.001654] rcu: Hierarchical SRCU implementation.
[    0.002908] smp: Bringing up secondary CPUs ...
[    0.003376] Detected VIPT I-cache on CPU1
[    0.003407] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
[    0.003472] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.003966] Detected VIPT I-cache on CPU2
[    0.003989] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
[    0.004033] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004474] Detected VIPT I-cache on CPU3
[    0.004493] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
[    0.004532] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004583] smp: Brought up 1 node, 4 CPUs
[    0.004590] SMP: Total of 4 processors activated.
[    0.004594] CPU features: detected: 32-bit EL0 Support
[    0.004598] CPU features: detected: CRC32 instructions
[    0.011360] CPU: All CPU(s) started at EL2
[    0.011378] alternatives: patching kernel code
[    0.012694] devtmpfs: initialized
[    0.017870] KASLR disabled due to lack of seed
[    0.018004] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.018017] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.032083] pinctrl core: initialized pinctrl subsystem
[    0.033151] NET: Registered protocol family 16
[    0.038934] DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
[    0.039741] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.040548] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.040653] audit: initializing netlink subsys (disabled)
[    0.040921] audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
[    0.041422] thermal_sys: Registered thermal governor 'step_wise'
[    0.041426] thermal_sys: Registered thermal governor 'power_allocator'
[    0.041699] cpuidle: using governor menu
[    0.041987] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.042066] ASID allocator initialised with 65536 entries
[    0.042835] Serial: AMBA PL011 UART driver
[    0.042884] imx mu driver is registered.
[    0.042899] imx rpmsg driver is registered.
[    0.061789] imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
[    0.061799] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
[    0.074033] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.074042] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.074045] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.074051] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.074770] cryptd: max_cpu_qlen set to 1000
[    0.077916] iommu: Default domain type: Translated 
[    0.078075] vgaarb: loaded
[    0.078345] SCSI subsystem initialized
[    0.078488] libata version 3.00 loaded.
[    0.078648] usbcore: registered new interface driver usbfs
[    0.078676] usbcore: registered new interface driver hub
[    0.078696] usbcore: registered new device driver usb
[    0.079525] mc: Linux media interface: v0.10
[    0.079544] videodev: Linux video capture interface: v2.00
[    0.079593] pps_core: LinuxPPS API ver. 1 registered
[    0.079596] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.079608] PTP clock support registered
[    0.079718] EDAC MC: Ver: 3.0.0
[    0.080749] FPGA manager framework
[    0.080821] Advanced Linux Sound Architecture Driver Initialized.
[    0.081340] Bluetooth: Core ver 2.22
[    0.081363] NET: Registered protocol family 31
[    0.081365] Bluetooth: HCI device and connection manager initialized
[    0.081373] Bluetooth: HCI socket layer initialized
[    0.081378] Bluetooth: L2CAP socket layer initialized
[    0.081389] Bluetooth: SCO socket layer initialized
[    0.082218] clocksource: Switched to clocksource arch_sys_counter
[    0.728719] VFS: Disk quotas dquot_6.6.0
[    0.728765] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.734022] NET: Registered protocol family 2
[    0.734179] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.734992] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.735021] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.735104] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.735355] TCP: Hash tables configured (established 16384 bind 16384)
[    0.735453] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735486] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735610] NET: Registered protocol family 1
[    0.735932] RPC: Registered named UNIX socket transport module.
[    0.735935] RPC: Registered udp transport module.
[    0.735938] RPC: Registered tcp transport module.
[    0.735940] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.735950] PCI: CLS 0 bytes, default 64
[    0.736114] Unpacking initramfs...
[    1.211012] Freeing initrd memory: 15480K
[    1.211735] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
[    1.214872] Initialise system trusted keyrings
[    1.215017] workingset: timestamp_bits=42 max_order=19 bucket_order=0
[    1.220369] NFS: Registering the id_resolver key type
[    1.220407] Key type id_resolver registered
[    1.220410] Key type id_legacy registered
[    1.220475] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.220479] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    1.220496] jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
[    1.248300] Key type asymmetric registered
[    1.248308] Asymmetric key parser 'x509' registered
[    1.248347] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
[    1.248352] io scheduler mq-deadline registered
[    1.248355] io scheduler kyber registered
[    1.253538] M4 is started
[    1.259069] imx-sdma 302b0000.dma-controller: firmware found.
[    1.261979] imx-sdma 302c0000.dma-controller: firmware found.
[    1.264117] imx-sdma 30bd0000.dma-controller: firmware found.
[    1.265557] mxs-dma 33000000.dma-controller: initialized
[    1.267275] Bus freq driver module loaded
[    1.272004] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.273834] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
[    1.273889] printk: console [ttymxc1] enabled
[    1.273893] printk: bootconsole [ec_imx6q0] disabled
[    1.287515] loop: module loaded
[    1.288349] of_reserved_mem_lookup() returned NULL
[    1.289594] imx ahci driver is registered.
[    1.291517] spi_imx 30800000.spba-bus:spi@30830000: invalid resource
[    1.291537] spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
[    1.293533] tun: Universal TUN/TAP device driver, 1.6
[    1.294387] pps pps0: new PPS source ptp0
[    1.305926] fec 30be0000.ethernet eth0: registered PHC device 0
[    1.307328] e1000: Intel(R) PRO/1000 Network Driver
[    1.307334] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.307363] e1000e: Intel(R) PRO/1000 Network Driver
[    1.307365] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.307394] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.307397] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.307417] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.307419] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.307533] sky2: driver version 1.30
[    1.307702] usbcore: registered new interface driver r8152
[    1.307732] usbcore: registered new interface driver asix
[    1.307754] usbcore: registered new interface driver ax88179_178a
[    1.307775] usbcore: registered new interface driver cdc_ether
[    1.307793] usbcore: registered new interface driver net1080
[    1.307814] usbcore: registered new interface driver cdc_subset
[    1.307838] usbcore: registered new interface driver zaurus
[    1.307882] usbcore: registered new interface driver cdc_ncm
[    1.308138] VFIO - User Level meta-driver version: 0.3
[    1.309848] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.309853] ehci-pci: EHCI PCI platform driver
[    1.309879] ehci-platform: EHCI generic platform driver
[    1.310004] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.310024] ohci-pci: OHCI PCI platform driver
[    1.310048] ohci-platform: OHCI generic platform driver
[    1.310678] usbcore: registered new interface driver uas
[    1.310710] usbcore: registered new interface driver usb-storage
[    1.310774] usbcore: registered new interface driver usbserial_generic
[    1.310789] usbserial: USB Serial support registered for generic
[    1.313672] i2c /dev entries driver
[    1.316106] Bluetooth: HCI UART driver ver 2.3
[    1.316114] Bluetooth: HCI UART protocol H4 registered
[    1.316117] Bluetooth: HCI UART protocol BCSP registered
[    1.316136] Bluetooth: HCI UART protocol LL registered
[    1.316139] Bluetooth: HCI UART protocol ATH3K registered
[    1.316153] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.316207] Bluetooth: HCI UART protocol Broadcom registered
[    1.316222] Bluetooth: HCI UART protocol QCA registered
[    1.317281] sdhci: Secure Digital Host Controller Interface driver
[    1.317284] sdhci: Copyright(c) Pierre Ossman
[    1.317483] Synopsys Designware Multimedia Card Interface Driver
[    1.317938] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.318638] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.318670] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.318730] sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
[    1.318750] sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
[    1.319515] ledtrig-cpu: registered to indicate activity on CPUs
[    1.319940] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.320306] usbcore: registered new interface driver usbhid
[    1.320309] usbhid: USB HID core driver
[    1.324376] galcore: clk_get vg clock failed, disable vg!
[    1.324536] Galcore version 6.4.3.p2.336687
[    1.349933] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
[    1.383072] [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
[    1.389434] NET: Registered protocol family 10
[    1.390147] Segment Routing with IPv6
[    1.390186] NET: Registered protocol family 17
[    1.390302] Bluetooth: RFCOMM TTY layer initialized
[    1.390310] Bluetooth: RFCOMM socket layer initialized
[    1.390341] Bluetooth: RFCOMM ver 1.11
[    1.390350] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.390353] Bluetooth: BNEP filters: protocol multicast
[    1.390358] Bluetooth: BNEP socket layer initialized
[    1.390362] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.390367] Bluetooth: HIDP socket layer initialized
[    1.390396] 8021q: 802.1Q VLAN Support v1.8
[    1.390414] lib80211: common routines for IEEE802.11 drivers
[    1.390419] lib80211_crypt: registered algorithm 'NULL'
[    1.390422] lib80211_crypt: registered algorithm 'WEP'
[    1.390425] lib80211_crypt: registered algorithm 'CCMP'
[    1.390431] lib80211_crypt: registered algorithm 'TKIP'
[    1.390434] tsn generic netlink module v1 init...
[    1.390509] Key type dns_resolver registered
[    1.390895] registered taskstats version 1
[    1.390900] Loading compiled-in X.509 certificates
[    1.408848] usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
[    1.408966] usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
[    1.409104] usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
[    1.409174] usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
[    1.409396] imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
[    1.418406] nxp-pca9450 0-0025: pca9450a probed.
[    1.418540] i2c i2c-0: IMX I2C adapter registered
[    1.418885] imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
[    1.423546] rtc-ds1307 1-0032: registered as rtc0
[    1.424349] rtc-ds1307 1-0032: setting system clock to 2023-02-06T12:24:32 UTC (1675686272)
[    1.424510] i2c i2c-1: IMX I2C adapter registered
[    1.424828] imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
[    1.432921] mmc2: new DDR MMC card at address 0001
[    1.433389] mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
[    1.433558] mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
[    1.433726] mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
[    1.433890] mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
[    1.434029] mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
[    1.436830]  mmcblk2: p1 p2 p3 p4
[    1.465857] input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
[    1.466361] i2c i2c-2: IMX I2C adapter registered
[    1.468610] pwm-backlight backlight: supply power not found, using dummy regulator
[    1.468755] imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
[    1.468878] imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
[    1.469007] imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
[    1.469250] SoC: i.MX8MM revision 1.0
[    1.469318] imx6q-pcie 33800000.pcie: GPR15=6188ffff
[    1.469472] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
[    1.469897] imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
[    1.469948] imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
[    1.469972] imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
[    1.469989] imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
[    1.470080] imx6q-pcie 33800000.pcie: invalid resource
[    1.471463] imx_usb 32e40000.usb: No over current polarity defined
[    1.474243] ci_hdrc ci_hdrc.0: EHCI Host Controller
[    1.474281] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
[    1.490230] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[    1.490829] hub 1-0:1.0: USB hub found
[    1.490854] hub 1-0:1.0: 1 port detected
[    1.492434] imx_usb 32e50000.usb: No over current polarity defined
[    1.495256] ci_hdrc ci_hdrc.1: EHCI Host Controller
[    1.495276] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
[    1.510237] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
[    1.510779] hub 2-0:1.0: USB hub found
[    1.510804] hub 2-0:1.0: 1 port detected
[    1.513938] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.513956] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.513984] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.515516] hantrodec 0 : module inserted. Major = 234
[    1.516933] hantrodec 1 : module inserted. Major = 234
[    1.518194] hx280enc: module inserted. Major <511>
[    1.521036] ALSA device list:
[    1.521047]   No soundcards found.
[    1.546394] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
[    2.466224] imx6q-pcie 33800000.pcie: Phy link never came up
[    2.466258] imx6q-pcie 33800000.pcie: failed to initialize host
[    2.466264] imx6q-pcie 33800000.pcie: unable to add pcie port.
[    2.471910] Freeing unused kernel memory: 5184K
[    2.482318] Run /init as init process
[    2.482321]   with arguments:
[    2.482324]     /init
[    2.482329]     splash
[    2.482332]   with environment:
[    2.482335]     HOME=/
[    2.482338]     TERM=linux
[    2.482340]     jtag=on
[    3.013938] fec 30be0000.ethernet end0: renamed from eth0
[    3.018428] imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
[    3.018687] imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
[    3.018786] imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
[    3.018794] imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
[    3.018817] imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
[    3.019250] [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
[    3.109555] random: lvm: uninitialized urandom read (4 bytes read)
[    3.151846] device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
[    3.154938] random: lvm: uninitialized urandom read (2 bytes read)
[    3.384968] random: lvm: uninitialized urandom read (4 bytes read)
[    3.683649] EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
[    3.773510] EXT4-fs (dm-2): recovery complete
[    3.774273] EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
[    4.207368] systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
[    4.207387] systemd[1]: Detected architecture arm64.
[    4.237715] systemd[1]: No hostname configured, using default hostname.
[    4.238011] systemd[1]: Hostname set to <localhost>.
[    4.423694] random: lvmconfig: uninitialized urandom read (4 bytes read)
[    4.554625] systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
[    4.712055] systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
[    4.788508] systemd[1]: Queued start job for default target Graphical Interface.
[    4.788585] systemd[1]: Unnecessary job was removed for /dev/dm-2.
[    4.788609] systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
[    4.833617] systemd[1]: Created slice Slice /system/getty.
[    4.836173] systemd[1]: Created slice Slice /system/modprobe.
[    4.838643] systemd[1]: Created slice Slice /system/serial-getty.
[    4.841278] systemd[1]: Created slice Slice /system/systemd-fsck.
[    4.843673] systemd[1]: Created slice Slice /system/weston.
[    4.845414] systemd[1]: Created slice User and Session Slice.
[    4.845760] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    4.845980] systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
[    4.846196] systemd[1]: Reached target Local Integrity Protected Volumes.
[    4.846486] systemd[1]: Reached target Remote File Systems.
[    4.846539] systemd[1]: Reached target Slice Units.
[    4.846622] systemd[1]: Reached target Swaps.
[    4.846699] systemd[1]: Reached target Local Verity Protected Volumes.
[    4.847034] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    4.847505] systemd[1]: Listening on LVM2 poll daemon socket.
[    4.847859] systemd[1]: Listening on fsck to fsckd communication Socket.
[    4.848065] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    4.848697] systemd[1]: Listening on Journal Audit Socket.
[    4.849134] systemd[1]: Listening on Journal Socket (/dev/log).
[    4.849582] systemd[1]: Listening on Journal Socket.
[    4.852401] systemd[1]: Listening on udev Control Socket.
[    4.852974] systemd[1]: Listening on udev Kernel Socket.
[    4.857144] systemd[1]: Mounting Huge Pages File System...
[    4.861729] systemd[1]: Mounting POSIX Message Queue File System...
[    4.867160] systemd[1]: Mounting Kernel Debug File System...
[    4.872448] systemd[1]: Mounting Kernel Trace File System...
[    4.873395] systemd[1]: Finished Availability of block devices.
[    4.880060] systemd[1]: Starting Set the console keyboard layout...
[    4.885320] systemd[1]: Starting Create List of Static Device Nodes...
[    4.890580] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    4.896139] systemd[1]: Starting Load Kernel Module configfs...
[    4.901405] systemd[1]: Starting Load Kernel Module drm...
[    4.907231] systemd[1]: Starting Load Kernel Module efi_pstore...
[    4.913098] systemd[1]: Starting Load Kernel Module fuse...
[    4.913788] random: lvm: uninitialized urandom read (4 bytes read)
[    4.922120] systemd[1]: Starting Network initialization...
[    4.923743] systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
[    4.923760] systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
[    4.929472] systemd[1]: Starting Journal Service...
[    4.943045] systemd[1]: Starting Load Kernel Modules...
[    4.945855] fuse: init (API version 7.32)
[    4.949741] systemd[1]: Starting Remount Root and Kernel File Systems...
[    4.950271] systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
[    4.956982] systemd[1]: Starting Coldplug All udev Devices...
[    4.965379] systemd[1]: Starting Uncomplicated firewall...
[    4.978145] systemd[1]: Mounted Huge Pages File System.
[    4.979500] systemd[1]: Mounted POSIX Message Queue File System.
[    4.980828] systemd[1]: Mounted Kernel Debug File System.
[    4.982126] systemd[1]: Mounted Kernel Trace File System.
[    4.984723] systemd[1]: Finished Create List of Static Device Nodes.
[    4.986904] systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    4.987985] systemd[1]: Finished Load Kernel Module configfs.
[    4.989575] systemd[1]: modprobe@drm.service: Deactivated successfully.
[    4.990760] systemd[1]: Finished Load Kernel Module drm.
[    4.992202] systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
[    4.993221] systemd[1]: Finished Load Kernel Module efi_pstore.
[    4.995233] systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    4.996361] systemd[1]: Finished Load Kernel Module fuse.
[    4.998515] systemd[1]: Finished Load Kernel Modules.
[    5.001550] systemd[1]: Finished Uncomplicated firewall.
[    5.009201] systemd[1]: Mounting FUSE Control File System...
[    5.023212] systemd[1]: Mounting Kernel Configuration File System...
[    5.031123] systemd[1]: Starting Apply Kernel Variables...
[    5.055668] systemd[1]: Mounted FUSE Control File System.
[    5.057335] systemd[1]: Mounted Kernel Configuration File System.
[    5.073378] systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
[    5.108894] random: python3: uninitialized urandom read (24 bytes read)
[    5.117667] systemd[1]: Finished Remount Root and Kernel File Systems.
[    5.118993] systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
[    5.119215] systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
[    5.124923] systemd[1]: Starting Load/Save Random Seed...
[    5.130664] systemd[1]: Starting Create System Users...
[    5.147314] systemd[1]: Finished Apply Kernel Variables.
[    5.148775] systemd[1]: Started Journal Service.
[    6.138704] systemd-journald[358]: Received client request to flush runtime journal.
[    6.287299] EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
[    6.324788] EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
[    6.324827] ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    6.598085] random: lvm: uninitialized urandom read (4 bytes read)
[    6.722301] random: crng init done
[    6.722314] random: 1 urandom warning(s) missed due to ratelimiting
[    7.201547] LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
[    7.475252] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.572105] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.884604] caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
[    7.884618] caam 30900000.crypto: job rings = 3, qi = 0
[    7.886103] caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
[    9.065034] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    9.082916] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    9.660690] caam_jr 30901000.jr: failed to flush job ring 0
[    9.660825] caam_jr: probe of 30901000.jr failed with error -5
[    9.713485] caam algorithms registered in /proc/crypto
[    9.762412] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
[    9.762432] caam 30900000.crypto: registering rng-caam
[    9.773581] Device caam-keygen registered
[    9.801478] fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
[    9.855965] Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
[   12.931166] fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
[   12.931221] IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
[   14.543999] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[   14.547223] Bridge firewalling registered
[   19.965480] systemd-journald[358]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2732 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
[   19.965506] systemd-journald[358]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
[   26.555415] systemd-journald[358]: Time jumped backwards, rotating.
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
Feb 06 12:24:36 localhost kernel: Booting Linux on physical CPU 0x0000000000 [0x410fd034]
Feb 06 12:24:36 localhost kernel: Linux version 5.10.158-cip22+ind1 (builder@narmada) (aarch64-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023
Feb 06 12:24:36 localhost kernel: Machine model: Siemens Foxxy
Feb 06 12:24:36 localhost kernel: earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
Feb 06 12:24:36 localhost kernel: printk: bootconsole [ec_imx6q0] enabled
Feb 06 12:24:36 localhost kernel: Reserved memory: created CMA memory pool at 0x0000000096000000, size 640 MiB
Feb 06 12:24:36 localhost kernel: OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
Feb 06 12:24:36 localhost kernel: NUMA: No NUMA configuration found
Feb 06 12:24:36 localhost kernel: NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 12:24:36 localhost kernel: NUMA: NODE_DATA [mem 0xbfa46700-0xbfa48fff]
Feb 06 12:24:36 localhost kernel: Zone ranges:
Feb 06 12:24:36 localhost kernel:   DMA      [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 12:24:36 localhost kernel:   DMA32    empty
Feb 06 12:24:36 localhost kernel:   Normal   empty
Feb 06 12:24:36 localhost kernel: Movable zone start for each node
Feb 06 12:24:36 localhost kernel: Early memory node ranges
Feb 06 12:24:36 localhost kernel:   node   0: [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 12:24:36 localhost kernel: Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 12:24:36 localhost kernel: On node 0 totalpages: 523898
Feb 06 12:24:36 localhost kernel:   DMA zone: 8186 pages used for memmap
Feb 06 12:24:36 localhost kernel:   DMA zone: 0 pages reserved
Feb 06 12:24:36 localhost kernel:   DMA zone: 523898 pages, LIFO batch:63
Feb 06 12:24:36 localhost kernel: On node 0, zone DMA: 390 pages in unavailable ranges
Feb 06 12:24:36 localhost kernel: psci: probing for conduit method from DT.
Feb 06 12:24:36 localhost kernel: psci: PSCIv1.1 detected in firmware.
Feb 06 12:24:36 localhost kernel: psci: Using standard PSCI v0.2 function IDs
Feb 06 12:24:36 localhost kernel: psci: MIGRATE_INFO_TYPE not supported.
Feb 06 12:24:36 localhost kernel: psci: SMC Calling Convention v1.2
Feb 06 12:24:36 localhost kernel: percpu: Embedded 30 pages/cpu s84248 r8192 d30440 u122880
Feb 06 12:24:36 localhost kernel: pcpu-alloc: s84248 r8192 d30440 u122880 alloc=30*4096
Feb 06 12:24:36 localhost kernel: pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
Feb 06 12:24:36 localhost kernel: Detected VIPT I-cache on CPU0
Feb 06 12:24:36 localhost kernel: CPU features: detected: ARM erratum 845719
Feb 06 12:24:36 localhost kernel: CPU features: detected: GIC system register CPU interface
Feb 06 12:24:36 localhost kernel: Built 1 zonelists, mobility grouping on.  Total pages: 515712
Feb 06 12:24:36 localhost kernel: Policy zone: DMA
Feb 06 12:24:36 localhost kernel: Kernel command line: console=ttymxc1,115200 earlycon=ec_imx6q,0x30890000,115200 loglevel=2 root=/dev/vg_sys/lv_mainvo ro rootfstype=ext4 rootwait security=selinux selinux=1 enforcing=0 enforcing=0 cryptomgr.notests systemd.unified_cgroup_hierarchy=0 module_blacklist=intel_ish_ipc,intel_ishtp jtag=on nohlt splash plymouth.ignore-serial-consoles quiet vt.global_cursor_default=0
Feb 06 12:24:36 localhost kernel: Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
Feb 06 12:24:36 localhost kernel: Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
Feb 06 12:24:36 localhost kernel: mem auto-init: stack:off, heap alloc:off, heap free:off
Feb 06 12:24:36 localhost kernel: Memory: 1351880K/2095592K available (17406K kernel code, 2216K rwdata, 6740K rodata, 5184K init, 529K bss, 88352K reserved, 655360K cma-reserved)
Feb 06 12:24:36 localhost kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
Feb 06 12:24:36 localhost kernel: ftrace: allocating 56519 entries in 221 pages
Feb 06 12:24:36 localhost kernel: ftrace: allocated 221 pages with 6 groups
Feb 06 12:24:36 localhost kernel: rcu: Preemptible hierarchical RCU implementation.
Feb 06 12:24:36 localhost kernel: rcu:         RCU event tracing is enabled.
Feb 06 12:24:36 localhost kernel: rcu:         RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
Feb 06 12:24:36 localhost kernel:         Trampoline variant of Tasks RCU enabled.
Feb 06 12:24:36 localhost kernel:         Rude variant of Tasks RCU enabled.
Feb 06 12:24:36 localhost kernel: rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
Feb 06 12:24:36 localhost kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
Feb 06 12:24:36 localhost kernel: NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
Feb 06 12:24:36 localhost kernel: GICv3: GIC: Using split EOI/Deactivate mode
Feb 06 12:24:36 localhost kernel: GICv3: 128 SPIs implemented
Feb 06 12:24:36 localhost kernel: GICv3: 0 Extended SPIs implemented
Feb 06 12:24:36 localhost kernel: GICv3: Distributor has no Range Selector support
Feb 06 12:24:36 localhost kernel: GICv3: 16 PPIs implemented
Feb 06 12:24:36 localhost kernel: GICv3: CPU0: found redistributor 0 region 0:0x0000000038880000
Feb 06 12:24:36 localhost kernel: ITS: No ITS available, not enabling LPIs
Feb 06 12:24:36 localhost kernel: arch_timer: cp15 timer(s) running at 8.00MHz (phys).
Feb 06 12:24:36 localhost kernel: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
Feb 06 12:24:36 localhost kernel: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
Feb 06 12:24:36 localhost kernel: Console: colour dummy device 80x25
Feb 06 12:24:36 localhost kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
Feb 06 12:24:36 localhost kernel: pid_max: default: 32768 minimum: 301
Feb 06 12:24:36 localhost kernel: LSM: Security Framework initializing
Feb 06 12:24:36 localhost kernel: SELinux:  Initializing.
Feb 06 12:24:36 localhost kernel: Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 12:24:36 localhost kernel: Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 12:24:36 localhost kernel: rcu: Hierarchical SRCU implementation.
Feb 06 12:24:36 localhost kernel: smp: Bringing up secondary CPUs ...
Feb 06 12:24:36 localhost kernel: Detected VIPT I-cache on CPU1
Feb 06 12:24:36 localhost kernel: GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
Feb 06 12:24:36 localhost kernel: CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
Feb 06 12:24:36 localhost kernel: Detected VIPT I-cache on CPU2
Feb 06 12:24:36 localhost kernel: GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
Feb 06 12:24:36 localhost kernel: CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
Feb 06 12:24:36 localhost kernel: Detected VIPT I-cache on CPU3
Feb 06 12:24:36 localhost kernel: GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
Feb 06 12:24:36 localhost kernel: CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
Feb 06 12:24:36 localhost kernel: smp: Brought up 1 node, 4 CPUs
Feb 06 12:24:36 localhost kernel: SMP: Total of 4 processors activated.
Feb 06 12:24:36 localhost kernel: CPU features: detected: 32-bit EL0 Support
Feb 06 12:24:36 localhost kernel: CPU features: detected: CRC32 instructions
Feb 06 12:24:36 localhost kernel: CPU: All CPU(s) started at EL2
Feb 06 12:24:36 localhost kernel: alternatives: patching kernel code
Feb 06 12:24:36 localhost kernel: devtmpfs: initialized
Feb 06 12:24:36 localhost kernel: KASLR disabled due to lack of seed
Feb 06 12:24:36 localhost kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
Feb 06 12:24:36 localhost kernel: futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
Feb 06 12:24:36 localhost kernel: pinctrl core: initialized pinctrl subsystem
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 16
Feb 06 12:24:36 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
Feb 06 12:24:36 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
Feb 06 12:24:36 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
Feb 06 12:24:36 localhost kernel: audit: initializing netlink subsys (disabled)
Feb 06 12:24:36 localhost kernel: audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
Feb 06 12:24:36 localhost kernel: thermal_sys: Registered thermal governor 'step_wise'
Feb 06 12:24:36 localhost kernel: thermal_sys: Registered thermal governor 'power_allocator'
Feb 06 12:24:36 localhost kernel: cpuidle: using governor menu
Feb 06 12:24:36 localhost kernel: hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
Feb 06 12:24:36 localhost kernel: ASID allocator initialised with 65536 entries
Feb 06 12:24:36 localhost kernel: Serial: AMBA PL011 UART driver
Feb 06 12:24:36 localhost kernel: imx mu driver is registered.
Feb 06 12:24:36 localhost kernel: imx rpmsg driver is registered.
Feb 06 12:24:36 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
Feb 06 12:24:36 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
Feb 06 12:24:36 localhost kernel: HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
Feb 06 12:24:36 localhost kernel: HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
Feb 06 12:24:36 localhost kernel: HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
Feb 06 12:24:36 localhost kernel: HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
Feb 06 12:24:36 localhost kernel: cryptd: max_cpu_qlen set to 1000
Feb 06 12:24:36 localhost kernel: iommu: Default domain type: Translated 
Feb 06 12:24:36 localhost kernel: vgaarb: loaded
Feb 06 12:24:36 localhost kernel: SCSI subsystem initialized
Feb 06 12:24:36 localhost kernel: libata version 3.00 loaded.
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver usbfs
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver hub
Feb 06 12:24:36 localhost kernel: usbcore: registered new device driver usb
Feb 06 12:24:36 localhost kernel: mc: Linux media interface: v0.10
Feb 06 12:24:36 localhost kernel: videodev: Linux video capture interface: v2.00
Feb 06 12:24:36 localhost kernel: pps_core: LinuxPPS API ver. 1 registered
Feb 06 12:24:36 localhost kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
Feb 06 12:24:36 localhost kernel: PTP clock support registered
Feb 06 12:24:36 localhost kernel: EDAC MC: Ver: 3.0.0
Feb 06 12:24:36 localhost kernel: FPGA manager framework
Feb 06 12:24:36 localhost kernel: Advanced Linux Sound Architecture Driver Initialized.
Feb 06 12:24:36 localhost kernel: Bluetooth: Core ver 2.22
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 31
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI device and connection manager initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI socket layer initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: L2CAP socket layer initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: SCO socket layer initialized
Feb 06 12:24:36 localhost kernel: clocksource: Switched to clocksource arch_sys_counter
Feb 06 12:24:36 localhost kernel: VFS: Disk quotas dquot_6.6.0
Feb 06 12:24:36 localhost kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 2
Feb 06 12:24:36 localhost kernel: IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
Feb 06 12:24:36 localhost kernel: tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
Feb 06 12:24:36 localhost kernel: TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
Feb 06 12:24:36 localhost kernel: TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
Feb 06 12:24:36 localhost kernel: TCP: Hash tables configured (established 16384 bind 16384)
Feb 06 12:24:36 localhost kernel: UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 12:24:36 localhost kernel: UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 1
Feb 06 12:24:36 localhost kernel: RPC: Registered named UNIX socket transport module.
Feb 06 12:24:36 localhost kernel: RPC: Registered udp transport module.
Feb 06 12:24:36 localhost kernel: RPC: Registered tcp transport module.
Feb 06 12:24:36 localhost kernel: RPC: Registered tcp NFSv4.1 backchannel transport module.
Feb 06 12:24:36 localhost kernel: PCI: CLS 0 bytes, default 64
Feb 06 12:24:36 localhost kernel: Unpacking initramfs...
Feb 06 12:24:36 localhost kernel: Freeing initrd memory: 15480K
Feb 06 12:24:36 localhost kernel: hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
Feb 06 12:24:36 localhost kernel: Initialise system trusted keyrings
Feb 06 12:24:36 localhost kernel: workingset: timestamp_bits=42 max_order=19 bucket_order=0
Feb 06 12:24:36 localhost kernel: NFS: Registering the id_resolver key type
Feb 06 12:24:36 localhost kernel: Key type id_resolver registered
Feb 06 12:24:36 localhost kernel: Key type id_legacy registered
Feb 06 12:24:36 localhost kernel: nfs4filelayout_init: NFSv4 File Layout Driver Registering...
Feb 06 12:24:36 localhost kernel: nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
Feb 06 12:24:36 localhost kernel: jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
Feb 06 12:24:36 localhost kernel: Key type asymmetric registered
Feb 06 12:24:36 localhost kernel: Asymmetric key parser 'x509' registered
Feb 06 12:24:36 localhost kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
Feb 06 12:24:36 localhost kernel: io scheduler mq-deadline registered
Feb 06 12:24:36 localhost kernel: io scheduler kyber registered
Feb 06 12:24:36 localhost kernel: M4 is started
Feb 06 12:24:36 localhost kernel: imx-sdma 302b0000.dma-controller: firmware found.
Feb 06 12:24:36 localhost kernel: imx-sdma 302c0000.dma-controller: firmware found.
Feb 06 12:24:36 localhost kernel: imx-sdma 30bd0000.dma-controller: firmware found.
Feb 06 12:24:36 localhost kernel: mxs-dma 33000000.dma-controller: initialized
Feb 06 12:24:36 localhost kernel: Bus freq driver module loaded
Feb 06 12:24:36 localhost kernel: Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
Feb 06 12:24:36 localhost kernel: 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
Feb 06 12:24:36 localhost kernel: printk: console [ttymxc1] enabled
Feb 06 12:24:36 localhost kernel: printk: bootconsole [ec_imx6q0] disabled
Feb 06 12:24:36 localhost kernel: loop: module loaded
Feb 06 12:24:36 localhost kernel: of_reserved_mem_lookup() returned NULL
Feb 06 12:24:36 localhost kernel: imx ahci driver is registered.
Feb 06 12:24:36 localhost kernel: spi_imx 30800000.spba-bus:spi@30830000: invalid resource
Feb 06 12:24:36 localhost kernel: spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
Feb 06 12:24:36 localhost kernel: tun: Universal TUN/TAP device driver, 1.6
Feb 06 12:24:36 localhost kernel: pps pps0: new PPS source ptp0
Feb 06 12:24:36 localhost kernel: fec 30be0000.ethernet eth0: registered PHC device 0
Feb 06 12:24:36 localhost kernel: e1000: Intel(R) PRO/1000 Network Driver
Feb 06 12:24:36 localhost kernel: e1000: Copyright (c) 1999-2006 Intel Corporation.
Feb 06 12:24:36 localhost kernel: e1000e: Intel(R) PRO/1000 Network Driver
Feb 06 12:24:36 localhost kernel: e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
Feb 06 12:24:36 localhost kernel: igb: Intel(R) Gigabit Ethernet Network Driver
Feb 06 12:24:36 localhost kernel: igb: Copyright (c) 2007-2014 Intel Corporation.
Feb 06 12:24:36 localhost kernel: igbvf: Intel(R) Gigabit Virtual Function Network Driver
Feb 06 12:24:36 localhost kernel: igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
Feb 06 12:24:36 localhost kernel: sky2: driver version 1.30
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver r8152
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver asix
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver ax88179_178a
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver cdc_ether
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver net1080
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver cdc_subset
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver zaurus
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver cdc_ncm
Feb 06 12:24:36 localhost kernel: VFIO - User Level meta-driver version: 0.3
Feb 06 12:24:36 localhost kernel: ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
Feb 06 12:24:36 localhost kernel: ehci-pci: EHCI PCI platform driver
Feb 06 12:24:36 localhost kernel: ehci-platform: EHCI generic platform driver
Feb 06 12:24:36 localhost kernel: ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
Feb 06 12:24:36 localhost kernel: ohci-pci: OHCI PCI platform driver
Feb 06 12:24:36 localhost kernel: ohci-platform: OHCI generic platform driver
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver uas
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver usb-storage
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver usbserial_generic
Feb 06 12:24:36 localhost kernel: usbserial: USB Serial support registered for generic
Feb 06 12:24:36 localhost kernel: i2c /dev entries driver
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART driver ver 2.3
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol H4 registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol BCSP registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol LL registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol ATH3K registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol Three-wire (H5) registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol Broadcom registered
Feb 06 12:24:36 localhost kernel: Bluetooth: HCI UART protocol QCA registered
Feb 06 12:24:36 localhost kernel: sdhci: Secure Digital Host Controller Interface driver
Feb 06 12:24:36 localhost kernel: sdhci: Copyright(c) Pierre Ossman
Feb 06 12:24:36 localhost kernel: Synopsys Designware Multimedia Card Interface Driver
Feb 06 12:24:36 localhost kernel: sdhci-pltfm: SDHCI platform and OF driver helper
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
Feb 06 12:24:36 localhost kernel: ledtrig-cpu: registered to indicate activity on CPUs
Feb 06 12:24:36 localhost kernel: SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
Feb 06 12:24:36 localhost kernel: usbcore: registered new interface driver usbhid
Feb 06 12:24:36 localhost kernel: usbhid: USB HID core driver
Feb 06 12:24:36 localhost kernel: galcore: clk_get vg clock failed, disable vg!
Feb 06 12:24:36 localhost kernel: Galcore version 6.4.3.p2.336687
Feb 06 12:24:36 localhost kernel: mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
Feb 06 12:24:36 localhost kernel: [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 10
Feb 06 12:24:36 localhost kernel: Segment Routing with IPv6
Feb 06 12:24:36 localhost kernel: NET: Registered protocol family 17
Feb 06 12:24:36 localhost kernel: Bluetooth: RFCOMM TTY layer initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: RFCOMM socket layer initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: RFCOMM ver 1.11
Feb 06 12:24:36 localhost kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Feb 06 12:24:36 localhost kernel: Bluetooth: BNEP filters: protocol multicast
Feb 06 12:24:36 localhost kernel: Bluetooth: BNEP socket layer initialized
Feb 06 12:24:36 localhost kernel: Bluetooth: HIDP (Human Interface Emulation) ver 1.2
Feb 06 12:24:36 localhost kernel: Bluetooth: HIDP socket layer initialized
Feb 06 12:24:36 localhost kernel: 8021q: 802.1Q VLAN Support v1.8
Feb 06 12:24:36 localhost kernel: lib80211: common routines for IEEE802.11 drivers
Feb 06 12:24:36 localhost kernel: lib80211_crypt: registered algorithm 'NULL'
Feb 06 12:24:36 localhost kernel: lib80211_crypt: registered algorithm 'WEP'
Feb 06 12:24:36 localhost kernel: lib80211_crypt: registered algorithm 'CCMP'
Feb 06 12:24:36 localhost kernel: lib80211_crypt: registered algorithm 'TKIP'
Feb 06 12:24:36 localhost kernel: tsn generic netlink module v1 init...
Feb 06 12:24:36 localhost kernel: Key type dns_resolver registered
Feb 06 12:24:36 localhost kernel: registered taskstats version 1
Feb 06 12:24:36 localhost kernel: Loading compiled-in X.509 certificates
Feb 06 12:24:36 localhost kernel: usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
Feb 06 12:24:36 localhost kernel: usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
Feb 06 12:24:36 localhost kernel: usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
Feb 06 12:24:36 localhost kernel: usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
Feb 06 12:24:36 localhost kernel: imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 12:24:36 localhost kernel: nxp-pca9450 0-0025: pca9450a probed.
Feb 06 12:24:36 localhost kernel: i2c i2c-0: IMX I2C adapter registered
Feb 06 12:24:36 localhost kernel: imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 12:24:36 localhost kernel: rtc-ds1307 1-0032: registered as rtc0
Feb 06 12:24:36 localhost kernel: rtc-ds1307 1-0032: setting system clock to 2023-02-06T12:24:32 UTC (1675686272)
Feb 06 12:24:36 localhost kernel: i2c i2c-1: IMX I2C adapter registered
Feb 06 12:24:36 localhost kernel: imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 12:24:36 localhost kernel: mmc2: new DDR MMC card at address 0001
Feb 06 12:24:36 localhost kernel: mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
Feb 06 12:24:36 localhost kernel: mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
Feb 06 12:24:36 localhost kernel: mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
Feb 06 12:24:36 localhost kernel: mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
Feb 06 12:24:36 localhost kernel: mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
Feb 06 12:24:36 localhost kernel:  mmcblk2: p1 p2 p3 p4
Feb 06 12:24:36 localhost kernel: input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
Feb 06 12:24:36 localhost kernel: i2c i2c-2: IMX I2C adapter registered
Feb 06 12:24:36 localhost kernel: pwm-backlight backlight: supply power not found, using dummy regulator
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
Feb 06 12:24:36 localhost kernel: SoC: i.MX8MM revision 1.0
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: GPR15=6188ffff
Feb 06 12:24:36 localhost kernel: imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: invalid resource
Feb 06 12:24:36 localhost kernel: imx_usb 32e40000.usb: No over current polarity defined
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.0: EHCI Host Controller
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
Feb 06 12:24:36 localhost kernel: hub 1-0:1.0: USB hub found
Feb 06 12:24:36 localhost kernel: hub 1-0:1.0: 1 port detected
Feb 06 12:24:36 localhost kernel: imx_usb 32e50000.usb: No over current polarity defined
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.1: EHCI Host Controller
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
Feb 06 12:24:36 localhost kernel: ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
Feb 06 12:24:36 localhost kernel: hub 2-0:1.0: USB hub found
Feb 06 12:24:36 localhost kernel: hub 2-0:1.0: 1 port detected
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 12:24:36 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
Feb 06 12:24:36 localhost kernel: hantrodec 0 : module inserted. Major = 234
Feb 06 12:24:36 localhost kernel: hantrodec 1 : module inserted. Major = 234
Feb 06 12:24:36 localhost kernel: hx280enc: module inserted. Major <511>
Feb 06 12:24:36 localhost kernel: ALSA device list:
Feb 06 12:24:36 localhost kernel:   No soundcards found.
Feb 06 12:24:36 localhost kernel: mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: Phy link never came up
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: failed to initialize host
Feb 06 12:24:36 localhost kernel: imx6q-pcie 33800000.pcie: unable to add pcie port.
Feb 06 12:24:36 localhost kernel: Freeing unused kernel memory: 5184K
Feb 06 12:24:36 localhost kernel: Run /init as init process
Feb 06 12:24:36 localhost kernel:   with arguments:
Feb 06 12:24:36 localhost kernel:     /init
Feb 06 12:24:36 localhost kernel:     splash
Feb 06 12:24:36 localhost kernel:   with environment:
Feb 06 12:24:36 localhost kernel:     HOME=/
Feb 06 12:24:36 localhost kernel:     TERM=linux
Feb 06 12:24:36 localhost kernel:     jtag=on
Feb 06 12:24:36 localhost kernel: fec 30be0000.ethernet end0: renamed from eth0
Feb 06 12:24:36 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
Feb 06 12:24:36 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
Feb 06 12:24:36 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
Feb 06 12:24:36 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
Feb 06 12:24:36 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
Feb 06 12:24:36 localhost kernel: [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
Feb 06 12:24:36 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 12:24:36 localhost kernel: device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
Feb 06 12:24:36 localhost kernel: random: lvm: uninitialized urandom read (2 bytes read)
Feb 06 12:24:36 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 12:24:36 localhost kernel: EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 12:24:36 localhost kernel: EXT4-fs (dm-2): recovery complete
Feb 06 12:24:36 localhost kernel: EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 12:24:36 localhost systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
Feb 06 12:24:36 localhost systemd[1]: Detected architecture arm64.
Feb 06 12:24:36 localhost systemd[1]: No hostname configured, using default hostname.
Feb 06 12:24:36 localhost systemd[1]: Hostname set to <localhost>.
Feb 06 12:24:36 localhost kernel: random: lvmconfig: uninitialized urandom read (4 bytes read)
Feb 06 12:24:36 localhost systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
Feb 06 12:24:36 localhost systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
Feb 06 12:24:36 localhost systemd[1]: Queued start job for default target Graphical Interface.
Feb 06 12:24:36 localhost systemd[1]: Unnecessary job was removed for /dev/dm-2.
Feb 06 12:24:36 localhost systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
Feb 06 12:24:36 localhost systemd[1]: Created slice Slice /system/getty.
Feb 06 12:24:36 localhost systemd[1]: Created slice Slice /system/modprobe.
Feb 06 12:24:36 localhost systemd[1]: Created slice Slice /system/serial-getty.
Feb 06 12:24:36 localhost systemd[1]: Created slice Slice /system/systemd-fsck.
Feb 06 12:24:36 localhost systemd[1]: Created slice Slice /system/weston.
Feb 06 12:24:36 localhost systemd[1]: Created slice User and Session Slice.
Feb 06 12:24:36 localhost systemd[1]: Started Forward Password Requests to Wall Directory Watch.
Feb 06 12:24:36 localhost systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
Feb 06 12:24:36 localhost systemd[1]: Reached target Local Integrity Protected Volumes.
Feb 06 12:24:36 localhost systemd[1]: Reached target Remote File Systems.
Feb 06 12:24:36 localhost systemd[1]: Reached target Slice Units.
Feb 06 12:24:36 localhost systemd[1]: Reached target Swaps.
Feb 06 12:24:36 localhost systemd[1]: Reached target Local Verity Protected Volumes.
Feb 06 12:24:36 localhost systemd[1]: Listening on Device-mapper event daemon FIFOs.
Feb 06 12:24:36 localhost systemd[1]: Listening on LVM2 poll daemon socket.
Feb 06 12:24:36 localhost systemd[1]: Listening on fsck to fsckd communication Socket.
Feb 06 12:24:36 localhost systemd[1]: Listening on initctl Compatibility Named Pipe.
Feb 06 12:24:36 localhost systemd[1]: Listening on Journal Audit Socket.
Feb 06 12:24:36 localhost systemd[1]: Listening on Journal Socket (/dev/log).
Feb 06 12:24:36 localhost systemd[1]: Listening on Journal Socket.
Feb 06 12:24:36 localhost systemd[1]: Listening on udev Control Socket.
Feb 06 12:24:36 localhost systemd[1]: Listening on udev Kernel Socket.
Feb 06 12:24:36 localhost systemd[1]: Mounting Huge Pages File System...
Feb 06 12:24:36 localhost systemd[1]: Mounting POSIX Message Queue File System...
Feb 06 12:24:36 localhost systemd[1]: Mounting Kernel Debug File System...
Feb 06 12:24:36 localhost systemd[1]: Mounting Kernel Trace File System...
Feb 06 12:24:36 localhost systemd[1]: Finished Availability of block devices.
Feb 06 12:24:36 localhost systemd[1]: Starting Set the console keyboard layout...
Feb 06 12:24:36 localhost systemd[1]: Starting Create List of Static Device Nodes...
Feb 06 12:24:36 localhost systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
Feb 06 12:24:36 localhost systemd[1]: Starting Load Kernel Module configfs...
Feb 06 12:24:36 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 12:24:36 localhost systemd[1]: Starting Load Kernel Module efi_pstore...
Feb 06 12:24:36 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 12:24:36 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 12:24:36 localhost systemd[1]: Starting Network initialization...
Feb 06 12:24:36 localhost systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
Feb 06 12:24:36 localhost systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
Feb 06 12:24:36 localhost systemd[1]: Starting Journal Service...
Feb 06 12:24:36 localhost systemd[1]: Starting Load Kernel Modules...
Feb 06 12:24:36 localhost kernel: fuse: init (API version 7.32)
Feb 06 12:24:36 localhost systemd[1]: Starting Remount Root and Kernel File Systems...
Feb 06 12:24:36 localhost systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
Feb 06 12:24:36 localhost systemd[1]: Starting Coldplug All udev Devices...
Feb 06 12:24:36 localhost systemd[1]: Starting Uncomplicated firewall...
Feb 06 12:24:36 localhost systemd[1]: Mounted Huge Pages File System.
Feb 06 12:24:36 localhost systemd[1]: Mounted POSIX Message Queue File System.
Feb 06 12:24:36 localhost systemd[1]: Mounted Kernel Debug File System.
Feb 06 12:24:36 localhost systemd[1]: Mounted Kernel Trace File System.
Feb 06 12:24:36 localhost systemd[1]: Finished Create List of Static Device Nodes.
Feb 06 12:24:36 localhost systemd[1]: modprobe@configfs.service: Deactivated successfully.
Feb 06 12:24:36 localhost systemd[1]: Finished Load Kernel Module configfs.
Feb 06 12:24:36 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 12:24:36 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 12:24:36 localhost systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
Feb 06 12:24:36 localhost systemd[1]: Finished Load Kernel Module efi_pstore.
Feb 06 12:24:36 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 12:24:36 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 12:24:36 localhost systemd[1]: Finished Load Kernel Modules.
Feb 06 12:24:36 localhost systemd[1]: Finished Uncomplicated firewall.
Feb 06 12:24:36 localhost systemd[1]: Mounting FUSE Control File System...
Feb 06 12:24:36 localhost systemd[1]: Mounting Kernel Configuration File System...
Feb 06 12:24:36 localhost systemd[1]: Starting Apply Kernel Variables...
Feb 06 12:24:36 localhost systemd[1]: Mounted FUSE Control File System.
Feb 06 12:24:36 localhost systemd[1]: Mounted Kernel Configuration File System.
Feb 06 12:24:36 localhost systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
Feb 06 12:24:36 localhost kernel: random: python3: uninitialized urandom read (24 bytes read)
Feb 06 12:24:36 localhost systemd[1]: Finished Remount Root and Kernel File Systems.
Feb 06 12:24:36 localhost systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 12:24:36 localhost systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
Feb 06 12:24:36 localhost systemd[1]: Starting Load/Save Random Seed...
Feb 06 12:24:36 localhost systemd[1]: Starting Create System Users...
Feb 06 12:24:36 localhost systemd-journald[358]: Journal started
Feb 06 12:24:36 localhost systemd-journald[358]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 12:24:36 localhost systemd[1]: Finished Apply Kernel Variables.
Feb 06 12:24:36 localhost systemd-modules-load[359]: Failed to find module 'lp'
Feb 06 12:24:36 localhost systemd-modules-load[359]: Failed to find module 'ppdev'
Feb 06 12:24:36 localhost systemd[1]: Started Journal Service.
Feb 06 12:24:36 localhost systemd-modules-load[359]: Failed to find module 'parport_pc'
Feb 06 12:24:36 localhost lvm[349]:   5 logical volume(s) in volume group "vg_sys" monitored
Feb 06 12:24:36 localhost networking[363]: rm: cannot remove '/var/tmp/network/ifstatenew': Read-only file system
Feb 06 12:24:36 localhost networking[357]: networking: Configuring network interfaces
Feb 06 12:24:36 localhost systemd-random-seed[380]: Kernel entropy pool is not initialized yet, waiting until it is.
Feb 06 12:24:36 localhost systemd[1]: Finished Create System Users.
Feb 06 12:24:36 localhost systemd[1]: Starting Create Static Device Nodes in /dev...
Feb 06 12:24:36 localhost systemd[1]: Finished Create Static Device Nodes in /dev.
Feb 06 12:24:36 localhost systemd[1]: Starting Rule-based Manager for Device Events and Files...
Feb 06 12:24:36 localhost systemd-udevd[385]: Using default interface naming scheme 'v252'.
Feb 06 12:24:36 localhost systemd[1]: Started Rule-based Manager for Device Events and Files.
Feb 06 12:24:36 localhost systemd[1]: Finished Coldplug All udev Devices.
Feb 06 12:24:36 localhost systemd[1]: Finished Set the console keyboard layout.
Feb 06 12:24:36 localhost systemd[1]: Reached target Preparation for Local File Systems.
Feb 06 12:24:36 localhost systemd[1]: Starting Show Plymouth Boot Screen...
Feb 06 12:24:36 localhost systemd[1]: Started Show Plymouth Boot Screen.
Feb 06 12:24:36 localhost systemd[1]: Dispatch Password Requests to Console Directory Watch was skipped because of an unmet condition check (ConditionPathExists=!/run/plymouth/pid).
Feb 06 12:24:36 localhost systemd[1]: Started Forward Password Requests to Plymouth Directory Watch.
Feb 06 12:24:36 localhost systemd[1]: Reached target Local Encrypted Volumes.
Feb 06 12:24:37 localhost systemd[1]: Found device /dev/disk/by-label/lv_rtvo.
Feb 06 12:24:37 localhost systemd[1]: var-log.mount: Directory /var/log to mount over is not empty, mounting anyway.
Feb 06 12:24:37 localhost systemd[1]: Mounting /var/log...
Feb 06 12:24:37 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_rtvo...
Feb 06 12:24:37 localhost systemd[1]: Found device /dev/ttymxc1.
Feb 06 12:24:37 localhost systemd[1]: Found device /dev/disk/by-label/lv_pavo.
Feb 06 12:24:37 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_pavo...
Feb 06 12:24:37 localhost systemd[1]: Mounted /var/log.
Feb 06 12:24:37 localhost systemd[1]: Starting Flush Journal to Persistent Storage...
Feb 06 12:24:37 localhost systemd-journald[358]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 12:24:37 localhost systemd-journald[358]: Received client request to flush runtime journal.
Feb 06 12:24:37 localhost systemd[1]: Finished Flush Journal to Persistent Storage.
Feb 06 12:24:37 localhost systemd[1]: Started File System Check Daemon to report status.
Feb 06 12:24:37 localhost systemd-udevd[398]: event_source: Failed to get device name: No such file or directory
Feb 06 12:24:37 localhost systemd-fsck[431]: lv_rtvo: recovering journal
Feb 06 12:24:37 localhost systemd-fsck[431]: lv_rtvo: clean, 11/65536 files, 12955/262144 blocks
Feb 06 12:24:37 localhost systemd-fsck[435]: lv_pavo: recovering journal
Feb 06 12:24:37 localhost systemd-fsck[435]: lv_pavo: clean, 11/16384 files, 7465/65536 blocks
Feb 06 12:24:37 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_rtvo.
Feb 06 12:24:37 localhost systemd[1]: Mounting /var/opt/siemens/automation/WinCCUnified/Projects...
Feb 06 12:24:37 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_pavo.
Feb 06 12:24:37 localhost kernel: EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 12:24:37 localhost systemd[1]: Mounting /etc/hmi/FwServices/pa...
Feb 06 12:24:37 localhost systemd[1]: Mounted /var/opt/siemens/automation/WinCCUnified/Projects.
Feb 06 12:24:37 localhost kernel: EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 12:24:37 localhost kernel: ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 12:24:37 localhost systemd[1]: Mounted /etc/hmi/FwServices/pa.
Feb 06 12:24:37 localhost systemd[1]: Reached target Local File Systems.
Feb 06 12:24:37 localhost systemd[1]: Starting Tell Plymouth To Write Out Runtime Data...
Feb 06 12:24:37 localhost systemd[1]: Set Up Additional Binary Formats was skipped because no trigger condition checks were met.
Feb 06 12:24:37 localhost systemd[1]: Starting Create Volatile Files and Directories...
Feb 06 12:24:37 localhost systemd[1]: Finished Tell Plymouth To Write Out Runtime Data.
Feb 06 12:24:37 localhost systemd[1]: Received SIGRTMIN+20 from PID 245 (plymouthd).
Feb 06 12:24:37 localhost systemd[1]: Finished Create Volatile Files and Directories.
Feb 06 12:24:37 localhost systemd[1]: Condition check resulted in /dev/disk/by-id/lvm-pv-uuid-5Rzba1-ZlTA-I4eM-nQii-m4P1-rfub-tWp3XI being skipped.
Feb 06 12:24:37 localhost systemd[1]: Condition check resulted in /dev/disk/by-partlabel/system being skipped.
Feb 06 12:24:37 localhost systemd[1]: Condition check resulted in /dev/block/179:1 being skipped.
Feb 06 12:24:37 localhost systemd[1]: Created slice Slice /system/lvm2-pvscan.
Feb 06 12:24:37 localhost systemd[1]: Starting Set console font and keymap...
Feb 06 12:24:37 localhost systemd[1]: Started Entropy Daemon based on the HAVEGE algorithm.
Feb 06 12:24:37 localhost systemd[1]: Starting LVM event activation on device 179:1...
Feb 06 12:24:37 localhost systemd[1]: Starting Record System Boot/Shutdown in UTMP...
Feb 06 12:24:37 localhost systemd[1]: Finished Set console font and keymap.
Feb 06 12:24:37 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 12:24:37 localhost systemd[1]: Finished Record System Boot/Shutdown in UTMP.
Feb 06 12:24:37 localhost lvm[451]:   pvscan[451] PV /dev/mmcblk2p1 online, VG vg_sys is complete.
Feb 06 12:24:37 localhost lvm[451]:   pvscan[451] VG vg_sys skip autoactivation.
Feb 06 12:24:37 localhost systemd[1]: Reached target System Initialization.
Feb 06 12:24:37 localhost systemd[1]: Started CUPS Scheduler.
Feb 06 12:24:37 localhost systemd[1]: Started Trigger anacron every hour.
Feb 06 12:24:37 localhost systemd[1]: Started Daily apt download activities.
Feb 06 12:24:37 localhost systemd[1]: Started Daily apt upgrade and clean activities.
Feb 06 12:24:37 localhost systemd[1]: Started Periodic ext4 Online Metadata Check for All Filesystems.
Feb 06 12:24:37 localhost systemd[1]: Started Run ent periodically and on boot.
Feb 06 12:24:37 localhost systemd[1]: Started Discard unused blocks once a week.
Feb 06 12:24:37 localhost systemd[1]: Started Daily rotation of log files.
Feb 06 12:24:37 localhost systemd[1]: Started Daily Cleanup of Temporary Directories.
Feb 06 12:24:37 localhost systemd[1]: Reached target Path Units.
Feb 06 12:24:37 localhost systemd[1]: Reached target Timer Units.
Feb 06 12:24:37 localhost systemd[1]: Listening on CUPS Scheduler.
Feb 06 12:24:37 localhost systemd[1]: Listening on D-Bus System Message Bus Socket.
Feb 06 12:24:37 localhost systemd[1]: Starting Docker Socket for the API...
Feb 06 12:24:37 localhost systemd[1]: TPM2 PCR Barrier (Initialization) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 12:24:37 localhost systemd[1]: Listening on Docker Socket for the API.
Feb 06 12:24:37 localhost systemd[1]: Reached target Socket Units.
Feb 06 12:24:37 localhost systemd[1]: Reached target Basic System.
Feb 06 12:24:37 localhost systemd[1]: System is tainted: cgroupsv1
Feb 06 12:24:37 localhost systemd[1]: Started Run anacron jobs.
Feb 06 12:24:37 localhost anacron[456]: Anacron 2.3 started on 2023-02-06
Feb 06 12:24:37 localhost systemd[1]: Started Regular background program processing daemon.
Feb 06 12:24:37 localhost anacron[456]: Normal exit (0 jobs run)
Feb 06 12:24:37 localhost systemd[1]: Started D-Bus System Message Bus.
Feb 06 12:24:37 localhost cron[457]: (CRON) INFO (pidfile fd = 3)
Feb 06 12:24:37 localhost kernel: random: crng init done
Feb 06 12:24:37 localhost kernel: random: 1 urandom warning(s) missed due to ratelimiting
Feb 06 12:24:37 localhost systemd[1]: Starting Network Manager...
Feb 06 12:24:37 localhost cron[457]: (CRON) INFO (Running @reboot jobs)
Feb 06 12:24:37 localhost systemd[1]: Starting Remove Stale Online ext4 Metadata Check Snapshots...
Feb 06 12:24:37 localhost systemd[1]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 12:24:37 localhost systemd[1]: Started Early OOM Daemon.
Feb 06 12:24:37 localhost systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 12:24:37 localhost systemd[1]: getty on tty2-tty6 if dbus and logind are not available was skipped because of an unmet condition check (ConditionPathExists=!/usr/bin/dbus-daemon).
Feb 06 12:24:37 localhost systemd[1]: Starting Initialize hardware monitoring sensors...
Feb 06 12:24:37 localhost systemd[1]: Started LTTng session daemon.
Feb 06 12:24:37 localhost sensors[463]: No sensors found!
Feb 06 12:24:37 localhost sensors[463]: Make sure you loaded all the kernel drivers you need.
Feb 06 12:24:37 localhost sensors[463]: Try sensors-detect to find out which these are.
Feb 06 12:24:37 localhost systemd[1]: Starting User Login Management...
Feb 06 12:24:37 localhost systemd[1]: TPM2 PCR Barrier (User) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 12:24:37 localhost systemd[1]: Starting Disk Manager...
Feb 06 12:24:37 localhost systemd[1]: Starting USBGuard D-Bus Service...
Feb 06 12:24:37 localhost systemd[1]: Starting USBGuard daemon...
Feb 06 12:24:37 localhost systemd[1]: Starting WPA supplicant...
Feb 06 12:24:37 localhost systemd[1]: Finished Load/Save Random Seed.
Feb 06 12:24:37 localhost systemd[1]: Finished LVM event activation on device 179:1.
Feb 06 12:24:37 localhost systemd[1]: anacron.service: Deactivated successfully.
Feb 06 12:24:37 localhost systemd[1]: First Boot Complete was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 12:24:37 localhost systemd[1]: Commit a transient machine-id on disk was skipped because of an unmet condition check (ConditionPathIsMountPoint=/etc/machine-id).
Feb 06 12:24:37 localhost sensors[473]: No sensors found!
Feb 06 12:24:37 localhost sensors[473]: Make sure you loaded all the kernel drivers you need.
Feb 06 12:24:37 localhost sensors[473]: Try sensors-detect to find out which these are.
Feb 06 12:24:37 localhost systemd[1]: Finished Initialize hardware monitoring sensors.
Feb 06 12:24:38 localhost sh[468]: Entropy = 7.999826 bits per byte.
Feb 06 12:24:38 localhost sh[468]: Optimum compression would reduce the size
Feb 06 12:24:38 localhost sh[468]: of this 1048576 byte file by 0 percent.
Feb 06 12:24:38 localhost sh[468]: Chi square distribution for 1048576 samples is 252.81, and randomly
Feb 06 12:24:38 localhost sh[468]: would exceed this value 52.69 percent of the times.
Feb 06 12:24:38 localhost sh[468]: Arithmetic mean value of data bytes is 127.5539 (127.5 = random).
Feb 06 12:24:38 localhost sh[468]: Monte Carlo value for Pi is 3.138691478 (error 0.09 percent).
Feb 06 12:24:38 localhost sh[468]: Serial correlation coefficient is 0.001389 (totally uncorrelated = 0.0).
Feb 06 12:24:38 localhost systemd[1]: ent.service: Deactivated successfully.
Feb 06 12:24:38 localhost systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 12:24:38 localhost systemd[1]: Started WPA supplicant.
Feb 06 12:24:38 localhost wpa_supplicant[472]: Successfully initialized wpa_supplicant
Feb 06 12:24:38 localhost udisksd[467]: udisks daemon version 2.9.2 starting
Feb 06 12:24:38 localhost udisksd[467]: failed to load module crypto: libbd_crypto.so.2: cannot open shared object file: No such file or directory
Feb 06 12:24:38 localhost udisksd[467]: failed to load module mdraid: libbd_mdraid.so.2: cannot open shared object file: No such file or directory
Feb 06 12:24:38 localhost systemd[1]: Started USBGuard D-Bus Service.
Feb 06 12:24:38 localhost haveged[450]: haveged: command socket is listening at fd 3
Feb 06 12:24:38 localhost kernel: LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
Feb 06 12:24:38 localhost udisksd[467]: Failed to load the 'mdraid' libblockdev plugin
Feb 06 12:24:38 localhost udisksd[467]: Failed to load the 'crypto' libblockdev plugin
Feb 06 12:24:38 localhost dbus-daemon[458]: [system] Activating via systemd: service name='org.freedesktop.PolicyKit1' unit='polkit.service' requested by ':1.2' (uid=0 pid=467 comm="/usr/libexec/udisks2/udisksd " label="kernel")
Feb 06 12:24:38 localhost systemd[1]: Starting Authorization Manager...
Feb 06 12:24:38 localhost systemd[1]: e2scrub_reap.service: Deactivated successfully.
Feb 06 12:24:38 localhost systemd[1]: Finished Remove Stale Online ext4 Metadata Check Snapshots.
Feb 06 12:24:38 localhost earlyoom[461]: earlyoom v1.6.2
Feb 06 12:24:38 localhost earlyoom[461]: mem total: 1980 MiB, swap total:    0 MiB
Feb 06 12:24:38 localhost earlyoom[461]: sending SIGTERM when mem <= 20.00% and swap <= 10.00%,
Feb 06 12:24:38 localhost earlyoom[461]:         SIGKILL when mem <= 10.00% and swap <=  5.00%
Feb 06 12:24:38 localhost earlyoom[461]: mem avail:  1735 of  1980 MiB (87.62%), swap free:    0 of    0 MiB ( 0.00%)
Feb 06 12:24:38 localhost polkitd[487]: started daemon version 0.105 using authority implementation `local' version `0.105'
Feb 06 12:24:38 localhost dbus-daemon[458]: [system] Successfully activated service 'org.freedesktop.PolicyKit1'
Feb 06 12:24:38 localhost systemd[1]: Started Authorization Manager.
Feb 06 12:24:38 localhost NetworkManager[459]: <info>  [1675686278.4666] NetworkManager (version 1.30.6) is starting... (for the first time)
Feb 06 12:24:38 localhost NetworkManager[459]: <info>  [1675686278.4668] Read config: /etc/NetworkManager/NetworkManager.conf (lib: no-mac-addr-change.conf)
Feb 06 12:24:38 localhost systemd[1]: Started Network Manager.
Feb 06 12:24:38 localhost systemd[1]: Reached target Network.
Feb 06 12:24:38 localhost systemd[1]: Starting Network Manager Wait Online...
Feb 06 12:24:38 localhost systemd[1]: Starting Crossbar.io service...
Feb 06 12:24:38 localhost systemd[1]: Starting containerd container runtime...
Feb 06 12:24:38 localhost NetworkManager[459]: <info>  [1675686278.5063] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
Feb 06 12:24:38 localhost systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 06 12:24:38 localhost systemd[1]: Starting Simple Network Management Protocol (SNMP) Daemon....
Feb 06 12:24:38 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 12:24:38 localhost systemd[1]: Starting OpenBSD Secure Shell server...
Feb 06 12:24:38 localhost systemd[1]: Starting Permit User Sessions...
Feb 06 12:24:38 localhost systemd[1]: Started Simple Network Management Protocol (SNMP) Daemon..
Feb 06 12:24:38 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 12:24:38 localhost systemd[1]: Finished Permit User Sessions.
Feb 06 12:24:38 localhost systemd[1]: Starting Hold until boot process finishes up...
Feb 06 12:24:38 localhost systemd[1]: Starting Terminate Plymouth Boot Screen...
Feb 06 12:24:38 localhost systemd[1]: Started Weston Wayland Compositor (on tty7).
Feb 06 12:24:38 localhost systemd[1]: Received SIGRTMIN+21 from PID 245 (plymouthd).
Feb 06 12:24:38 localhost systemd[1]: Created slice Slice /system/systemd-backlight.
Feb 06 12:24:38 localhost systemd[1]: Starting Load/Save Screen Backlight Brightness of backlight:backlight...
Feb 06 12:24:38 localhost systemd[1]: Finished Load/Save Screen Backlight Brightness of backlight:backlight.
Feb 06 12:24:38 localhost kernel: caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
Feb 06 12:24:38 localhost kernel: caam 30900000.crypto: job rings = 3, qi = 0
Feb 06 12:24:38 localhost kernel: caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
Feb 06 12:24:38 localhost systemd[1]: Finished Hold until boot process finishes up.
Feb 06 12:24:38 localhost usbguard-daemon[528]: uid=0 pid=471 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' type='Device.Present'
Feb 06 12:24:38 localhost systemd[1]: Started Getty on tty1.
Feb 06 12:24:38 localhost usbguard-daemon[528]: uid=0 pid=471 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 12:24:38 localhost usbguard-daemon[528]: uid=0 pid=471 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' type='Device.Present'
Feb 06 12:24:38 localhost usbguard-daemon[528]: uid=0 pid=471 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 12:24:38 localhost systemd[1]: Started Serial Getty on ttymxc1.
Feb 06 12:24:38 localhost systemd[1]: Reached target Login Prompts.
Feb 06 12:24:38 localhost systemd[1]: Started USBGuard daemon.
Feb 06 12:24:39 localhost systemd[521]: pam_unix(login:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 12:24:38 localhost systemd[1]: Finished Terminate Plymouth Boot Screen.
Feb 06 12:24:39 localhost dbus-daemon[458]: [system] Activating via systemd: service name='org.freedesktop.login1' unit='dbus-org.freedesktop.login1.service' requested by ':1.7' (uid=0 pid=521 comm="(n-launch) " label="kernel")
Feb 06 12:24:39 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 12:24:39 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 12:24:39 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 12:24:39 localhost NetworkManager[459]: <info>  [1675686279.0973] manager[0xaaaad9ed1010]: monitoring kernel firmware directory '/lib/firmware'.
Feb 06 12:24:39 localhost NetworkManager[459]: <info>  [1675686279.0976] monitoring ifupdown state file '/run/network/ifstate'.
Feb 06 12:24:39 localhost dbus-daemon[458]: [system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.5' (uid=0 pid=459 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 12:24:39 localhost systemd[1]: Starting Hostname Service...
Feb 06 12:24:39 localhost systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 06 12:24:39 localhost containerd[507]: time="2023-02-06T12:24:39.346485000Z" level=info msg="starting containerd" revision="1.4.13~ds1-1~deb11u3" version="1.4.13~ds1"
Feb 06 12:24:39 localhost systemd-logind[465]: New seat seat0.
Feb 06 12:24:39 localhost dbus-daemon[458]: [system] Successfully activated service 'org.freedesktop.login1'
Feb 06 12:24:39 localhost systemd[1]: Started User Login Management.
Feb 06 12:24:39 localhost sshd[544]: Server listening on 0.0.0.0 port 22.
Feb 06 12:24:39 localhost sshd[544]: Server listening on :: port 22.
Feb 06 12:24:39 localhost systemd[1]: Started OpenBSD Secure Shell server.
Feb 06 12:24:39 localhost systemd[1]: Created slice User Slice of UID 500.
Feb 06 12:24:39 localhost systemd[1]: Starting User Runtime Directory /run/user/500...
Feb 06 12:24:39 localhost systemd-logind[465]: New session 1 of user industrial.
Feb 06 12:24:39 localhost systemd[1]: Finished User Runtime Directory /run/user/500.
Feb 06 12:24:39 localhost systemd[1]: Starting User Manager for UID 500...
Feb 06 12:24:39 localhost systemd[565]: pam_unix(systemd-user:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 12:24:39 localhost systemd[1]: Started Disk Manager.
Feb 06 12:24:39 localhost udisksd[467]: Acquired the name org.freedesktop.UDisks2 on the system message bus
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.030439000Z" level=info msg="loading plugin \"io.containerd.content.v1.content\"..." type=io.containerd.content.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.033032625Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.aufs\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.046239625Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.aufs\"..." error="aufs is not supported (modprobe aufs failed: exit status 1 \"modprobe: FATAL: Module aufs not found in directory /lib/modules/5.10.158-cip22+ind1\\n\"): skip plugin" type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.046489875Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.047892625Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.btrfs (overlay) must be a btrfs filesystem to be used with the btrfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.048107000Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.devmapper\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.048296500Z" level=warning msg="failed to load plugin io.containerd.snapshotter.v1.devmapper" error="devmapper not configured"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.048363125Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.native\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.049141625Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.overlayfs\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.058829000Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.zfs\"..." type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.060077375Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.zfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.zfs must be a zfs filesystem to be used with the zfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.060289875Z" level=info msg="loading plugin \"io.containerd.metadata.v1.bolt\"..." type=io.containerd.metadata.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.060543500Z" level=warning msg="could not use snapshotter devmapper in metadata plugin" error="devmapper not configured"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.060632625Z" level=info msg="metadata content store policy set" policy=shared
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.063278125Z" level=info msg="loading plugin \"io.containerd.differ.v1.walking\"..." type=io.containerd.differ.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.063493750Z" level=info msg="loading plugin \"io.containerd.gc.v1.scheduler\"..." type=io.containerd.gc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.063991500Z" level=info msg="loading plugin \"io.containerd.service.v1.introspection-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064249125Z" level=info msg="loading plugin \"io.containerd.service.v1.containers-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064392750Z" level=info msg="loading plugin \"io.containerd.service.v1.content-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064476250Z" level=info msg="loading plugin \"io.containerd.service.v1.diff-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064556000Z" level=info msg="loading plugin \"io.containerd.service.v1.images-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064625125Z" level=info msg="loading plugin \"io.containerd.service.v1.leases-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064721000Z" level=info msg="loading plugin \"io.containerd.service.v1.namespaces-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064786875Z" level=info msg="loading plugin \"io.containerd.service.v1.snapshots-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.064852125Z" level=info msg="loading plugin \"io.containerd.runtime.v1.linux\"..." type=io.containerd.runtime.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.065307375Z" level=info msg="loading plugin \"io.containerd.runtime.v2.task\"..." type=io.containerd.runtime.v2
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.065779875Z" level=info msg="loading plugin \"io.containerd.monitor.v1.cgroups\"..." type=io.containerd.monitor.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.084398750Z" level=info msg="loading plugin \"io.containerd.service.v1.tasks-service\"..." type=io.containerd.service.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.084702375Z" level=info msg="loading plugin \"io.containerd.internal.v1.restart\"..." type=io.containerd.internal.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.084996125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.containers\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085114125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.content\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085186125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.diff\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085247375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.events\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085336625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.healthcheck\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085400750Z" level=info msg="loading plugin \"io.containerd.grpc.v1.images\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085468125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.leases\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085530125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.namespaces\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.085591750Z" level=info msg="loading plugin \"io.containerd.internal.v1.opt\"..." type=io.containerd.internal.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.086613750Z" level=info msg="loading plugin \"io.containerd.grpc.v1.snapshots\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.086788250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.tasks\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.086864375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.version\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.086920625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.cri\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.087424250Z" level=info msg="Start cri plugin with config {PluginConfig:{ContainerdConfig:{Snapshotter:overlayfs DefaultRuntimeName:runc DefaultRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} UntrustedWorkloadRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} Runtimes:map[runc:{Type:io.containerd.runc.v2 Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:0x40003caea0 PrivilegedWithoutHostDevices:false BaseRuntimeSpec:}] NoPivot:false DisableSnapshotAnnotations:true DiscardUnpackedLayers:false} CniConfig:{NetworkPluginBinDir:/usr/lib/cni NetworkPluginConfDir:/etc/cni/net.d NetworkPluginMaxConfNum:1 NetworkPluginConfTemplate:} Registry:{Mirrors:map[docker.io:{Endpoints:[https://registry-1.docker.io]}] Configs:map[] Auths:map[] Headers:map[]} ImageDecryption:{KeyModel:} DisableTCPService:true StreamServerAddress:127.0.0.1 StreamServerPort:0 StreamIdleTimeout:4h0m0s EnableSelinux:false SelinuxCategoryRange:1024 SandboxImage:k8s.gcr.io/pause:3.2 StatsCollectPeriod:10 SystemdCgroup:false EnableTLSStreaming:false X509KeyPairStreaming:{TLSCertFile: TLSKeyFile:} MaxContainerLogLineSize:16384 DisableCgroup:false DisableApparmor:false RestrictOOMScoreAdj:false MaxConcurrentDownloads:3 DisableProcMount:false UnsetSeccompProfile: TolerateMissingHugetlbController:true DisableHugetlbController:true IgnoreImageDefinedVolumes:false} ContainerdRootDir:/var/lib/containerd ContainerdEndpoint:/run/containerd/containerd.sock RootDir:/var/lib/containerd/io.containerd.grpc.v1.cri StateDir:/run/containerd/io.containerd.grpc.v1.cri}"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.087745375Z" level=info msg="Connect containerd service"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.088112375Z" level=info msg="Get image filesystem path \"/var/lib/containerd/io.containerd.snapshotter.v1.overlayfs\""
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.108816125Z" level=error msg="failed to load cni during init, please check CRI plugin status before setting up network for pods" error="cni config load failed: no network config found in /etc/cni/net.d: cni plugin not initialized: failed to load cni config"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.109153375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.introspection\"..." type=io.containerd.grpc.v1
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.109273625Z" level=info msg="Start subscribing containerd event"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.109551375Z" level=info msg="Start recovering state"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.110039875Z" level=info msg="Start event monitor"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.110336625Z" level=info msg=serving... address=/run/containerd/containerd.sock.ttrpc
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.110768125Z" level=info msg=serving... address=/run/containerd/containerd.sock
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.110835875Z" level=info msg="Start snapshots syncer"
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.111028750Z" level=info msg="Start cni network conf syncer"
Feb 06 12:24:40 localhost systemd[1]: Started containerd container runtime.
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.111062500Z" level=info msg="Start streaming server"
Feb 06 12:24:40 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 12:24:40 localhost containerd[507]: time="2023-02-06T12:24:40.111165125Z" level=info msg="containerd successfully booted in 0.771148s"
Feb 06 12:24:40 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 12:24:40 localhost haveged[450]: haveged: ver: 1.9.14; arch: generic; vend: ; build: (gcc 10.2.1 CTV); collect: 128K
Feb 06 12:24:40 localhost haveged[450]: haveged: cpu: (VC); data: 16K (D V); inst: 16K (D V); idx: 11/40; sz: 15456/64452
Feb 06 12:24:40 localhost haveged[450]: haveged: tot tests(BA8): A:1/1 B:1/1 continuous tests(B):  last entropy estimate 7.99738
Feb 06 12:24:40 localhost haveged[450]: haveged: fills: 0, generated: 0
Feb 06 12:24:40 localhost systemd[1]: Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
Feb 06 12:24:40 localhost systemd[565]: Queued start job for default target Main User Target.
Feb 06 12:24:40 localhost systemd[565]: Created slice User Application Slice.
Feb 06 12:24:40 localhost systemd[565]: Reached target Paths.
Feb 06 12:24:40 localhost systemd[565]: Reached target Timers.
Feb 06 12:24:40 localhost systemd[565]: Starting D-Bus User Message Bus Socket...
Feb 06 12:24:40 localhost systemd[565]: Listening on GnuPG network certificate management daemon.
Feb 06 12:24:40 localhost systemd[565]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 12:24:40 localhost systemd[565]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 12:24:40 localhost systemd[565]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 12:24:40 localhost systemd[565]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 12:24:40 localhost systemd[565]: Listening on D-Bus User Message Bus Socket.
Feb 06 12:24:40 localhost systemd[565]: Reached target Sockets.
Feb 06 12:24:40 localhost systemd[565]: Reached target Basic System.
Feb 06 12:24:40 localhost systemd[1]: Started User Manager for UID 500.
Feb 06 12:24:40 localhost systemd[1]: Started Session 1 of User industrial.
Feb 06 12:24:40 localhost systemd[565]: Reached target Main User Target.
Feb 06 12:24:40 localhost systemd[565]: Startup finished in 747ms.
Feb 06 12:24:40 localhost networking[503]: warning: vrf: cache v4: cmd '/bin/ip rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 12:24:40 localhost networking[503]: Dump terminated
Feb 06 12:24:40 localhost networking[503]: )
Feb 06 12:24:40 localhost dbus-daemon[458]: [system] Successfully activated service 'org.freedesktop.hostname1'
Feb 06 12:24:40 localhost systemd[1]: Started Hostname Service.
Feb 06 12:24:40 localhost networking[503]: warning: vrf: cache v6: cmd '/bin/ip -6 rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 12:24:40 localhost networking[503]: Dump terminated
Feb 06 12:24:40 localhost networking[503]: )
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.5165] hostname: hostname: using hostnamed
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.5208] dns-mgr[0xaaaad9ec7170]: init: dns=default,systemd-resolved rc-manager=symlink (auto)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.5292] manager[0xaaaad9ed1010]: rfkill: Wi-Fi hardware radio set enabled
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.5301] manager[0xaaaad9ed1010]: rfkill: WWAN hardware radio set enabled
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.5791] Loaded device plugin: NMAtmManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-adsl.so)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.6513] Loaded device plugin: NMBluezManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-bluetooth.so)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.6952] Loaded device plugin: NMWwanFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wwan.so)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7090] Loaded device plugin: NMWifiFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wifi.so)
Feb 06 12:24:40 localhost kernel: caam_jr 30901000.jr: failed to flush job ring 0
Feb 06 12:24:40 localhost kernel: caam_jr: probe of 30901000.jr failed with error -5
Feb 06 12:24:40 localhost weston-launch[615]: Internal warning: debug scope 'drm-backend' has not been destroyed.
Feb 06 12:24:40 localhost weston-launch[521]: failed to restore keyboard mode: Bad file descriptor
Feb 06 12:24:40 localhost weston-launch[521]: failed to set KD_TEXT mode on tty: Bad file descriptor
Feb 06 12:24:40 localhost weston-launch[521]: could not reset vt handling
Feb 06 12:24:40 localhost systemd[1]: weston@industrial.service: Main process exited, code=exited, status=1/FAILURE
Feb 06 12:24:40 localhost systemd[1]: weston@industrial.service: Failed with result 'exit-code'.
Feb 06 12:24:40 localhost systemd[1]: session-1.scope: Deactivated successfully.
Feb 06 12:24:40 localhost systemd-logind[465]: Session 1 logged out. Waiting for processes to exit.
Feb 06 12:24:40 localhost systemd-logind[465]: Removed session 1.
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7731] Loaded device plugin: NMTeamFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-team.so)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7784] manager: rfkill: Wi-Fi enabled by radio killswitch; enabled by state file
Feb 06 12:24:40 localhost kernel: caam algorithms registered in /proc/crypto
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7949] manager: rfkill: WWAN enabled by radio killswitch; enabled by state file
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7964] manager: Networking is enabled by state file
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.7976] dhcp-init: Using DHCP client 'internal'
Feb 06 12:24:40 localhost dbus-daemon[458]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.5' (uid=0 pid=459 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8116] settings: Loaded settings plugin: ifupdown ("/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-settings-plugin-ifupdown.so")
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8119] settings: Loaded settings plugin: keyfile (internal)
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8123] ifupdown: management mode: unmanaged
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8125] ifupdown:       interface-parser: parsing file /etc/network/interfaces
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8126] ifupdown:       interface-parser: finished parsing file /etc/network/interfaces
Feb 06 12:24:40 localhost systemd[1]: Starting Network Manager Script Dispatcher Service...
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8288] device (lo): carrier: link connected
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8346] manager: (lo): new Generic device (/org/freedesktop/NetworkManager/Devices/1)
Feb 06 12:24:40 localhost kernel: caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
Feb 06 12:24:40 localhost kernel: caam 30900000.crypto: registering rng-caam
Feb 06 12:24:40 localhost kernel: Device caam-keygen registered
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.8624] manager: (end0): new Ethernet device (/org/freedesktop/NetworkManager/Devices/2)
Feb 06 12:24:40 localhost kernel: fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.9086] settings: (end0): created default wired connection 'Wired connection 1'
Feb 06 12:24:40 localhost NetworkManager[459]: <info>  [1675686280.9225] device (end0): state change: unmanaged -> unavailable (reason 'managed', sys-iface-state: 'external')
Feb 06 12:24:40 localhost kernel: Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
Feb 06 12:24:40 localhost dbus-daemon[458]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Feb 06 12:24:40 localhost systemd[1]: Started Network Manager Script Dispatcher Service.
Feb 06 12:24:40 localhost NetworkManager[459]: <warn>  [1675686280.9557] Error: failed to open /run/network/ifstate
Feb 06 12:24:41 localhost systemd[1]: Finished Network initialization.
Feb 06 12:24:43 localhost crossbar[496]: Directory /web already exists - SKIPPING
Feb 06 12:24:43 localhost crossbar[496]: Directory /.crossbar already exists - SKIPPING
Feb 06 12:24:43 localhost crossbar[496]: File /README.md already exists - SKIPPING
Feb 06 12:24:43 localhost crossbar[496]: File /web/README.md already exists - SKIPPING
Feb 06 12:24:43 localhost crossbar[496]: File /.crossbar/config.json already exists - SKIPPING
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0079] device (end0): carrier: link connected
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0092] device (end0): state change: unavailable -> disconnected (reason 'carrier-changed', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost kernel: fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
Feb 06 12:24:44 localhost kernel: IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0119] policy: auto-activating connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0141] device (end0): Activation: starting connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0146] device (end0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0159] manager: NetworkManager state is now CONNECTING
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0168] device (end0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0209] device (end0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0235] dhcp4 (end0): activation: beginning transaction (timeout in 45 seconds)
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0831] dhcp4 (end0): state changed unknown -> bound, address=134.86.254.71
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0874] device (end0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.0990] device (end0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1001] device (end0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1045] manager: NetworkManager state is now CONNECTED_LOCAL
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1113] manager: NetworkManager state is now CONNECTED_SITE
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1134] policy: set 'Wired connection 1' (end0) as default for IPv4 routing and DNS
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1269] device (end0): Activation: successful, device activated.
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1339] manager: NetworkManager state is now CONNECTED_GLOBAL
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1371] manager: startup complete
Feb 06 12:24:44 localhost systemd[1]: Finished Network Manager Wait Online.
Feb 06 12:24:44 localhost systemd[1]: Reached target Network is Online.
Feb 06 12:24:44 localhost NetworkManager[459]: <info>  [1675686284.1652] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 12:24:44 localhost systemd[1]: Starting Docker Application Container Engine...
Feb 06 12:24:44 localhost.localdomain systemd-hostnamed[542]: Hostname set to <localhost.localdomain> (transient)
Feb 06 12:24:44 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 12:24:44 localhost.localdomain crossbar[496]: Initializing node in directory '/'
Feb 06 12:24:44 localhost.localdomain crossbar[496]: Using template from '/usr/lib/python3/dist-packages/crossbar/node/templates/default'
Feb 06 12:24:44 localhost.localdomain crossbar[496]: Node key files exist and are valid. Node public key is 0x4e11fad1afb274d91bf345271e5583001f0a81c6c87190238e95b19111494c5a
Feb 06 12:24:44 localhost.localdomain crossbar[496]: Node key loaded from /.crossbar/key.priv
Feb 06 12:24:44 localhost.localdomain crossbar[496]: Application template initialized
Feb 06 12:24:44 localhost.localdomain crossbar[496]: To start your node, run 'crossbar start --cbdir /.crossbar'
Feb 06 12:24:44 localhost.localdomain ntpd[724]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 12:24:44 localhost.localdomain ntpd[724]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 12:24:44 localhost.localdomain ntpd[724]: ----------------------------------------------------
Feb 06 12:24:44 localhost.localdomain ntpd[724]: ntp-4 is maintained by Network Time Foundation,
Feb 06 12:24:44 localhost.localdomain ntpd[724]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 12:24:44 localhost.localdomain ntpd[724]: corporation.  Support and training for ntp-4 are
Feb 06 12:24:44 localhost.localdomain ntpd[724]: available at https://www.nwtime.org/support
Feb 06 12:24:44 localhost.localdomain ntpd[724]: ----------------------------------------------------
Feb 06 12:24:44 localhost.localdomain ntpd[741]: proto: precision = 0.125 usec (-23)
Feb 06 12:24:44 localhost.localdomain ntpd[741]: basedate set to 2020-09-11
Feb 06 12:24:44 localhost.localdomain ntpd[741]: gps base set to 2020-09-13 (week 2123)
Feb 06 12:24:44 localhost.localdomain ntpd[741]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 12:24:44 localhost.localdomain ntpd[741]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listen normally on 4 lo [::1]:123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 12:24:44 localhost.localdomain ntpd[741]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 12:24:44 localhost.localdomain ntpd[741]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 12:24:44 localhost.localdomain ntpd[741]: Listening on routing socket on fd #21 for interface updates
Feb 06 12:24:44 localhost.localdomain ntpd[741]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:44 localhost.localdomain ntpd[741]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:44 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 12:24:44 localhost.localdomain systemd[1]: Started Crossbar.io service.
Feb 06 12:24:44 localhost.localdomain ntpd[741]: ntpd exiting on signal 15 (Terminated)
Feb 06 12:24:44 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 12:24:44 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 12:24:44 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 12:24:44 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 12:24:44 localhost.localdomain ntpd[751]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 12:24:44 localhost.localdomain ntpd[751]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -c /run/ntp.conf.dhcp -u 102:108
Feb 06 12:24:44 localhost.localdomain ntpd[751]: ----------------------------------------------------
Feb 06 12:24:44 localhost.localdomain ntpd[751]: ntp-4 is maintained by Network Time Foundation,
Feb 06 12:24:44 localhost.localdomain ntpd[751]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 12:24:44 localhost.localdomain ntpd[751]: corporation.  Support and training for ntp-4 are
Feb 06 12:24:44 localhost.localdomain ntpd[751]: available at https://www.nwtime.org/support
Feb 06 12:24:44 localhost.localdomain ntpd[751]: ----------------------------------------------------
Feb 06 12:24:44 localhost.localdomain ntpd[757]: proto: precision = 0.125 usec (-23)
Feb 06 12:24:44 localhost.localdomain ntpd[757]: basedate set to 2020-09-11
Feb 06 12:24:44 localhost.localdomain ntpd[757]: gps base set to 2020-09-13 (week 2123)
Feb 06 12:24:44 localhost.localdomain ntpd[757]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 12:24:44 localhost.localdomain ntpd[757]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listen normally on 4 lo [::1]:123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 12:24:44 localhost.localdomain ntpd[757]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 12:24:44 localhost.localdomain ntpd[757]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 12:24:44 localhost.localdomain ntpd[757]: Listening on routing socket on fd #21 for interface updates
Feb 06 12:24:44 localhost.localdomain ntpd[757]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:44 localhost.localdomain ntpd[757]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:44 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.199126151Z" level=info msg="Starting up"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.213874347Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.214272846Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.214414470Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.214482470Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.236088516Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.236222390Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.236311015Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.236360390Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.411651124Z" level=warning msg="Usage of loopback devices is strongly discouraged for production use. Please use `--storage-opt dm.thinpooldev` or use `man dockerd` to refer to dm.thinpooldev section." storage-driver=devicemapper
Feb 06 12:24:45 localhost.localdomain NetworkManager[459]: <info>  [1675686285.4435] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.502081668Z" level=warning msg="Base device already exists and has filesystem ext4 on it. User specified filesystem  will be ignored." storage-driver=devicemapper
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.567020306Z" level=info msg="[graphdriver] using prior storage driver: devicemapper"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.567168555Z" level=warning msg="[graphdriver] WARNING: the devicemapper storage-driver is deprecated, and will be removed in a future release"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.592921211Z" level=warning msg="Your kernel does not support cgroup blkio weight"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.593082335Z" level=warning msg="Your kernel does not support cgroup blkio weight_device"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.593123960Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_bps_device"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.593159710Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_bps_device"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.593191210Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_iops_device"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.593221710Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_iops_device"
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.594070957Z" level=info msg="Loading containers: start."
Feb 06 12:24:45 localhost.localdomain kernel: bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
Feb 06 12:24:45 localhost.localdomain kernel: Bridge firewalling registered
Feb 06 12:24:45 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:45.926660365Z" level=warning msg="Could not load necessary modules for IPSEC rules: protocol not supported"
Feb 06 12:24:45 localhost.localdomain NetworkManager[459]: <info>  [1675686285.9654] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1239] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1386] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1429] device (docker0): Activation: starting connection 'docker0' (48d4045f-4f47-4355-a788-d90a64e1d45c)
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1503] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1520] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1536] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1617] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1716] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1752] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.1814] device (docker0): Activation: successful, device activated.
Feb 06 12:24:46 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:46.290870534Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip can be used to set a preferred IP address"
Feb 06 12:24:46 localhost.localdomain ntpd[757]: ntpd exiting on signal 15 (Terminated)
Feb 06 12:24:46 localhost.localdomain ntpd[757]: 134.86.61.33 local addr 134.86.254.71 -> <null>
Feb 06 12:24:46 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 12:24:46 localhost.localdomain ntpd[757]: 137.202.187.89 local addr 134.86.254.71 -> <null>
Feb 06 12:24:46 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 12:24:46 localhost.localdomain ntpd[903]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 12:24:46 localhost.localdomain ntpd[903]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 12:24:46 localhost.localdomain ntpd[903]: ----------------------------------------------------
Feb 06 12:24:46 localhost.localdomain ntpd[903]: ntp-4 is maintained by Network Time Foundation,
Feb 06 12:24:46 localhost.localdomain ntpd[903]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 12:24:46 localhost.localdomain ntpd[903]: corporation.  Support and training for ntp-4 are
Feb 06 12:24:46 localhost.localdomain ntpd[903]: available at https://www.nwtime.org/support
Feb 06 12:24:46 localhost.localdomain ntpd[903]: ----------------------------------------------------
Feb 06 12:24:46 localhost.localdomain ntpd[917]: proto: precision = 0.125 usec (-23)
Feb 06 12:24:46 localhost.localdomain ntpd[917]: basedate set to 2020-09-11
Feb 06 12:24:46 localhost.localdomain ntpd[917]: gps base set to 2020-09-13 (week 2123)
Feb 06 12:24:46 localhost.localdomain ntpd[917]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 12:24:46 localhost.localdomain ntpd[917]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen normally on 4 lo [::1]:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listen normally on 5 end0 [fe80::7e63:9923:2c77:e358%2]:123
Feb 06 12:24:46 localhost.localdomain ntpd[917]: Listening on routing socket on fd #22 for interface updates
Feb 06 12:24:46 localhost.localdomain ntpd[917]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:46 localhost.localdomain ntpd[917]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 12:24:46 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 12:24:46 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:46.508794112Z" level=info msg="Loading containers: done."
Feb 06 12:24:46 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:46.649965345Z" level=info msg="Docker daemon" commit=363e9a8 graphdriver(s)=devicemapper version=20.10.5+dfsg1
Feb 06 12:24:46 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:46.650822967Z" level=info msg="Daemon has completed initialization"
Feb 06 12:24:46 localhost.localdomain systemd[1]: Started Docker Application Container Engine.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Reached target Multi-User System.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Reached target Graphical Interface.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Reached target MEL OS Boot Complete.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Starting Record Runlevel Change in UTMP...
Feb 06 12:24:46 localhost.localdomain NetworkManager[459]: <info>  [1675686286.7394] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 12:24:46 localhost.localdomain dockerd[721]: time="2023-02-06T12:24:46.753357342Z" level=info msg="API listen on /var/run/docker.sock"
Feb 06 12:24:46 localhost.localdomain systemd[1]: systemd-update-utmp-runlevel.service: Deactivated successfully.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Finished Record Runlevel Change in UTMP.
Feb 06 12:24:46 localhost.localdomain systemd[1]: Startup finished in 4.136s (kernel) + 11.560s (userspace) = 15.697s.
Feb 06 12:24:49 localhost.localdomain ntpd[917]: Soliciting pool server 172.107.84.94
Feb 06 12:24:49 localhost.localdomain ntpd[917]: Soliciting pool server 162.159.200.123
Feb 06 12:24:50 localhost.localdomain ntpd[917]: Soliciting pool server 69.164.213.136
Feb 06 12:24:50 localhost.localdomain ntpd[917]: Soliciting pool server 198.137.202.56
Feb 06 12:24:50 localhost.localdomain ntpd[917]: Soliciting pool server 149.248.11.87
Feb 06 12:24:51 localhost.localdomain systemd[1]: Stopping User Manager for UID 500...
Feb 06 12:24:51 localhost.localdomain systemd[565]: Activating special unit Exit the Session...
Feb 06 12:24:51 localhost.localdomain systemd[565]: Stopped target Main User Target.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Stopped target Basic System.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Stopped target Paths.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Stopped target Sockets.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Stopped target Timers.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed D-Bus User Message Bus Socket.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed GnuPG network certificate management daemon.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 12:24:51 localhost.localdomain systemd[565]: Closed GnuPG cryptographic agent and passphrase cache.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Removed slice User Application Slice.
Feb 06 12:24:51 localhost.localdomain systemd-journald[358]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2732 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
Feb 06 12:24:51 localhost.localdomain systemd-journald[358]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Reached target Shutdown.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Finished Exit the Session.
Feb 06 12:24:51 localhost.localdomain systemd[565]: Reached target Exit the Session.
Feb 06 12:24:51 localhost.localdomain systemd[1]: user@500.service: Deactivated successfully.
Feb 06 12:24:51 localhost.localdomain systemd[1]: Stopped User Manager for UID 500.
Feb 06 12:24:51 localhost.localdomain systemd[1]: Stopping User Runtime Directory /run/user/500...
Feb 06 12:24:51 localhost.localdomain systemd[1]: run-user-500.mount: Deactivated successfully.
Feb 06 12:24:51 localhost.localdomain systemd[1]: user-runtime-dir@500.service: Deactivated successfully.
Feb 06 12:24:51 localhost.localdomain systemd[1]: Stopped User Runtime Directory /run/user/500.
Feb 06 12:24:51 localhost.localdomain systemd[1]: Removed slice User Slice of UID 500.
Feb 06 12:24:51 localhost.localdomain ntpd[917]: Soliciting pool server 207.244.103.95
Feb 06 12:24:51 localhost.localdomain ntpd[917]: Soliciting pool server 44.4.53.2
Feb 06 12:24:51 localhost.localdomain ntpd[917]: Soliciting pool server 129.146.193.200
Feb 06 12:24:52 localhost.localdomain ntpd[917]: Soliciting pool server 45.63.54.13
Feb 06 12:24:52 localhost.localdomain ntpd[917]: Soliciting pool server 204.93.207.12
Feb 06 12:24:52 localhost.localdomain ntpd[917]: Soliciting pool server 38.229.53.9
Feb 06 12:24:52 localhost.localdomain ntpd[917]: Soliciting pool server 171.66.97.126
Feb 06 12:24:52 localhost.localdomain ntpd[917]: Soliciting pool server 173.255.243.207
Feb 06 12:24:53 localhost.localdomain ntpd[917]: Soliciting pool server 96.126.122.39
Feb 06 12:24:53 localhost.localdomain ntpd[917]: Soliciting pool server 129.250.35.250
Feb 06 12:24:54 localhost.localdomain ntpd[917]: Soliciting pool server 138.197.15.27
Feb 06 12:24:54 localhost.localdomain ntpd[917]: Soliciting pool server 2604:a880:400:d0::1c9d:e001
Feb 06 12:24:57 localhost.localdomain systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.6868fb60 does not match aorg 0000000000.00000000 from server@204.93.207.12 xmt 0xe78b7018.8d680714
Feb 06 12:24:56 localhost.localdomain systemd-journald[358]: Time jumped backwards, rotating.
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.6867e73e does not match aorg 0000000000.00000000 from server@38.229.53.9 xmt 0xe78b7018.932bbad9
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.686b0cbb does not match aorg 0000000000.00000000 from server@149.248.11.87 xmt 0xe78b7018.8dd4fa40
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.685dcd69 does not match aorg 0000000000.00000000 from server@96.126.122.39 xmt 0xe78b7018.8fff83ab
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.686c075b does not match aorg 0000000000.00000000 from server@198.137.202.56 xmt 0xe78b7018.93ec6692
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.6866c960 does not match aorg 0000000000.00000000 from server@173.255.243.207 xmt 0xe78b7018.9328e26a
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.68657fe2 does not match aorg 0000000000.00000000 from server@171.66.97.126 xmt 0xe78b7018.97e387cf
Feb 06 12:24:56 localhost.localdomain ntpd[917]: receive: Unexpected origin timestamp 0xe78b7019.686a12c7 does not match aorg 0000000000.00000000 from server@129.146.193.200 xmt 0xe78b7018.c416cb0f
Feb 06 12:25:08 localhost.localdomain systemd[1]: systemd-fsckd.service: Deactivated successfully.
Feb 06 12:25:15 localhost.localdomain systemd[1]: systemd-hostnamed.service: Deactivated successfully.
Feb 06 12:25:30 localhost.localdomain systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 12:25:30 localhost.localdomain sh[968]: Entropy = 7.999829 bits per byte.
Feb 06 12:25:30 localhost.localdomain sh[968]: Optimum compression would reduce the size
Feb 06 12:25:30 localhost.localdomain sh[968]: of this 1048576 byte file by 0 percent.
Feb 06 12:25:30 localhost.localdomain sh[968]: Chi square distribution for 1048576 samples is 249.09, and randomly
Feb 06 12:25:30 localhost.localdomain sh[968]: would exceed this value 59.26 percent of the times.
Feb 06 12:25:30 localhost.localdomain sh[968]: Arithmetic mean value of data bytes is 127.6138 (127.5 = random).
Feb 06 12:25:30 localhost.localdomain sh[968]: Monte Carlo value for Pi is 3.144756869 (error 0.10 percent).
Feb 06 12:25:30 localhost.localdomain sh[968]: Serial correlation coefficient is -0.001477 (totally uncorrelated = 0.0).
Feb 06 12:25:30 localhost.localdomain systemd[1]: ent.service: Deactivated successfully.
Feb 06 12:25:30 localhost.localdomain systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 12:27:23 localhost.localdomain sshd[969]: Accepted publickey for root from 134.86.254.7 port 59200 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:27:23 localhost.localdomain sshd[969]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:27:23 localhost.localdomain systemd[1]: Created slice User Slice of UID 0.
Feb 06 12:27:23 localhost.localdomain systemd[1]: Starting User Runtime Directory /run/user/0...
Feb 06 12:27:23 localhost.localdomain systemd-logind[465]: New session 3 of user root.
Feb 06 12:27:23 localhost.localdomain systemd[1]: Finished User Runtime Directory /run/user/0.
Feb 06 12:27:23 localhost.localdomain systemd[1]: Starting User Manager for UID 0...
Feb 06 12:27:23 localhost.localdomain systemd[972]: pam_unix(systemd-user:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:27:23 localhost.localdomain systemd[972]: Queued start job for default target Main User Target.
Feb 06 12:27:23 localhost.localdomain systemd[972]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Created slice User Application Slice.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Reached target Paths.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Reached target Timers.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Starting D-Bus User Message Bus Socket...
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on GnuPG network certificate management daemon.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Listening on D-Bus User Message Bus Socket.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Reached target Sockets.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Reached target Basic System.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Reached target Main User Target.
Feb 06 12:27:23 localhost.localdomain systemd[972]: Startup finished in 483ms.
Feb 06 12:27:23 localhost.localdomain systemd[1]: Started User Manager for UID 0.
Feb 06 12:27:23 localhost.localdomain systemd[1]: Started Session 3 of User root.
Feb 06 12:27:31 localhost.localdomain sshd[969]: Received disconnect from 134.86.254.7 port 59200:11: disconnected by user
Feb 06 12:27:31 localhost.localdomain sshd[969]: Disconnected from user root 134.86.254.7 port 59200
Feb 06 12:27:31 localhost.localdomain sshd[969]: pam_unix(sshd:session): session closed for user root
Feb 06 12:27:31 localhost.localdomain systemd[1]: session-3.scope: Deactivated successfully.
Feb 06 12:27:31 localhost.localdomain systemd-logind[465]: Session 3 logged out. Waiting for processes to exit.
Feb 06 12:27:31 localhost.localdomain systemd-logind[465]: Removed session 3.
Feb 06 12:27:32 localhost.localdomain sshd[998]: Accepted publickey for root from 134.86.254.7 port 59204 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:27:32 localhost.localdomain sshd[998]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:27:32 localhost.localdomain systemd-logind[465]: New session 5 of user root.
Feb 06 12:27:32 localhost.localdomain systemd[1]: Started Session 5 of User root.
Feb 06 12:28:32 localhost.localdomain sshd[998]: Received disconnect from 134.86.254.7 port 59204:11: disconnected by user
Feb 06 12:28:32 localhost.localdomain sshd[998]: Disconnected from user root 134.86.254.7 port 59204
Feb 06 12:28:32 localhost.localdomain sshd[998]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:32 localhost.localdomain systemd[1]: session-5.scope: Deactivated successfully.
Feb 06 12:28:32 localhost.localdomain systemd-logind[465]: Session 5 logged out. Waiting for processes to exit.
Feb 06 12:28:32 localhost.localdomain systemd-logind[465]: Removed session 5.
Feb 06 12:28:33 localhost.localdomain sshd[1011]: error: kex_exchange_identification: Connection closed by remote host
Feb 06 12:28:33 localhost.localdomain sshd[1011]: Connection closed by 134.86.254.7 port 38296
Feb 06 12:28:34 localhost.localdomain sshd[1012]: Connection closed by authenticating user root 134.86.254.7 port 38312 [preauth]
Feb 06 12:28:34 localhost.localdomain sshd[1014]: Accepted publickey for root from 134.86.254.7 port 38324 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:34 localhost.localdomain sshd[1014]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: New session 6 of user root.
Feb 06 12:28:34 localhost.localdomain systemd[1]: Started Session 6 of User root.
Feb 06 12:28:34 localhost.localdomain sshd[1014]: Received disconnect from 134.86.254.7 port 38324:11: disconnected by user
Feb 06 12:28:34 localhost.localdomain sshd[1014]: Disconnected from user root 134.86.254.7 port 38324
Feb 06 12:28:34 localhost.localdomain sshd[1014]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:34 localhost.localdomain systemd[1]: session-6.scope: Deactivated successfully.
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: Session 6 logged out. Waiting for processes to exit.
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: Removed session 6.
Feb 06 12:28:34 localhost.localdomain sshd[1025]: Accepted publickey for root from 134.86.254.7 port 38336 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:34 localhost.localdomain sshd[1025]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: New session 7 of user root.
Feb 06 12:28:34 localhost.localdomain systemd[1]: Started Session 7 of User root.
Feb 06 12:28:34 localhost.localdomain sshd[1025]: Received disconnect from 134.86.254.7 port 38336:11: disconnected by user
Feb 06 12:28:34 localhost.localdomain sshd[1025]: Disconnected from user root 134.86.254.7 port 38336
Feb 06 12:28:34 localhost.localdomain sshd[1025]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:34 localhost.localdomain systemd[1]: session-7.scope: Deactivated successfully.
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: Session 7 logged out. Waiting for processes to exit.
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: Removed session 7.
Feb 06 12:28:34 localhost.localdomain sshd[1038]: Accepted publickey for root from 134.86.254.7 port 38352 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:34 localhost.localdomain sshd[1038]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:34 localhost.localdomain systemd-logind[465]: New session 8 of user root.
Feb 06 12:28:34 localhost.localdomain systemd[1]: Started Session 8 of User root.
Feb 06 12:28:35 localhost.localdomain sshd[1038]: Received disconnect from 134.86.254.7 port 38352:11: disconnected by user
Feb 06 12:28:35 localhost.localdomain sshd[1038]: Disconnected from user root 134.86.254.7 port 38352
Feb 06 12:28:35 localhost.localdomain sshd[1038]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:35 localhost.localdomain systemd[1]: session-8.scope: Deactivated successfully.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Session 8 logged out. Waiting for processes to exit.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Removed session 8.
Feb 06 12:28:35 localhost.localdomain sshd[1051]: Accepted publickey for root from 134.86.254.7 port 38360 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:35 localhost.localdomain sshd[1051]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: New session 9 of user root.
Feb 06 12:28:35 localhost.localdomain systemd[1]: Started Session 9 of User root.
Feb 06 12:28:35 localhost.localdomain sshd[1051]: Received disconnect from 134.86.254.7 port 38360:11: disconnected by user
Feb 06 12:28:35 localhost.localdomain sshd[1051]: Disconnected from user root 134.86.254.7 port 38360
Feb 06 12:28:35 localhost.localdomain sshd[1051]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:35 localhost.localdomain systemd[1]: session-9.scope: Deactivated successfully.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Session 9 logged out. Waiting for processes to exit.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Removed session 9.
Feb 06 12:28:35 localhost.localdomain sshd[1064]: Accepted publickey for root from 134.86.254.7 port 38368 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:35 localhost.localdomain sshd[1064]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: New session 10 of user root.
Feb 06 12:28:35 localhost.localdomain systemd[1]: Started Session 10 of User root.
Feb 06 12:28:35 localhost.localdomain sshd[1064]: Received disconnect from 134.86.254.7 port 38368:11: disconnected by user
Feb 06 12:28:35 localhost.localdomain sshd[1064]: Disconnected from user root 134.86.254.7 port 38368
Feb 06 12:28:35 localhost.localdomain sshd[1064]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:35 localhost.localdomain systemd[1]: session-10.scope: Deactivated successfully.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Session 10 logged out. Waiting for processes to exit.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Removed session 10.
Feb 06 12:28:35 localhost.localdomain sshd[1075]: Accepted publickey for root from 134.86.254.7 port 38376 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:35 localhost.localdomain sshd[1075]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: New session 11 of user root.
Feb 06 12:28:35 localhost.localdomain systemd[1]: Started Session 11 of User root.
Feb 06 12:28:35 localhost.localdomain sshd[1075]: Received disconnect from 134.86.254.7 port 38376:11: disconnected by user
Feb 06 12:28:35 localhost.localdomain sshd[1075]: Disconnected from user root 134.86.254.7 port 38376
Feb 06 12:28:35 localhost.localdomain sshd[1075]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:35 localhost.localdomain systemd[1]: session-11.scope: Deactivated successfully.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Session 11 logged out. Waiting for processes to exit.
Feb 06 12:28:35 localhost.localdomain systemd-logind[465]: Removed session 11.
Feb 06 12:28:37 localhost.localdomain sshd[1086]: Accepted publickey for root from 134.86.254.7 port 38380 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:37 localhost.localdomain sshd[1086]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: New session 12 of user root.
Feb 06 12:28:37 localhost.localdomain systemd[1]: Started Session 12 of User root.
Feb 06 12:28:37 localhost.localdomain sshd[1086]: Received disconnect from 134.86.254.7 port 38380:11: disconnected by user
Feb 06 12:28:37 localhost.localdomain sshd[1086]: Disconnected from user root 134.86.254.7 port 38380
Feb 06 12:28:37 localhost.localdomain sshd[1086]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:37 localhost.localdomain systemd[1]: session-12.scope: Deactivated successfully.
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: Session 12 logged out. Waiting for processes to exit.
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: Removed session 12.
Feb 06 12:28:37 localhost.localdomain sshd[1099]: Accepted publickey for root from 134.86.254.7 port 38394 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:37 localhost.localdomain sshd[1099]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: New session 13 of user root.
Feb 06 12:28:37 localhost.localdomain systemd[1]: Started Session 13 of User root.
Feb 06 12:28:37 localhost.localdomain sshd[1099]: Received disconnect from 134.86.254.7 port 38394:11: disconnected by user
Feb 06 12:28:37 localhost.localdomain sshd[1099]: Disconnected from user root 134.86.254.7 port 38394
Feb 06 12:28:37 localhost.localdomain sshd[1099]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:37 localhost.localdomain systemd[1]: session-13.scope: Deactivated successfully.
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: Session 13 logged out. Waiting for processes to exit.
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: Removed session 13.
Feb 06 12:28:37 localhost.localdomain sshd[1110]: Accepted publickey for root from 134.86.254.7 port 38398 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:37 localhost.localdomain sshd[1110]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:37 localhost.localdomain systemd-logind[465]: New session 14 of user root.
Feb 06 12:28:37 localhost.localdomain systemd[1]: Started Session 14 of User root.
Feb 06 12:28:40 localhost.localdomain sshd[1110]: Received disconnect from 134.86.254.7 port 38398:11: disconnected by user
Feb 06 12:28:40 localhost.localdomain sshd[1110]: Disconnected from user root 134.86.254.7 port 38398
Feb 06 12:28:40 localhost.localdomain sshd[1110]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:40 localhost.localdomain systemd[1]: session-14.scope: Deactivated successfully.
Feb 06 12:28:40 localhost.localdomain systemd-logind[465]: Session 14 logged out. Waiting for processes to exit.
Feb 06 12:28:40 localhost.localdomain systemd-logind[465]: Removed session 14.
Feb 06 12:28:41 localhost.localdomain sshd[1121]: Accepted publickey for root from 134.86.254.7 port 38412 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:41 localhost.localdomain sshd[1121]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: New session 15 of user root.
Feb 06 12:28:41 localhost.localdomain systemd[1]: Started Session 15 of User root.
Feb 06 12:28:41 localhost.localdomain sshd[1121]: Received disconnect from 134.86.254.7 port 38412:11: disconnected by user
Feb 06 12:28:41 localhost.localdomain sshd[1121]: Disconnected from user root 134.86.254.7 port 38412
Feb 06 12:28:41 localhost.localdomain sshd[1121]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:41 localhost.localdomain systemd[1]: session-15.scope: Deactivated successfully.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Session 15 logged out. Waiting for processes to exit.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Removed session 15.
Feb 06 12:28:41 localhost.localdomain sshd[1133]: Accepted publickey for root from 134.86.254.7 port 38422 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:41 localhost.localdomain sshd[1133]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: New session 16 of user root.
Feb 06 12:28:41 localhost.localdomain systemd[1]: Started Session 16 of User root.
Feb 06 12:28:41 localhost.localdomain sshd[1133]: Received disconnect from 134.86.254.7 port 38422:11: disconnected by user
Feb 06 12:28:41 localhost.localdomain sshd[1133]: Disconnected from user root 134.86.254.7 port 38422
Feb 06 12:28:41 localhost.localdomain sshd[1133]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:41 localhost.localdomain systemd[1]: session-16.scope: Deactivated successfully.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Session 16 logged out. Waiting for processes to exit.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Removed session 16.
Feb 06 12:28:41 localhost.localdomain sshd[1144]: Accepted publickey for root from 134.86.254.7 port 38426 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:41 localhost.localdomain sshd[1144]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: New session 17 of user root.
Feb 06 12:28:41 localhost.localdomain systemd[1]: Started Session 17 of User root.
Feb 06 12:28:41 localhost.localdomain sshd[1144]: Received disconnect from 134.86.254.7 port 38426:11: disconnected by user
Feb 06 12:28:41 localhost.localdomain sshd[1144]: Disconnected from user root 134.86.254.7 port 38426
Feb 06 12:28:41 localhost.localdomain sshd[1144]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:41 localhost.localdomain systemd[1]: session-17.scope: Deactivated successfully.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Session 17 logged out. Waiting for processes to exit.
Feb 06 12:28:41 localhost.localdomain systemd-logind[465]: Removed session 17.
Feb 06 12:28:42 localhost.localdomain sshd[1156]: Accepted publickey for root from 134.86.254.7 port 38434 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:42 localhost.localdomain sshd[1156]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: New session 18 of user root.
Feb 06 12:28:42 localhost.localdomain systemd[1]: Started Session 18 of User root.
Feb 06 12:28:42 localhost.localdomain sshd[1156]: Received disconnect from 134.86.254.7 port 38434:11: disconnected by user
Feb 06 12:28:42 localhost.localdomain sshd[1156]: Disconnected from user root 134.86.254.7 port 38434
Feb 06 12:28:42 localhost.localdomain sshd[1156]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:42 localhost.localdomain systemd[1]: session-18.scope: Deactivated successfully.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Session 18 logged out. Waiting for processes to exit.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Removed session 18.
Feb 06 12:28:42 localhost.localdomain sshd[1167]: Accepted publickey for root from 134.86.254.7 port 41150 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:42 localhost.localdomain sshd[1167]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: New session 19 of user root.
Feb 06 12:28:42 localhost.localdomain systemd[1]: Started Session 19 of User root.
Feb 06 12:28:42 localhost.localdomain sshd[1167]: Received disconnect from 134.86.254.7 port 41150:11: disconnected by user
Feb 06 12:28:42 localhost.localdomain sshd[1167]: Disconnected from user root 134.86.254.7 port 41150
Feb 06 12:28:42 localhost.localdomain sshd[1167]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:42 localhost.localdomain systemd[1]: session-19.scope: Deactivated successfully.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Session 19 logged out. Waiting for processes to exit.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Removed session 19.
Feb 06 12:28:42 localhost.localdomain sshd[1179]: Accepted publickey for root from 134.86.254.7 port 41156 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:42 localhost.localdomain sshd[1179]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: New session 20 of user root.
Feb 06 12:28:42 localhost.localdomain systemd[1]: Started Session 20 of User root.
Feb 06 12:28:42 localhost.localdomain sshd[1179]: Received disconnect from 134.86.254.7 port 41156:11: disconnected by user
Feb 06 12:28:42 localhost.localdomain sshd[1179]: Disconnected from user root 134.86.254.7 port 41156
Feb 06 12:28:42 localhost.localdomain sshd[1179]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:42 localhost.localdomain systemd[1]: session-20.scope: Deactivated successfully.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Session 20 logged out. Waiting for processes to exit.
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: Removed session 20.
Feb 06 12:28:42 localhost.localdomain sshd[1190]: Accepted publickey for root from 134.86.254.7 port 41164 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:42 localhost.localdomain sshd[1190]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:42 localhost.localdomain systemd-logind[465]: New session 21 of user root.
Feb 06 12:28:42 localhost.localdomain systemd[1]: Started Session 21 of User root.
Feb 06 12:28:43 localhost.localdomain sshd[1190]: Received disconnect from 134.86.254.7 port 41164:11: disconnected by user
Feb 06 12:28:43 localhost.localdomain sshd[1190]: Disconnected from user root 134.86.254.7 port 41164
Feb 06 12:28:43 localhost.localdomain sshd[1190]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:43 localhost.localdomain systemd[1]: session-21.scope: Deactivated successfully.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Session 21 logged out. Waiting for processes to exit.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Removed session 21.
Feb 06 12:28:43 localhost.localdomain sshd[1203]: Accepted publickey for root from 134.86.254.7 port 41170 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:43 localhost.localdomain sshd[1203]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: New session 22 of user root.
Feb 06 12:28:43 localhost.localdomain systemd[1]: Started Session 22 of User root.
Feb 06 12:28:43 localhost.localdomain sshd[1203]: Received disconnect from 134.86.254.7 port 41170:11: disconnected by user
Feb 06 12:28:43 localhost.localdomain sshd[1203]: Disconnected from user root 134.86.254.7 port 41170
Feb 06 12:28:43 localhost.localdomain sshd[1203]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:43 localhost.localdomain systemd[1]: session-22.scope: Deactivated successfully.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Session 22 logged out. Waiting for processes to exit.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Removed session 22.
Feb 06 12:28:43 localhost.localdomain sshd[1215]: Accepted publickey for root from 134.86.254.7 port 41178 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:43 localhost.localdomain sshd[1215]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: New session 23 of user root.
Feb 06 12:28:43 localhost.localdomain systemd[1]: Started Session 23 of User root.
Feb 06 12:28:43 localhost.localdomain sshd[1215]: Received disconnect from 134.86.254.7 port 41178:11: disconnected by user
Feb 06 12:28:43 localhost.localdomain sshd[1215]: Disconnected from user root 134.86.254.7 port 41178
Feb 06 12:28:43 localhost.localdomain sshd[1215]: pam_unix(sshd:session): session closed for user root
Feb 06 12:28:43 localhost.localdomain systemd[1]: session-23.scope: Deactivated successfully.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Session 23 logged out. Waiting for processes to exit.
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: Removed session 23.
Feb 06 12:28:43 localhost.localdomain sshd[1226]: Accepted publickey for root from 134.86.254.7 port 41186 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 12:28:43 localhost.localdomain sshd[1226]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 12:28:43 localhost.localdomain systemd-logind[465]: New session 24 of user root.
Feb 06 12:28:43 localhost.localdomain systemd[1]: Started Session 24 of User root.
```

## Degraded Services 

```sh
● weston@industrial.service                                                                                         loaded failed failed    Weston Wayland Compositor (on tty7)
```

