# realboot.sh Test for MTP700_Unified_Basic 

## Test Date 06-02-2023-03-27-12 

## IMAGE VERSION BUILD_ID="HMI_ubp-3.4~F0612" 

## COREBOOT VERSION R02.05.00.00_01.01.01.02 

## OS INFO Siemens Industrial OS 3.4 (based on Debian 11.6) \n \l 

* This test iteration booted succesfully !

# Details for test iteration 17 

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
│ │ ├─/sys/fs/cgroup/blkio                              cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,blkio
│ │ ├─/sys/fs/cgroup/net_prio                           cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,net_prio
│ │ ├─/sys/fs/cgroup/pids                               cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,pids
│ │ ├─/sys/fs/cgroup/freezer                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,freezer
│ │ ├─/sys/fs/cgroup/cpuset                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpuset
│ │ ├─/sys/fs/cgroup/cpu,cpuacct                        cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,cpu,cpuacct
│ │ ├─/sys/fs/cgroup/hugetlb                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,hugetlb
│ │ ├─/sys/fs/cgroup/memory                             cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,memory
│ │ ├─/sys/fs/cgroup/devices                            cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,devices
│ │ └─/sys/fs/cgroup/perf_event                         cgroup                     cgroup     rw,nosuid,nodev,noexec,relatime,perf_event
│ ├─/sys/fs/pstore                                      pstore                     pstore     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/debug                                   debugfs                    debugfs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/tracing                                 tracefs                    tracefs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/config                                  configfs                   configfs   rw,nosuid,nodev,noexec,relatime
│ └─/sys/fs/fuse/connections                            fusectl                    fusectl    rw,nosuid,nodev,noexec,relatime
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
├─/etc/hmi/FwServices/pa                                /dev/mapper/vg_sys-lv_pavo ext4       rw,relatime
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
       valid_lft 28562sec preferred_lft 28562sec
    inet6 fe80::7e63:9923:2c77:e358/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:42:10:3e:36:d8 brd ff:ff:ff:ff:ff:ff
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
[    0.000130] Console: colour dummy device 80x25
[    0.000199] Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
[    0.000208] pid_max: default: 32768 minimum: 301
[    0.000267] LSM: Security Framework initializing
[    0.000293] SELinux:  Initializing.
[    0.000354] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.000365] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
[    0.001648] rcu: Hierarchical SRCU implementation.
[    0.002896] smp: Bringing up secondary CPUs ...
[    0.003348] Detected VIPT I-cache on CPU1
[    0.003379] GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
[    0.003445] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.003937] Detected VIPT I-cache on CPU2
[    0.003960] GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
[    0.004003] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.004447] Detected VIPT I-cache on CPU3
[    0.004471] GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
[    0.004513] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.004562] smp: Brought up 1 node, 4 CPUs
[    0.004569] SMP: Total of 4 processors activated.
[    0.004573] CPU features: detected: 32-bit EL0 Support
[    0.004577] CPU features: detected: CRC32 instructions
[    0.011341] CPU: All CPU(s) started at EL2
[    0.011359] alternatives: patching kernel code
[    0.012678] devtmpfs: initialized
[    0.017858] KASLR disabled due to lack of seed
[    0.017995] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.018008] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.032044] pinctrl core: initialized pinctrl subsystem
[    0.033116] NET: Registered protocol family 16
[    0.038874] DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
[    0.039645] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.040491] DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.040597] audit: initializing netlink subsys (disabled)
[    0.040861] audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
[    0.041360] thermal_sys: Registered thermal governor 'step_wise'
[    0.041364] thermal_sys: Registered thermal governor 'power_allocator'
[    0.041639] cpuidle: using governor menu
[    0.041927] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.042011] ASID allocator initialised with 65536 entries
[    0.042781] Serial: AMBA PL011 UART driver
[    0.042827] imx mu driver is registered.
[    0.042842] imx rpmsg driver is registered.
[    0.061730] imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
[    0.061740] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
[    0.073949] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.073959] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.073963] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.073968] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.074689] cryptd: max_cpu_qlen set to 1000
[    0.077813] iommu: Default domain type: Translated 
[    0.077972] vgaarb: loaded
[    0.078239] SCSI subsystem initialized
[    0.078384] libata version 3.00 loaded.
[    0.078540] usbcore: registered new interface driver usbfs
[    0.078567] usbcore: registered new interface driver hub
[    0.078588] usbcore: registered new device driver usb
[    0.079413] mc: Linux media interface: v0.10
[    0.079431] videodev: Linux video capture interface: v2.00
[    0.079482] pps_core: LinuxPPS API ver. 1 registered
[    0.079485] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.079497] PTP clock support registered
[    0.079607] EDAC MC: Ver: 3.0.0
[    0.080631] FPGA manager framework
[    0.080702] Advanced Linux Sound Architecture Driver Initialized.
[    0.081218] Bluetooth: Core ver 2.22
[    0.081241] NET: Registered protocol family 31
[    0.081244] Bluetooth: HCI device and connection manager initialized
[    0.081251] Bluetooth: HCI socket layer initialized
[    0.081257] Bluetooth: L2CAP socket layer initialized
[    0.081267] Bluetooth: SCO socket layer initialized
[    0.082102] clocksource: Switched to clocksource arch_sys_counter
[    0.728522] VFS: Disk quotas dquot_6.6.0
[    0.728567] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.733811] NET: Registered protocol family 2
[    0.733967] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.734760] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
[    0.734815] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.734898] TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.735150] TCP: Hash tables configured (established 16384 bind 16384)
[    0.735246] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735279] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.735401] NET: Registered protocol family 1
[    0.735724] RPC: Registered named UNIX socket transport module.
[    0.735727] RPC: Registered udp transport module.
[    0.735730] RPC: Registered tcp transport module.
[    0.735732] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.735742] PCI: CLS 0 bytes, default 64
[    0.735905] Unpacking initramfs...
[    1.210876] Freeing initrd memory: 15480K
[    1.211594] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
[    1.214744] Initialise system trusted keyrings
[    1.214886] workingset: timestamp_bits=42 max_order=19 bucket_order=0
[    1.220227] NFS: Registering the id_resolver key type
[    1.220265] Key type id_resolver registered
[    1.220267] Key type id_legacy registered
[    1.220331] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.220335] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
[    1.220351] jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
[    1.247902] Key type asymmetric registered
[    1.247910] Asymmetric key parser 'x509' registered
[    1.247947] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
[    1.247952] io scheduler mq-deadline registered
[    1.247955] io scheduler kyber registered
[    1.253168] M4 is started
[    1.258680] imx-sdma 302b0000.dma-controller: firmware found.
[    1.261564] imx-sdma 302c0000.dma-controller: firmware found.
[    1.263717] imx-sdma 30bd0000.dma-controller: firmware found.
[    1.265159] mxs-dma 33000000.dma-controller: initialized
[    1.266867] Bus freq driver module loaded
[    1.271592] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.273407] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
[    1.273464] printk: console [ttymxc1] enabled
[    1.273467] printk: bootconsole [ec_imx6q0] disabled
[    1.287148] loop: module loaded
[    1.287972] of_reserved_mem_lookup() returned NULL
[    1.289222] imx ahci driver is registered.
[    1.291138] spi_imx 30800000.spba-bus:spi@30830000: invalid resource
[    1.291158] spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
[    1.293117] tun: Universal TUN/TAP device driver, 1.6
[    1.293918] pps pps0: new PPS source ptp0
[    1.305417] fec 30be0000.ethernet eth0: registered PHC device 0
[    1.306859] e1000: Intel(R) PRO/1000 Network Driver
[    1.306864] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.306894] e1000e: Intel(R) PRO/1000 Network Driver
[    1.306896] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.306922] igb: Intel(R) Gigabit Ethernet Network Driver
[    1.306925] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.306946] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[    1.306948] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.307062] sky2: driver version 1.30
[    1.307227] usbcore: registered new interface driver r8152
[    1.307256] usbcore: registered new interface driver asix
[    1.307276] usbcore: registered new interface driver ax88179_178a
[    1.307296] usbcore: registered new interface driver cdc_ether
[    1.307318] usbcore: registered new interface driver net1080
[    1.307340] usbcore: registered new interface driver cdc_subset
[    1.307362] usbcore: registered new interface driver zaurus
[    1.307408] usbcore: registered new interface driver cdc_ncm
[    1.307664] VFIO - User Level meta-driver version: 0.3
[    1.309374] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.309379] ehci-pci: EHCI PCI platform driver
[    1.309404] ehci-platform: EHCI generic platform driver
[    1.309530] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.309552] ohci-pci: OHCI PCI platform driver
[    1.309574] ohci-platform: OHCI generic platform driver
[    1.310198] usbcore: registered new interface driver uas
[    1.310229] usbcore: registered new interface driver usb-storage
[    1.310294] usbcore: registered new interface driver usbserial_generic
[    1.310308] usbserial: USB Serial support registered for generic
[    1.313170] i2c /dev entries driver
[    1.315596] Bluetooth: HCI UART driver ver 2.3
[    1.315603] Bluetooth: HCI UART protocol H4 registered
[    1.315606] Bluetooth: HCI UART protocol BCSP registered
[    1.315626] Bluetooth: HCI UART protocol LL registered
[    1.315628] Bluetooth: HCI UART protocol ATH3K registered
[    1.315643] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.315696] Bluetooth: HCI UART protocol Broadcom registered
[    1.315709] Bluetooth: HCI UART protocol QCA registered
[    1.316775] sdhci: Secure Digital Host Controller Interface driver
[    1.316778] sdhci: Copyright(c) Pierre Ossman
[    1.316975] Synopsys Designware Multimedia Card Interface Driver
[    1.317433] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.318144] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.318172] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.318237] sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
[    1.318247] sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
[    1.319043] ledtrig-cpu: registered to indicate activity on CPUs
[    1.319473] SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
[    1.319844] usbcore: registered new interface driver usbhid
[    1.319846] usbhid: USB HID core driver
[    1.323861] galcore: clk_get vg clock failed, disable vg!
[    1.324021] Galcore version 6.4.3.p2.336687
[    1.349444] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
[    1.382333] [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
[    1.388724] NET: Registered protocol family 10
[    1.389442] Segment Routing with IPv6
[    1.389481] NET: Registered protocol family 17
[    1.389565] Bluetooth: RFCOMM TTY layer initialized
[    1.389572] Bluetooth: RFCOMM socket layer initialized
[    1.389604] Bluetooth: RFCOMM ver 1.11
[    1.389613] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.389616] Bluetooth: BNEP filters: protocol multicast
[    1.389621] Bluetooth: BNEP socket layer initialized
[    1.389625] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.389630] Bluetooth: HIDP socket layer initialized
[    1.389659] 8021q: 802.1Q VLAN Support v1.8
[    1.389676] lib80211: common routines for IEEE802.11 drivers
[    1.389680] lib80211_crypt: registered algorithm 'NULL'
[    1.389683] lib80211_crypt: registered algorithm 'WEP'
[    1.389686] lib80211_crypt: registered algorithm 'CCMP'
[    1.389692] lib80211_crypt: registered algorithm 'TKIP'
[    1.389695] tsn generic netlink module v1 init...
[    1.389760] Key type dns_resolver registered
[    1.390170] registered taskstats version 1
[    1.390175] Loading compiled-in X.509 certificates
[    1.408215] usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
[    1.408332] usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
[    1.408471] usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
[    1.408544] usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
[    1.408766] imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
[    1.417736] nxp-pca9450 0-0025: pca9450a probed.
[    1.417872] i2c i2c-0: IMX I2C adapter registered
[    1.418235] imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
[    1.422832] rtc-ds1307 1-0032: registered as rtc0
[    1.423648] rtc-ds1307 1-0032: setting system clock to 2023-02-06T09:41:15 UTC (1675676475)
[    1.423816] i2c i2c-1: IMX I2C adapter registered
[    1.424128] imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
[    1.432809] mmc2: new DDR MMC card at address 0001
[    1.433302] mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
[    1.433468] mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
[    1.433637] mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
[    1.433804] mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
[    1.433940] mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
[    1.436756]  mmcblk2: p1 p2 p3 p4
[    1.465174] input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
[    1.465683] i2c i2c-2: IMX I2C adapter registered
[    1.467957] pwm-backlight backlight: supply power not found, using dummy regulator
[    1.468080] imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
[    1.468227] imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
[    1.468353] imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
[    1.468604] SoC: i.MX8MM revision 1.0
[    1.468664] imx6q-pcie 33800000.pcie: GPR15=6188ffff
[    1.468827] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
[    1.469244] imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
[    1.469295] imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
[    1.469319] imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
[    1.469336] imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
[    1.469421] imx6q-pcie 33800000.pcie: invalid resource
[    1.470825] imx_usb 32e40000.usb: No over current polarity defined
[    1.473587] ci_hdrc ci_hdrc.0: EHCI Host Controller
[    1.473624] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
[    1.486109] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[    1.486709] hub 1-0:1.0: USB hub found
[    1.486736] hub 1-0:1.0: 1 port detected
[    1.488345] imx_usb 32e50000.usb: No over current polarity defined
[    1.491169] ci_hdrc ci_hdrc.1: EHCI Host Controller
[    1.491189] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
[    1.506110] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
[    1.506658] hub 2-0:1.0: USB hub found
[    1.506682] hub 2-0:1.0: 1 port detected
[    1.509821] sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
[    1.509839] sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
[    1.509867] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.511383] hantrodec 0 : module inserted. Major = 234
[    1.512801] hantrodec 1 : module inserted. Major = 234
[    1.514065] hx280enc: module inserted. Major <511>
[    1.516863] ALSA device list:
[    1.516874]   No soundcards found.
[    1.541783] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
[    2.466107] imx6q-pcie 33800000.pcie: Phy link never came up
[    2.466138] imx6q-pcie 33800000.pcie: failed to initialize host
[    2.466143] imx6q-pcie 33800000.pcie: unable to add pcie port.
[    2.471747] Freeing unused kernel memory: 5184K
[    2.482203] Run /init as init process
[    2.482207]   with arguments:
[    2.482210]     /init
[    2.482212]     splash
[    2.482215]   with environment:
[    2.482218]     HOME=/
[    2.482221]     TERM=linux
[    2.482223]     jtag=on
[    3.009749] fec 30be0000.ethernet end0: renamed from eth0
[    3.013446] imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
[    3.017640] imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
[    3.018543] imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
[    3.018558] imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
[    3.018583] imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
[    3.018923] [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
[    3.101087] random: lvm: uninitialized urandom read (4 bytes read)
[    3.143448] device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
[    3.146259] random: lvm: uninitialized urandom read (2 bytes read)
[    3.408592] random: lvm: uninitialized urandom read (4 bytes read)
[    3.689854] EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
[    3.782440] EXT4-fs (dm-2): recovery complete
[    3.783185] EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
[    4.210951] systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
[    4.210973] systemd[1]: Detected architecture arm64.
[    4.230167] systemd[1]: No hostname configured, using default hostname.
[    4.230463] systemd[1]: Hostname set to <localhost>.
[    4.409746] random: lvmconfig: uninitialized urandom read (4 bytes read)
[    4.542914] systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
[    4.701095] systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
[    4.777900] systemd[1]: Queued start job for default target Graphical Interface.
[    4.777973] systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
[    4.778006] systemd[1]: Unnecessary job was removed for /dev/dm-2.
[    4.822556] systemd[1]: Created slice Slice /system/getty.
[    4.825038] systemd[1]: Created slice Slice /system/modprobe.
[    4.827403] systemd[1]: Created slice Slice /system/serial-getty.
[    4.830064] systemd[1]: Created slice Slice /system/systemd-fsck.
[    4.832492] systemd[1]: Created slice Slice /system/weston.
[    4.834478] systemd[1]: Created slice User and Session Slice.
[    4.834846] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    4.835050] systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
[    4.835267] systemd[1]: Reached target Local Integrity Protected Volumes.
[    4.835445] systemd[1]: Reached target Remote File Systems.
[    4.835497] systemd[1]: Reached target Slice Units.
[    4.835602] systemd[1]: Reached target Swaps.
[    4.835670] systemd[1]: Reached target Local Verity Protected Volumes.
[    4.835968] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    4.836418] systemd[1]: Listening on LVM2 poll daemon socket.
[    4.836765] systemd[1]: Listening on fsck to fsckd communication Socket.
[    4.836972] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    4.837633] systemd[1]: Listening on Journal Audit Socket.
[    4.838056] systemd[1]: Listening on Journal Socket (/dev/log).
[    4.838549] systemd[1]: Listening on Journal Socket.
[    4.841333] systemd[1]: Listening on udev Control Socket.
[    4.841933] systemd[1]: Listening on udev Kernel Socket.
[    4.846040] systemd[1]: Mounting Huge Pages File System...
[    4.850608] systemd[1]: Mounting POSIX Message Queue File System...
[    4.855961] systemd[1]: Mounting Kernel Debug File System...
[    4.861159] systemd[1]: Mounting Kernel Trace File System...
[    4.862162] systemd[1]: Finished Availability of block devices.
[    4.868691] systemd[1]: Starting Set the console keyboard layout...
[    4.873855] systemd[1]: Starting Create List of Static Device Nodes...
[    4.879162] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    4.885376] systemd[1]: Starting Load Kernel Module configfs...
[    4.890801] systemd[1]: Starting Load Kernel Module drm...
[    4.895951] systemd[1]: Starting Load Kernel Module efi_pstore...
[    4.898547] random: lvm: uninitialized urandom read (4 bytes read)
[    4.903138] systemd[1]: Starting Load Kernel Module fuse...
[    4.912766] systemd[1]: Starting Network initialization...
[    4.914226] systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
[    4.914243] systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
[    4.920516] systemd[1]: Starting Journal Service...
[    4.930068] systemd[1]: Starting Load Kernel Modules...
[    4.936446] systemd[1]: Starting Remount Root and Kernel File Systems...
[    4.936876] systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
[    4.942264] fuse: init (API version 7.32)
[    4.944072] systemd[1]: Starting Coldplug All udev Devices...
[    4.950471] systemd[1]: Starting Uncomplicated firewall...
[    4.965038] systemd[1]: Mounted Huge Pages File System.
[    4.966552] systemd[1]: Mounted POSIX Message Queue File System.
[    4.968219] systemd[1]: Mounted Kernel Debug File System.
[    4.969649] systemd[1]: Mounted Kernel Trace File System.
[    4.972328] systemd[1]: Finished Create List of Static Device Nodes.
[    4.974702] systemd[1]: modprobe@configfs.service: Deactivated successfully.
[    4.975859] systemd[1]: Finished Load Kernel Module configfs.
[    4.977527] systemd[1]: modprobe@drm.service: Deactivated successfully.
[    4.978794] systemd[1]: Finished Load Kernel Module drm.
[    4.980429] systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
[    4.981498] systemd[1]: Finished Load Kernel Module efi_pstore.
[    4.993924] systemd[1]: modprobe@fuse.service: Deactivated successfully.
[    4.995048] systemd[1]: Finished Load Kernel Module fuse.
[    4.997230] systemd[1]: Finished Uncomplicated firewall.
[    5.020125] systemd[1]: Finished Load Kernel Modules.
[    5.026984] systemd[1]: Starting Apply Kernel Variables...
[    5.029491] systemd[1]: Finished Remount Root and Kernel File Systems.
[    5.031429] systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
[    5.031757] systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
[    5.038557] systemd[1]: Starting Load/Save Random Seed...
[    5.044541] systemd[1]: Starting Create System Users...
[    5.047396] systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
[    5.096692] systemd[1]: Finished Apply Kernel Variables.
[    5.105231] random: python3: uninitialized urandom read (24 bytes read)
[    5.111377] systemd[1]: Finished Create System Users.
[    5.117628] systemd[1]: Starting Create Static Device Nodes in /dev...
[    5.157605] systemd[1]: Started Journal Service.
[    6.118665] systemd-journald[356]: Received client request to flush runtime journal.
[    6.243703] EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
[    6.243742] ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    6.399201] EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
[    6.578179] random: crng init done
[    6.578193] random: 1 urandom warning(s) missed due to ratelimiting
[    7.307649] caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
[    7.307661] caam 30900000.crypto: job rings = 3, qi = 0
[    7.323456] caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
[    7.331287] LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
[    7.784057] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    7.799679] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    9.044383] caam_jr 30901000.jr: failed to flush job ring 0
[    9.044554] caam_jr: probe of 30901000.jr failed with error -5
[    9.155478] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    9.169922] ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
[    9.362026] caam algorithms registered in /proc/crypto
[    9.386713] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
[    9.386735] caam 30900000.crypto: registering rng-caam
[    9.391880] Device caam-keygen registered
[    9.452671] fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
[    9.683545] Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
[   12.735069] fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
[   12.735127] IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
[   14.332592] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[   14.336114] Bridge firewalling registered
[   19.811751] systemd-journald[356]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2734 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
[   19.811779] systemd-journald[356]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
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
Feb 06 09:41:19 localhost kernel: Booting Linux on physical CPU 0x0000000000 [0x410fd034]
Feb 06 09:41:19 localhost kernel: Linux version 5.10.158-cip22+ind1 (builder@narmada) (aarch64-linux-gnu-gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2) #1 SMP PREEMPT Mon Jan 23 11:17:50 UTC 2023
Feb 06 09:41:19 localhost kernel: Machine model: Siemens Foxxy
Feb 06 09:41:19 localhost kernel: earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
Feb 06 09:41:19 localhost kernel: printk: bootconsole [ec_imx6q0] enabled
Feb 06 09:41:19 localhost kernel: Reserved memory: created CMA memory pool at 0x0000000096000000, size 640 MiB
Feb 06 09:41:19 localhost kernel: OF: reserved mem: initialized node linux,cma, compatible id shared-dma-pool
Feb 06 09:41:19 localhost kernel: NUMA: No NUMA configuration found
Feb 06 09:41:19 localhost kernel: NUMA: Faking a node at [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 09:41:19 localhost kernel: NUMA: NODE_DATA [mem 0xbfa46700-0xbfa48fff]
Feb 06 09:41:19 localhost kernel: Zone ranges:
Feb 06 09:41:19 localhost kernel:   DMA      [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 09:41:19 localhost kernel:   DMA32    empty
Feb 06 09:41:19 localhost kernel:   Normal   empty
Feb 06 09:41:19 localhost kernel: Movable zone start for each node
Feb 06 09:41:19 localhost kernel: Early memory node ranges
Feb 06 09:41:19 localhost kernel:   node   0: [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 09:41:19 localhost kernel: Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfe79fff]
Feb 06 09:41:19 localhost kernel: On node 0 totalpages: 523898
Feb 06 09:41:19 localhost kernel:   DMA zone: 8186 pages used for memmap
Feb 06 09:41:19 localhost kernel:   DMA zone: 0 pages reserved
Feb 06 09:41:19 localhost kernel:   DMA zone: 523898 pages, LIFO batch:63
Feb 06 09:41:19 localhost kernel: On node 0, zone DMA: 390 pages in unavailable ranges
Feb 06 09:41:19 localhost kernel: psci: probing for conduit method from DT.
Feb 06 09:41:19 localhost kernel: psci: PSCIv1.1 detected in firmware.
Feb 06 09:41:19 localhost kernel: psci: Using standard PSCI v0.2 function IDs
Feb 06 09:41:19 localhost kernel: psci: MIGRATE_INFO_TYPE not supported.
Feb 06 09:41:19 localhost kernel: psci: SMC Calling Convention v1.2
Feb 06 09:41:19 localhost kernel: percpu: Embedded 30 pages/cpu s84248 r8192 d30440 u122880
Feb 06 09:41:19 localhost kernel: pcpu-alloc: s84248 r8192 d30440 u122880 alloc=30*4096
Feb 06 09:41:19 localhost kernel: pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
Feb 06 09:41:19 localhost kernel: Detected VIPT I-cache on CPU0
Feb 06 09:41:19 localhost kernel: CPU features: detected: ARM erratum 845719
Feb 06 09:41:19 localhost kernel: CPU features: detected: GIC system register CPU interface
Feb 06 09:41:19 localhost kernel: Built 1 zonelists, mobility grouping on.  Total pages: 515712
Feb 06 09:41:19 localhost kernel: Policy zone: DMA
Feb 06 09:41:19 localhost kernel: Kernel command line: console=ttymxc1,115200 earlycon=ec_imx6q,0x30890000,115200 loglevel=2 root=/dev/vg_sys/lv_mainvo ro rootfstype=ext4 rootwait security=selinux selinux=1 enforcing=0 enforcing=0 cryptomgr.notests systemd.unified_cgroup_hierarchy=0 module_blacklist=intel_ish_ipc,intel_ishtp jtag=on nohlt splash plymouth.ignore-serial-consoles quiet vt.global_cursor_default=0
Feb 06 09:41:19 localhost kernel: Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
Feb 06 09:41:19 localhost kernel: Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
Feb 06 09:41:19 localhost kernel: mem auto-init: stack:off, heap alloc:off, heap free:off
Feb 06 09:41:19 localhost kernel: Memory: 1351880K/2095592K available (17406K kernel code, 2216K rwdata, 6740K rodata, 5184K init, 529K bss, 88352K reserved, 655360K cma-reserved)
Feb 06 09:41:19 localhost kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
Feb 06 09:41:19 localhost kernel: ftrace: allocating 56519 entries in 221 pages
Feb 06 09:41:19 localhost kernel: ftrace: allocated 221 pages with 6 groups
Feb 06 09:41:19 localhost kernel: rcu: Preemptible hierarchical RCU implementation.
Feb 06 09:41:19 localhost kernel: rcu:         RCU event tracing is enabled.
Feb 06 09:41:19 localhost kernel: rcu:         RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
Feb 06 09:41:19 localhost kernel:         Trampoline variant of Tasks RCU enabled.
Feb 06 09:41:19 localhost kernel:         Rude variant of Tasks RCU enabled.
Feb 06 09:41:19 localhost kernel: rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
Feb 06 09:41:19 localhost kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
Feb 06 09:41:19 localhost kernel: NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
Feb 06 09:41:19 localhost kernel: GICv3: GIC: Using split EOI/Deactivate mode
Feb 06 09:41:19 localhost kernel: GICv3: 128 SPIs implemented
Feb 06 09:41:19 localhost kernel: GICv3: 0 Extended SPIs implemented
Feb 06 09:41:19 localhost kernel: GICv3: Distributor has no Range Selector support
Feb 06 09:41:19 localhost kernel: GICv3: 16 PPIs implemented
Feb 06 09:41:19 localhost kernel: GICv3: CPU0: found redistributor 0 region 0:0x0000000038880000
Feb 06 09:41:19 localhost kernel: ITS: No ITS available, not enabling LPIs
Feb 06 09:41:19 localhost kernel: arch_timer: cp15 timer(s) running at 8.00MHz (phys).
Feb 06 09:41:19 localhost kernel: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
Feb 06 09:41:19 localhost kernel: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
Feb 06 09:41:19 localhost kernel: Console: colour dummy device 80x25
Feb 06 09:41:19 localhost kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 16.00 BogoMIPS (lpj=32000)
Feb 06 09:41:19 localhost kernel: pid_max: default: 32768 minimum: 301
Feb 06 09:41:19 localhost kernel: LSM: Security Framework initializing
Feb 06 09:41:19 localhost kernel: SELinux:  Initializing.
Feb 06 09:41:19 localhost kernel: Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 09:41:19 localhost kernel: Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
Feb 06 09:41:19 localhost kernel: rcu: Hierarchical SRCU implementation.
Feb 06 09:41:19 localhost kernel: smp: Bringing up secondary CPUs ...
Feb 06 09:41:19 localhost kernel: Detected VIPT I-cache on CPU1
Feb 06 09:41:19 localhost kernel: GICv3: CPU1: found redistributor 1 region 0:0x00000000388a0000
Feb 06 09:41:19 localhost kernel: CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
Feb 06 09:41:19 localhost kernel: Detected VIPT I-cache on CPU2
Feb 06 09:41:19 localhost kernel: GICv3: CPU2: found redistributor 2 region 0:0x00000000388c0000
Feb 06 09:41:19 localhost kernel: CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
Feb 06 09:41:19 localhost kernel: Detected VIPT I-cache on CPU3
Feb 06 09:41:19 localhost kernel: GICv3: CPU3: found redistributor 3 region 0:0x00000000388e0000
Feb 06 09:41:19 localhost kernel: CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
Feb 06 09:41:19 localhost kernel: smp: Brought up 1 node, 4 CPUs
Feb 06 09:41:19 localhost kernel: SMP: Total of 4 processors activated.
Feb 06 09:41:19 localhost kernel: CPU features: detected: 32-bit EL0 Support
Feb 06 09:41:19 localhost kernel: CPU features: detected: CRC32 instructions
Feb 06 09:41:19 localhost kernel: CPU: All CPU(s) started at EL2
Feb 06 09:41:19 localhost kernel: alternatives: patching kernel code
Feb 06 09:41:19 localhost kernel: devtmpfs: initialized
Feb 06 09:41:19 localhost kernel: KASLR disabled due to lack of seed
Feb 06 09:41:19 localhost kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
Feb 06 09:41:19 localhost kernel: futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
Feb 06 09:41:19 localhost kernel: pinctrl core: initialized pinctrl subsystem
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 16
Feb 06 09:41:19 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL pool for atomic allocations
Feb 06 09:41:19 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
Feb 06 09:41:19 localhost kernel: DMA: preallocated 256 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
Feb 06 09:41:19 localhost kernel: audit: initializing netlink subsys (disabled)
Feb 06 09:41:19 localhost kernel: audit: type=2000 audit(0.040:1): state=initialized audit_enabled=0 res=1
Feb 06 09:41:19 localhost kernel: thermal_sys: Registered thermal governor 'step_wise'
Feb 06 09:41:19 localhost kernel: thermal_sys: Registered thermal governor 'power_allocator'
Feb 06 09:41:19 localhost kernel: cpuidle: using governor menu
Feb 06 09:41:19 localhost kernel: hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
Feb 06 09:41:19 localhost kernel: ASID allocator initialised with 65536 entries
Feb 06 09:41:19 localhost kernel: Serial: AMBA PL011 UART driver
Feb 06 09:41:19 localhost kernel: imx mu driver is registered.
Feb 06 09:41:19 localhost kernel: imx rpmsg driver is registered.
Feb 06 09:41:19 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: no groups defined in /soc@0/bus@30000000/pinctrl@30330000
Feb 06 09:41:19 localhost kernel: imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl driver
Feb 06 09:41:19 localhost kernel: HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
Feb 06 09:41:19 localhost kernel: HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
Feb 06 09:41:19 localhost kernel: HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
Feb 06 09:41:19 localhost kernel: HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
Feb 06 09:41:19 localhost kernel: cryptd: max_cpu_qlen set to 1000
Feb 06 09:41:19 localhost kernel: iommu: Default domain type: Translated 
Feb 06 09:41:19 localhost kernel: vgaarb: loaded
Feb 06 09:41:19 localhost kernel: SCSI subsystem initialized
Feb 06 09:41:19 localhost kernel: libata version 3.00 loaded.
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver usbfs
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver hub
Feb 06 09:41:19 localhost kernel: usbcore: registered new device driver usb
Feb 06 09:41:19 localhost kernel: mc: Linux media interface: v0.10
Feb 06 09:41:19 localhost kernel: videodev: Linux video capture interface: v2.00
Feb 06 09:41:19 localhost kernel: pps_core: LinuxPPS API ver. 1 registered
Feb 06 09:41:19 localhost kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
Feb 06 09:41:19 localhost kernel: PTP clock support registered
Feb 06 09:41:19 localhost kernel: EDAC MC: Ver: 3.0.0
Feb 06 09:41:19 localhost kernel: FPGA manager framework
Feb 06 09:41:19 localhost kernel: Advanced Linux Sound Architecture Driver Initialized.
Feb 06 09:41:19 localhost kernel: Bluetooth: Core ver 2.22
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 31
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI device and connection manager initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI socket layer initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: L2CAP socket layer initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: SCO socket layer initialized
Feb 06 09:41:19 localhost kernel: clocksource: Switched to clocksource arch_sys_counter
Feb 06 09:41:19 localhost kernel: VFS: Disk quotas dquot_6.6.0
Feb 06 09:41:19 localhost kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 2
Feb 06 09:41:19 localhost kernel: IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
Feb 06 09:41:19 localhost kernel: tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
Feb 06 09:41:19 localhost kernel: TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
Feb 06 09:41:19 localhost kernel: TCP bind hash table entries: 16384 (order: 6, 262144 bytes, linear)
Feb 06 09:41:19 localhost kernel: TCP: Hash tables configured (established 16384 bind 16384)
Feb 06 09:41:19 localhost kernel: UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 09:41:19 localhost kernel: UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 1
Feb 06 09:41:19 localhost kernel: RPC: Registered named UNIX socket transport module.
Feb 06 09:41:19 localhost kernel: RPC: Registered udp transport module.
Feb 06 09:41:19 localhost kernel: RPC: Registered tcp transport module.
Feb 06 09:41:19 localhost kernel: RPC: Registered tcp NFSv4.1 backchannel transport module.
Feb 06 09:41:19 localhost kernel: PCI: CLS 0 bytes, default 64
Feb 06 09:41:19 localhost kernel: Unpacking initramfs...
Feb 06 09:41:19 localhost kernel: Freeing initrd memory: 15480K
Feb 06 09:41:19 localhost kernel: hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters available
Feb 06 09:41:19 localhost kernel: Initialise system trusted keyrings
Feb 06 09:41:19 localhost kernel: workingset: timestamp_bits=42 max_order=19 bucket_order=0
Feb 06 09:41:19 localhost kernel: NFS: Registering the id_resolver key type
Feb 06 09:41:19 localhost kernel: Key type id_resolver registered
Feb 06 09:41:19 localhost kernel: Key type id_legacy registered
Feb 06 09:41:19 localhost kernel: nfs4filelayout_init: NFSv4 File Layout Driver Registering...
Feb 06 09:41:19 localhost kernel: nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
Feb 06 09:41:19 localhost kernel: jffs2: version 2.2. (NAND) © 2001-2006 Red Hat, Inc.
Feb 06 09:41:19 localhost kernel: Key type asymmetric registered
Feb 06 09:41:19 localhost kernel: Asymmetric key parser 'x509' registered
Feb 06 09:41:19 localhost kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 242)
Feb 06 09:41:19 localhost kernel: io scheduler mq-deadline registered
Feb 06 09:41:19 localhost kernel: io scheduler kyber registered
Feb 06 09:41:19 localhost kernel: M4 is started
Feb 06 09:41:19 localhost kernel: imx-sdma 302b0000.dma-controller: firmware found.
Feb 06 09:41:19 localhost kernel: imx-sdma 302c0000.dma-controller: firmware found.
Feb 06 09:41:19 localhost kernel: imx-sdma 30bd0000.dma-controller: firmware found.
Feb 06 09:41:19 localhost kernel: mxs-dma 33000000.dma-controller: initialized
Feb 06 09:41:19 localhost kernel: Bus freq driver module loaded
Feb 06 09:41:19 localhost kernel: Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
Feb 06 09:41:19 localhost kernel: 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq = 52, base_baud = 625000) is a IMX
Feb 06 09:41:19 localhost kernel: printk: console [ttymxc1] enabled
Feb 06 09:41:19 localhost kernel: printk: bootconsole [ec_imx6q0] disabled
Feb 06 09:41:19 localhost kernel: loop: module loaded
Feb 06 09:41:19 localhost kernel: of_reserved_mem_lookup() returned NULL
Feb 06 09:41:19 localhost kernel: imx ahci driver is registered.
Feb 06 09:41:19 localhost kernel: spi_imx 30800000.spba-bus:spi@30830000: invalid resource
Feb 06 09:41:19 localhost kernel: spi_imx: probe of 30800000.spba-bus:spi@30830000 failed with error -22
Feb 06 09:41:19 localhost kernel: tun: Universal TUN/TAP device driver, 1.6
Feb 06 09:41:19 localhost kernel: pps pps0: new PPS source ptp0
Feb 06 09:41:19 localhost kernel: fec 30be0000.ethernet eth0: registered PHC device 0
Feb 06 09:41:19 localhost kernel: e1000: Intel(R) PRO/1000 Network Driver
Feb 06 09:41:19 localhost kernel: e1000: Copyright (c) 1999-2006 Intel Corporation.
Feb 06 09:41:19 localhost kernel: e1000e: Intel(R) PRO/1000 Network Driver
Feb 06 09:41:19 localhost kernel: e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
Feb 06 09:41:19 localhost kernel: igb: Intel(R) Gigabit Ethernet Network Driver
Feb 06 09:41:19 localhost kernel: igb: Copyright (c) 2007-2014 Intel Corporation.
Feb 06 09:41:19 localhost kernel: igbvf: Intel(R) Gigabit Virtual Function Network Driver
Feb 06 09:41:19 localhost kernel: igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
Feb 06 09:41:19 localhost kernel: sky2: driver version 1.30
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver r8152
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver asix
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver ax88179_178a
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver cdc_ether
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver net1080
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver cdc_subset
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver zaurus
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver cdc_ncm
Feb 06 09:41:19 localhost kernel: VFIO - User Level meta-driver version: 0.3
Feb 06 09:41:19 localhost kernel: ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
Feb 06 09:41:19 localhost kernel: ehci-pci: EHCI PCI platform driver
Feb 06 09:41:19 localhost kernel: ehci-platform: EHCI generic platform driver
Feb 06 09:41:19 localhost kernel: ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
Feb 06 09:41:19 localhost kernel: ohci-pci: OHCI PCI platform driver
Feb 06 09:41:19 localhost kernel: ohci-platform: OHCI generic platform driver
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver uas
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver usb-storage
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver usbserial_generic
Feb 06 09:41:19 localhost kernel: usbserial: USB Serial support registered for generic
Feb 06 09:41:19 localhost kernel: i2c /dev entries driver
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART driver ver 2.3
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol H4 registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol BCSP registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol LL registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol ATH3K registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol Three-wire (H5) registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol Broadcom registered
Feb 06 09:41:19 localhost kernel: Bluetooth: HCI UART protocol QCA registered
Feb 06 09:41:19 localhost kernel: sdhci: Secure Digital Host Controller Interface driver
Feb 06 09:41:19 localhost kernel: sdhci: Copyright(c) Pierre Ossman
Feb 06 09:41:19 localhost kernel: Synopsys Designware Multimedia Card Interface Driver
Feb 06 09:41:19 localhost kernel: sdhci-pltfm: SDHCI platform and OF driver helper
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: could not get pinctrl
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b60000.mmc: voltage-ranges unspecified
Feb 06 09:41:19 localhost kernel: ledtrig-cpu: registered to indicate activity on CPUs
Feb 06 09:41:19 localhost kernel: SMCCC: SOC_ID: ARCH_SOC_ID not implemented, skipping ....
Feb 06 09:41:19 localhost kernel: usbcore: registered new interface driver usbhid
Feb 06 09:41:19 localhost kernel: usbhid: USB HID core driver
Feb 06 09:41:19 localhost kernel: galcore: clk_get vg clock failed, disable vg!
Feb 06 09:41:19 localhost kernel: Galcore version 6.4.3.p2.336687
Feb 06 09:41:19 localhost kernel: mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using ADMA
Feb 06 09:41:19 localhost kernel: [drm] Initialized vivante 1.0.0 20170808 for 38000000.gpu on minor 0
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 10
Feb 06 09:41:19 localhost kernel: Segment Routing with IPv6
Feb 06 09:41:19 localhost kernel: NET: Registered protocol family 17
Feb 06 09:41:19 localhost kernel: Bluetooth: RFCOMM TTY layer initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: RFCOMM socket layer initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: RFCOMM ver 1.11
Feb 06 09:41:19 localhost kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
Feb 06 09:41:19 localhost kernel: Bluetooth: BNEP filters: protocol multicast
Feb 06 09:41:19 localhost kernel: Bluetooth: BNEP socket layer initialized
Feb 06 09:41:19 localhost kernel: Bluetooth: HIDP (Human Interface Emulation) ver 1.2
Feb 06 09:41:19 localhost kernel: Bluetooth: HIDP socket layer initialized
Feb 06 09:41:19 localhost kernel: 8021q: 802.1Q VLAN Support v1.8
Feb 06 09:41:19 localhost kernel: lib80211: common routines for IEEE802.11 drivers
Feb 06 09:41:19 localhost kernel: lib80211_crypt: registered algorithm 'NULL'
Feb 06 09:41:19 localhost kernel: lib80211_crypt: registered algorithm 'WEP'
Feb 06 09:41:19 localhost kernel: lib80211_crypt: registered algorithm 'CCMP'
Feb 06 09:41:19 localhost kernel: lib80211_crypt: registered algorithm 'TKIP'
Feb 06 09:41:19 localhost kernel: tsn generic netlink module v1 init...
Feb 06 09:41:19 localhost kernel: Key type dns_resolver registered
Feb 06 09:41:19 localhost kernel: registered taskstats version 1
Feb 06 09:41:19 localhost kernel: Loading compiled-in X.509 certificates
Feb 06 09:41:19 localhost kernel: usb_phy_generic usbphynop1: supply vcc not found, using dummy regulator
Feb 06 09:41:19 localhost kernel: usb_phy_generic usbphynop1: dummy supplies not allowed for exclusive requests
Feb 06 09:41:19 localhost kernel: usb_phy_generic usbphynop2: supply vcc not found, using dummy regulator
Feb 06 09:41:19 localhost kernel: usb_phy_generic usbphynop2: dummy supplies not allowed for exclusive requests
Feb 06 09:41:19 localhost kernel: imx-i2c 30a20000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 09:41:19 localhost kernel: nxp-pca9450 0-0025: pca9450a probed.
Feb 06 09:41:19 localhost kernel: i2c i2c-0: IMX I2C adapter registered
Feb 06 09:41:19 localhost kernel: imx-i2c 30a30000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 09:41:19 localhost kernel: rtc-ds1307 1-0032: registered as rtc0
Feb 06 09:41:19 localhost kernel: rtc-ds1307 1-0032: setting system clock to 2023-02-06T09:41:15 UTC (1675676475)
Feb 06 09:41:19 localhost kernel: i2c i2c-1: IMX I2C adapter registered
Feb 06 09:41:19 localhost kernel: imx-i2c 30a40000.i2c: can't get pinctrl, bus recovery not supported
Feb 06 09:41:19 localhost kernel: mmc2: new DDR MMC card at address 0001
Feb 06 09:41:19 localhost kernel: mmcblk2: mmc2:0001 G1M15N 32.0 GiB 
Feb 06 09:41:19 localhost kernel: mmcblk2boot0: mmc2:0001 G1M15N partition 1 31.5 MiB
Feb 06 09:41:19 localhost kernel: mmcblk2boot1: mmc2:0001 G1M15N partition 2 31.5 MiB
Feb 06 09:41:19 localhost kernel: mmcblk2gp0: mmc2:0001 G1M15N partition 4 7.50 GiB
Feb 06 09:41:19 localhost kernel: mmcblk2rpmb: mmc2:0001 G1M15N partition 3 4.00 MiB, chardev (235:0)
Feb 06 09:41:19 localhost kernel:  mmcblk2: p1 p2 p3 p4
Feb 06 09:41:19 localhost kernel: input: ilitek_ts as /devices/platform/soc@0/30800000.bus/30a40000.i2c/i2c-2/2-0041/input/input0
Feb 06 09:41:19 localhost kernel: i2c i2c-2: IMX I2C adapter registered
Feb 06 09:41:19 localhost kernel: pwm-backlight backlight: supply power not found, using dummy regulator
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: supply epdev_on not found, using dummy regulator
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: pcie_ext_src clk src missing or invalid
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: PLL REF_CLK is used!.
Feb 06 09:41:19 localhost kernel: SoC: i.MX8MM revision 1.0
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: GPR15=6188ffff
Feb 06 09:41:19 localhost kernel: imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment 2 supported-hw 0x4 0x4
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: PCIe PLL locked after 20 us.
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: host bridge /soc@0/pcie@33800000 ranges:
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie:       IO 0x001ff80000..0x001ff8ffff -> 0x0000000000
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie:      MEM 0x0018000000..0x001fefffff -> 0x0018000000
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: invalid resource
Feb 06 09:41:19 localhost kernel: imx_usb 32e40000.usb: No over current polarity defined
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.0: EHCI Host Controller
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 1
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
Feb 06 09:41:19 localhost kernel: hub 1-0:1.0: USB hub found
Feb 06 09:41:19 localhost kernel: hub 1-0:1.0: 1 port detected
Feb 06 09:41:19 localhost kernel: imx_usb 32e50000.usb: No over current polarity defined
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.1: EHCI Host Controller
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus number 2
Feb 06 09:41:19 localhost kernel: ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
Feb 06 09:41:19 localhost kernel: hub 2-0:1.0: USB hub found
Feb 06 09:41:19 localhost kernel: hub 2-0:1.0: 1 port detected
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: could not get pinctrl
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: voltage-ranges unspecified
Feb 06 09:41:19 localhost kernel: sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
Feb 06 09:41:19 localhost kernel: hantrodec 0 : module inserted. Major = 234
Feb 06 09:41:19 localhost kernel: hantrodec 1 : module inserted. Major = 234
Feb 06 09:41:19 localhost kernel: hx280enc: module inserted. Major <511>
Feb 06 09:41:19 localhost kernel: ALSA device list:
Feb 06 09:41:19 localhost kernel:   No soundcards found.
Feb 06 09:41:19 localhost kernel: mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using ADMA
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: Phy link never came up
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: failed to initialize host
Feb 06 09:41:19 localhost kernel: imx6q-pcie 33800000.pcie: unable to add pcie port.
Feb 06 09:41:19 localhost kernel: Freeing unused kernel memory: 5184K
Feb 06 09:41:19 localhost kernel: Run /init as init process
Feb 06 09:41:19 localhost kernel:   with arguments:
Feb 06 09:41:19 localhost kernel:     /init
Feb 06 09:41:19 localhost kernel:     splash
Feb 06 09:41:19 localhost kernel:   with environment:
Feb 06 09:41:19 localhost kernel:     HOME=/
Feb 06 09:41:19 localhost kernel:     TERM=linux
Feb 06 09:41:19 localhost kernel:     jtag=on
Feb 06 09:41:19 localhost kernel: fec 30be0000.ethernet end0: renamed from eth0
Feb 06 09:41:19 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound imx-lcdif-crtc.0 (ops lcdif_crtc_ops)
Feb 06 09:41:19 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: version number is 0x1060200
Feb 06 09:41:19 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: Failed to attach bridge: 32e10000.mipi_dsi
Feb 06 09:41:19 localhost kernel: imx_sec_dsim_drv 32e10000.mipi_dsi: failed to bind sec dsim bridge: -19
Feb 06 09:41:19 localhost kernel: imx-drm 32c00000.bus:display-subsystem: bound 32e10000.mipi_dsi (ops imx_sec_dsim_ops [sec_mipi_dsim_imx])
Feb 06 09:41:19 localhost kernel: [drm] Initialized imx-drm 1.0.0 20120507 for 32c00000.bus:display-subsystem on minor 1
Feb 06 09:41:19 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 09:41:19 localhost kernel: device-mapper: ioctl: 4.43.0-ioctl (2020-10-01) initialised: dm-devel@redhat.com
Feb 06 09:41:19 localhost kernel: random: lvm: uninitialized urandom read (2 bytes read)
Feb 06 09:41:19 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 09:41:19 localhost kernel: EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 09:41:19 localhost kernel: EXT4-fs (dm-2): recovery complete
Feb 06 09:41:19 localhost kernel: EXT4-fs (dm-2): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 09:41:19 localhost systemd[1]: systemd 252.4-1+mel1 running in system mode (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
Feb 06 09:41:19 localhost systemd[1]: Detected architecture arm64.
Feb 06 09:41:19 localhost systemd[1]: No hostname configured, using default hostname.
Feb 06 09:41:19 localhost systemd[1]: Hostname set to <localhost>.
Feb 06 09:41:19 localhost kernel: random: lvmconfig: uninitialized urandom read (4 bytes read)
Feb 06 09:41:19 localhost systemd[1]: /etc/systemd/system/usbguard.service.d/20-udev-coldplug.conf:2: Unknown key name 'Before' in section 'Service', ignoring.
Feb 06 09:41:19 localhost systemd[1]: /lib/systemd/system/plymouth-start.service:16: Unit uses KillMode=none. This is unsafe, as it disables systemd's process lifecycle management for the service. Please update the service to use a safer KillMode=, such as 'mixed' or 'control-group'. Support for KillMode=none is deprecated and will eventually be removed.
Feb 06 09:41:19 localhost systemd[1]: Queued start job for default target Graphical Interface.
Feb 06 09:41:19 localhost systemd[1]: Unnecessary job was removed for /dev/vg_sys/lv_mainvo.
Feb 06 09:41:19 localhost systemd[1]: Unnecessary job was removed for /dev/dm-2.
Feb 06 09:41:19 localhost systemd[1]: Created slice Slice /system/getty.
Feb 06 09:41:19 localhost systemd[1]: Created slice Slice /system/modprobe.
Feb 06 09:41:19 localhost systemd[1]: Created slice Slice /system/serial-getty.
Feb 06 09:41:19 localhost systemd[1]: Created slice Slice /system/systemd-fsck.
Feb 06 09:41:19 localhost systemd[1]: Created slice Slice /system/weston.
Feb 06 09:41:19 localhost systemd[1]: Created slice User and Session Slice.
Feb 06 09:41:19 localhost systemd[1]: Started Forward Password Requests to Wall Directory Watch.
Feb 06 09:41:19 localhost systemd[1]: Arbitrary Executable File Formats File System Automount Point was skipped because of an unmet condition check (ConditionPathExists=/proc/sys/fs/binfmt_misc).
Feb 06 09:41:19 localhost systemd[1]: Reached target Local Integrity Protected Volumes.
Feb 06 09:41:19 localhost systemd[1]: Reached target Remote File Systems.
Feb 06 09:41:19 localhost systemd[1]: Reached target Slice Units.
Feb 06 09:41:19 localhost systemd[1]: Reached target Swaps.
Feb 06 09:41:19 localhost systemd[1]: Reached target Local Verity Protected Volumes.
Feb 06 09:41:19 localhost systemd[1]: Listening on Device-mapper event daemon FIFOs.
Feb 06 09:41:19 localhost systemd[1]: Listening on LVM2 poll daemon socket.
Feb 06 09:41:19 localhost systemd[1]: Listening on fsck to fsckd communication Socket.
Feb 06 09:41:19 localhost systemd[1]: Listening on initctl Compatibility Named Pipe.
Feb 06 09:41:19 localhost systemd[1]: Listening on Journal Audit Socket.
Feb 06 09:41:19 localhost systemd[1]: Listening on Journal Socket (/dev/log).
Feb 06 09:41:19 localhost systemd[1]: Listening on Journal Socket.
Feb 06 09:41:19 localhost systemd[1]: Listening on udev Control Socket.
Feb 06 09:41:19 localhost systemd[1]: Listening on udev Kernel Socket.
Feb 06 09:41:19 localhost systemd[1]: Mounting Huge Pages File System...
Feb 06 09:41:19 localhost systemd[1]: Mounting POSIX Message Queue File System...
Feb 06 09:41:19 localhost systemd[1]: Mounting Kernel Debug File System...
Feb 06 09:41:19 localhost systemd[1]: Mounting Kernel Trace File System...
Feb 06 09:41:19 localhost systemd[1]: Finished Availability of block devices.
Feb 06 09:41:19 localhost systemd[1]: Starting Set the console keyboard layout...
Feb 06 09:41:19 localhost systemd[1]: Starting Create List of Static Device Nodes...
Feb 06 09:41:19 localhost systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module configfs...
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module efi_pstore...
Feb 06 09:41:19 localhost kernel: random: lvm: uninitialized urandom read (4 bytes read)
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 09:41:19 localhost systemd[1]: Starting Network initialization...
Feb 06 09:41:19 localhost systemd[1]: systemd-journald.service: unit configures an IP firewall, but the local system does not support BPF/cgroup firewalling.
Feb 06 09:41:19 localhost systemd[1]: (This warning is only shown for the first unit using IP firewalling.)
Feb 06 09:41:19 localhost systemd[1]: Starting Journal Service...
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Modules...
Feb 06 09:41:19 localhost systemd[1]: Starting Remount Root and Kernel File Systems...
Feb 06 09:41:19 localhost systemd[1]: Repartition Root Disk was skipped because no trigger condition checks were met.
Feb 06 09:41:19 localhost kernel: fuse: init (API version 7.32)
Feb 06 09:41:19 localhost systemd[1]: Starting Coldplug All udev Devices...
Feb 06 09:41:19 localhost systemd[1]: Starting Uncomplicated firewall...
Feb 06 09:41:19 localhost systemd[1]: Mounted Huge Pages File System.
Feb 06 09:41:19 localhost systemd[1]: Mounted POSIX Message Queue File System.
Feb 06 09:41:19 localhost systemd[1]: Mounted Kernel Debug File System.
Feb 06 09:41:19 localhost systemd[1]: Mounted Kernel Trace File System.
Feb 06 09:41:19 localhost systemd[1]: Finished Create List of Static Device Nodes.
Feb 06 09:41:19 localhost systemd[1]: modprobe@configfs.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module configfs.
Feb 06 09:41:19 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 09:41:19 localhost systemd[1]: modprobe@efi_pstore.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module efi_pstore.
Feb 06 09:41:19 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 09:41:19 localhost systemd[1]: Finished Uncomplicated firewall.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Modules.
Feb 06 09:41:19 localhost systemd[1]: Starting Apply Kernel Variables...
Feb 06 09:41:19 localhost systemd[1]: Finished Remount Root and Kernel File Systems.
Feb 06 09:41:19 localhost systemd[1]: First Boot Wizard was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 09:41:19 localhost systemd[1]: Platform Persistent Storage Archival was skipped because of an unmet condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
Feb 06 09:41:19 localhost systemd[1]: Starting Load/Save Random Seed...
Feb 06 09:41:19 localhost systemd[1]: Starting Create System Users...
Feb 06 09:41:19 localhost systemd[1]: Finished Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling.
Feb 06 09:41:19 localhost systemd[1]: Finished Apply Kernel Variables.
Feb 06 09:41:19 localhost kernel: random: python3: uninitialized urandom read (24 bytes read)
Feb 06 09:41:19 localhost systemd[1]: Finished Create System Users.
Feb 06 09:41:19 localhost systemd[1]: Starting Create Static Device Nodes in /dev...
Feb 06 09:41:19 localhost systemd-journald[356]: Journal started
Feb 06 09:41:19 localhost systemd-journald[356]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 09:41:19 localhost systemd-modules-load[357]: Failed to find module 'lp'
Feb 06 09:41:19 localhost systemd[1]: Started Journal Service.
Feb 06 09:41:19 localhost systemd-modules-load[357]: Failed to find module 'ppdev'
Feb 06 09:41:19 localhost systemd-modules-load[357]: Failed to find module 'parport_pc'
Feb 06 09:41:19 localhost systemd-random-seed[375]: Kernel entropy pool is not initialized yet, waiting until it is.
Feb 06 09:41:19 localhost lvm[347]:   5 logical volume(s) in volume group "vg_sys" monitored
Feb 06 09:41:19 localhost networking[364]: rm: cannot remove '/var/tmp/network/ifstatenew': Read-only file system
Feb 06 09:41:19 localhost networking[355]: networking: Configuring network interfaces
Feb 06 09:41:19 localhost systemd[1]: Finished Create Static Device Nodes in /dev.
Feb 06 09:41:19 localhost systemd[1]: Starting Rule-based Manager for Device Events and Files...
Feb 06 09:41:19 localhost systemd-udevd[380]: Using default interface naming scheme 'v252'.
Feb 06 09:41:19 localhost systemd[1]: Started Rule-based Manager for Device Events and Files.
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 09:41:19 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module configfs...
Feb 06 09:41:19 localhost systemd[1]: modprobe@configfs.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module configfs.
Feb 06 09:41:19 localhost systemd[1]: Starting Load Kernel Module fuse...
Feb 06 09:41:19 localhost systemd[1]: modprobe@fuse.service: Deactivated successfully.
Feb 06 09:41:19 localhost systemd[1]: Finished Load Kernel Module fuse.
Feb 06 09:41:19 localhost systemd[1]: Finished Coldplug All udev Devices.
Feb 06 09:41:19 localhost systemd[1]: Finished Set the console keyboard layout.
Feb 06 09:41:19 localhost systemd[1]: Reached target Preparation for Local File Systems.
Feb 06 09:41:19 localhost systemd[1]: Starting Show Plymouth Boot Screen...
Feb 06 09:41:19 localhost systemd[1]: Started Show Plymouth Boot Screen.
Feb 06 09:41:19 localhost systemd[1]: Dispatch Password Requests to Console Directory Watch was skipped because of an unmet condition check (ConditionPathExists=!/run/plymouth/pid).
Feb 06 09:41:19 localhost systemd[1]: Started Forward Password Requests to Plymouth Directory Watch.
Feb 06 09:41:19 localhost systemd[1]: Reached target Local Encrypted Volumes.
Feb 06 09:41:20 localhost systemd[1]: Found device /dev/ttymxc1.
Feb 06 09:41:20 localhost systemd[1]: Found device /dev/disk/by-label/lv_pavo.
Feb 06 09:41:20 localhost systemd[1]: Mounting FUSE Control File System...
Feb 06 09:41:20 localhost systemd[1]: Mounting Kernel Configuration File System...
Feb 06 09:41:20 localhost systemd[1]: var-log.mount: Directory /var/log to mount over is not empty, mounting anyway.
Feb 06 09:41:20 localhost systemd[1]: Mounting /var/log...
Feb 06 09:41:20 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_pavo...
Feb 06 09:41:20 localhost systemd[1]: Mounted FUSE Control File System.
Feb 06 09:41:20 localhost systemd[1]: Mounted Kernel Configuration File System.
Feb 06 09:41:20 localhost systemd[1]: Mounted /var/log.
Feb 06 09:41:20 localhost systemd[1]: Starting Flush Journal to Persistent Storage...
Feb 06 09:41:20 localhost systemd[1]: Started File System Check Daemon to report status.
Feb 06 09:41:20 localhost systemd-journald[356]: Runtime Journal (/run/log/journal/dbe7d9459e724ab68a0585229f903277) is 2.0M, max 50.0M, 48.0M free.
Feb 06 09:41:20 localhost systemd-journald[356]: Received client request to flush runtime journal.
Feb 06 09:41:20 localhost systemd[1]: Finished Flush Journal to Persistent Storage.
Feb 06 09:41:20 localhost systemd-udevd[391]: event_source: Failed to get device name: No such file or directory
Feb 06 09:41:20 localhost systemd[1]: Found device /dev/disk/by-label/lv_rtvo.
Feb 06 09:41:20 localhost systemd-fsck[431]: lv_pavo: recovering journal
Feb 06 09:41:20 localhost systemd-fsck[431]: lv_pavo: clean, 11/16384 files, 7465/65536 blocks
Feb 06 09:41:20 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_pavo.
Feb 06 09:41:20 localhost systemd[1]: Mounting /etc/hmi/FwServices/pa...
Feb 06 09:41:20 localhost systemd[1]: Starting File System Check on /dev/disk/by-label/lv_rtvo...
Feb 06 09:41:20 localhost kernel: EXT4-fs (dm-3): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 09:41:20 localhost kernel: ext4 filesystem being mounted at /etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 09:41:20 localhost systemd[1]: Mounted /etc/hmi/FwServices/pa.
Feb 06 09:41:20 localhost systemd-fsck[438]: lv_rtvo: recovering journal
Feb 06 09:41:20 localhost systemd-fsck[438]: lv_rtvo: clean, 11/65536 files, 12955/262144 blocks
Feb 06 09:41:20 localhost systemd[1]: Finished File System Check on /dev/disk/by-label/lv_rtvo.
Feb 06 09:41:20 localhost systemd[1]: Mounting /var/opt/siemens/automation/WinCCUnified/Projects...
Feb 06 09:41:20 localhost kernel: EXT4-fs (dm-4): mounted filesystem with ordered data mode. Opts: (null)
Feb 06 09:41:20 localhost systemd[1]: Mounted /var/opt/siemens/automation/WinCCUnified/Projects.
Feb 06 09:41:20 localhost systemd[1]: Reached target Local File Systems.
Feb 06 09:41:20 localhost systemd[1]: Starting Tell Plymouth To Write Out Runtime Data...
Feb 06 09:41:20 localhost systemd[1]: Set Up Additional Binary Formats was skipped because no trigger condition checks were met.
Feb 06 09:41:20 localhost systemd[1]: Starting Create Volatile Files and Directories...
Feb 06 09:41:20 localhost systemd[1]: Finished Tell Plymouth To Write Out Runtime Data.
Feb 06 09:41:20 localhost systemd[1]: Received SIGRTMIN+20 from PID 242 (plymouthd).
Feb 06 09:41:20 localhost kernel: random: crng init done
Feb 06 09:41:20 localhost kernel: random: 1 urandom warning(s) missed due to ratelimiting
Feb 06 09:41:20 localhost systemd[1]: Finished Load/Save Random Seed.
Feb 06 09:41:20 localhost systemd[1]: First Boot Complete was skipped because of an unmet condition check (ConditionFirstBoot=yes).
Feb 06 09:41:20 localhost systemd[1]: Commit a transient machine-id on disk was skipped because of an unmet condition check (ConditionPathIsMountPoint=/etc/machine-id).
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/disk/by-id/lvm-pv-uuid-5Rzba1-ZlTA-I4eM-nQii-m4P1-rfub-tWp3XI being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/block/179:1 being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/disk/by-partuuid/d78c2ee2-d4f8-43f3-a818-02e1398a35b5 being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/disk/by-path/platform-30b60000.mmc-part1 being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/disk/by-id/mmc-G1M15N_0x182776aa-part1 being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/disk/by-partlabel/system being skipped.
Feb 06 09:41:20 localhost systemd[1]: Condition check resulted in /dev/mmcblk2p1 being skipped.
Feb 06 09:41:20 localhost systemd[1]: Finished Create Volatile Files and Directories.
Feb 06 09:41:20 localhost systemd[1]: Created slice Slice /system/lvm2-pvscan.
Feb 06 09:41:20 localhost systemd[1]: Starting Set console font and keymap...
Feb 06 09:41:20 localhost systemd[1]: Started Entropy Daemon based on the HAVEGE algorithm.
Feb 06 09:41:20 localhost systemd[1]: Starting LVM event activation on device 179:1...
Feb 06 09:41:20 localhost systemd[1]: Starting Record System Boot/Shutdown in UTMP...
Feb 06 09:41:20 localhost systemd[1]: Finished Set console font and keymap.
Feb 06 09:41:20 localhost systemd[1]: Finished Record System Boot/Shutdown in UTMP.
Feb 06 09:41:20 localhost systemd[1]: Reached target System Initialization.
Feb 06 09:41:20 localhost systemd[1]: Started CUPS Scheduler.
Feb 06 09:41:20 localhost systemd[1]: Started Trigger anacron every hour.
Feb 06 09:41:20 localhost systemd[1]: Started Daily apt download activities.
Feb 06 09:41:20 localhost systemd[1]: Started Daily apt upgrade and clean activities.
Feb 06 09:41:20 localhost systemd[1]: Started Periodic ext4 Online Metadata Check for All Filesystems.
Feb 06 09:41:20 localhost systemd[1]: Started Run ent periodically and on boot.
Feb 06 09:41:20 localhost systemd[1]: Started Discard unused blocks once a week.
Feb 06 09:41:20 localhost systemd[1]: Started Daily rotation of log files.
Feb 06 09:41:20 localhost systemd[1]: Started Daily Cleanup of Temporary Directories.
Feb 06 09:41:20 localhost systemd[1]: Reached target Path Units.
Feb 06 09:41:20 localhost systemd[1]: Reached target Timer Units.
Feb 06 09:41:20 localhost systemd[1]: Listening on CUPS Scheduler.
Feb 06 09:41:20 localhost systemd[1]: Listening on D-Bus System Message Bus Socket.
Feb 06 09:41:20 localhost systemd[1]: Starting Docker Socket for the API...
Feb 06 09:41:20 localhost systemd[1]: TPM2 PCR Barrier (Initialization) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 09:41:20 localhost systemd[1]: Listening on Docker Socket for the API.
Feb 06 09:41:20 localhost systemd[1]: Reached target Socket Units.
Feb 06 09:41:20 localhost systemd[1]: Reached target Basic System.
Feb 06 09:41:20 localhost systemd[1]: System is tainted: cgroupsv1
Feb 06 09:41:20 localhost systemd[1]: Started Run anacron jobs.
Feb 06 09:41:20 localhost anacron[460]: Anacron 2.3 started on 2023-02-06
Feb 06 09:41:20 localhost systemd[1]: Started Regular background program processing daemon.
Feb 06 09:41:20 localhost anacron[460]: Normal exit (0 jobs run)
Feb 06 09:41:20 localhost cron[461]: (CRON) INFO (pidfile fd = 3)
Feb 06 09:41:20 localhost systemd[1]: Started D-Bus System Message Bus.
Feb 06 09:41:20 localhost lvm[455]:   pvscan[455] PV /dev/mmcblk2p1 online, VG vg_sys is complete.
Feb 06 09:41:20 localhost cron[461]: (CRON) INFO (Running @reboot jobs)
Feb 06 09:41:20 localhost lvm[455]:   pvscan[455] VG vg_sys skip autoactivation.
Feb 06 09:41:20 localhost systemd[1]: Starting Network Manager...
Feb 06 09:41:20 localhost systemd[1]: Starting Remove Stale Online ext4 Metadata Check Snapshots...
Feb 06 09:41:20 localhost systemd[1]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 09:41:20 localhost systemd[1]: Started Early OOM Daemon.
Feb 06 09:41:20 localhost systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 09:41:20 localhost systemd[1]: getty on tty2-tty6 if dbus and logind are not available was skipped because of an unmet condition check (ConditionPathExists=!/usr/bin/dbus-daemon).
Feb 06 09:41:20 localhost systemd[1]: Starting Initialize hardware monitoring sensors...
Feb 06 09:41:20 localhost sensors[469]: No sensors found!
Feb 06 09:41:20 localhost sensors[469]: Make sure you loaded all the kernel drivers you need.
Feb 06 09:41:20 localhost sensors[469]: Try sensors-detect to find out which these are.
Feb 06 09:41:21 localhost systemd[1]: Started LTTng session daemon.
Feb 06 09:41:21 localhost systemd[1]: Starting User Login Management...
Feb 06 09:41:21 localhost systemd[1]: TPM2 PCR Barrier (User) was skipped because of an unmet condition check (ConditionPathExists=/sys/firmware/efi/efivars/StubPcrKernelImage-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f).
Feb 06 09:41:21 localhost systemd[1]: Starting Disk Manager...
Feb 06 09:41:21 localhost systemd[1]: Starting USBGuard D-Bus Service...
Feb 06 09:41:21 localhost systemd[1]: Starting USBGuard daemon...
Feb 06 09:41:21 localhost systemd[1]: Starting WPA supplicant...
Feb 06 09:41:21 localhost sh[468]: Entropy = 7.999839 bits per byte.
Feb 06 09:41:21 localhost sh[468]: Optimum compression would reduce the size
Feb 06 09:41:21 localhost sh[468]: of this 1048576 byte file by 0 percent.
Feb 06 09:41:21 localhost sh[468]: Chi square distribution for 1048576 samples is 234.08, and randomly
Feb 06 09:41:21 localhost sh[468]: would exceed this value 82.20 percent of the times.
Feb 06 09:41:21 localhost sh[468]: Arithmetic mean value of data bytes is 127.4373 (127.5 = random).
Feb 06 09:41:21 localhost sh[468]: Monte Carlo value for Pi is 3.146954143 (error 0.17 percent).
Feb 06 09:41:21 localhost sh[468]: Serial correlation coefficient is 0.002113 (totally uncorrelated = 0.0).
Feb 06 09:41:21 localhost systemd[1]: Finished LVM event activation on device 179:1.
Feb 06 09:41:21 localhost systemd[1]: anacron.service: Deactivated successfully.
Feb 06 09:41:21 localhost systemd[1]: ent.service: Deactivated successfully.
Feb 06 09:41:21 localhost systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 09:41:21 localhost systemd[1]: Created slice Slice /system/systemd-backlight.
Feb 06 09:41:21 localhost systemd[1]: Starting Load/Save Screen Backlight Brightness of backlight:backlight...
Feb 06 09:41:21 localhost sensors[476]: No sensors found!
Feb 06 09:41:21 localhost sensors[476]: Make sure you loaded all the kernel drivers you need.
Feb 06 09:41:21 localhost sensors[476]: Try sensors-detect to find out which these are.
Feb 06 09:41:21 localhost systemd[1]: Finished Initialize hardware monitoring sensors.
Feb 06 09:41:21 localhost systemd[1]: Finished Load/Save Screen Backlight Brightness of backlight:backlight.
Feb 06 09:41:21 localhost udisksd[472]: udisks daemon version 2.9.2 starting
Feb 06 09:41:21 localhost systemd[1]: Started WPA supplicant.
Feb 06 09:41:21 localhost wpa_supplicant[475]: Successfully initialized wpa_supplicant
Feb 06 09:41:21 localhost haveged[453]: haveged: command socket is listening at fd 3
Feb 06 09:41:21 localhost systemd[1]: Started USBGuard D-Bus Service.
Feb 06 09:41:21 localhost udisksd[472]: failed to load module crypto: libbd_crypto.so.2: cannot open shared object file: No such file or directory
Feb 06 09:41:21 localhost udisksd[472]: failed to load module mdraid: libbd_mdraid.so.2: cannot open shared object file: No such file or directory
Feb 06 09:41:21 localhost kernel: caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
Feb 06 09:41:21 localhost kernel: caam 30900000.crypto: job rings = 3, qi = 0
Feb 06 09:41:21 localhost kernel: caam-snvs 30370000.caam-snvs: violation handlers armed - non-secure state
Feb 06 09:41:21 localhost kernel: LTTng: Loaded modules v2.12.11 ((Ta) Meilleure)
Feb 06 09:41:21 localhost udisksd[472]: Failed to load the 'mdraid' libblockdev plugin
Feb 06 09:41:21 localhost udisksd[472]: Failed to load the 'crypto' libblockdev plugin
Feb 06 09:41:21 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.PolicyKit1' unit='polkit.service' requested by ':1.2' (uid=0 pid=472 comm="/usr/libexec/udisks2/udisksd " label="kernel")
Feb 06 09:41:21 localhost systemd[1]: Starting Authorization Manager...
Feb 06 09:41:21 localhost earlyoom[465]: earlyoom v1.6.2
Feb 06 09:41:21 localhost earlyoom[465]: mem total: 1980 MiB, swap total:    0 MiB
Feb 06 09:41:21 localhost earlyoom[465]: sending SIGTERM when mem <= 20.00% and swap <= 10.00%,
Feb 06 09:41:21 localhost earlyoom[465]:         SIGKILL when mem <= 10.00% and swap <=  5.00%
Feb 06 09:41:21 localhost earlyoom[465]: mem avail:  1743 of  1980 MiB (88.06%), swap free:    0 of    0 MiB ( 0.00%)
Feb 06 09:41:21 localhost systemd[1]: e2scrub_reap.service: Deactivated successfully.
Feb 06 09:41:21 localhost systemd[1]: Finished Remove Stale Online ext4 Metadata Check Snapshots.
Feb 06 09:41:21 localhost polkitd[491]: started daemon version 0.105 using authority implementation `local' version `0.105'
Feb 06 09:41:21 localhost NetworkManager[463]: <info>  [1675676481.6516] NetworkManager (version 1.30.6) is starting... (for the first time)
Feb 06 09:41:21 localhost NetworkManager[463]: <info>  [1675676481.6518] Read config: /etc/NetworkManager/NetworkManager.conf (lib: no-mac-addr-change.conf)
Feb 06 09:41:21 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.PolicyKit1'
Feb 06 09:41:21 localhost systemd[1]: Started Authorization Manager.
Feb 06 09:41:21 localhost systemd[1]: Started Network Manager.
Feb 06 09:41:21 localhost NetworkManager[463]: <info>  [1675676481.6653] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
Feb 06 09:41:21 localhost systemd[1]: Reached target Network.
Feb 06 09:41:21 localhost systemd[1]: Starting Network Manager Wait Online...
Feb 06 09:41:21 localhost systemd[1]: Starting Crossbar.io service...
Feb 06 09:41:21 localhost systemd[1]: Starting containerd container runtime...
Feb 06 09:41:21 localhost systemd[1]: Starting A high performance web server and a reverse proxy server...
Feb 06 09:41:21 localhost systemd[1]: Starting Simple Network Management Protocol (SNMP) Daemon....
Feb 06 09:41:21 localhost systemd[1]: Starting OpenBSD Secure Shell server...
Feb 06 09:41:21 localhost systemd[1]: Starting Permit User Sessions...
Feb 06 09:41:21 localhost systemd[1]: Started Simple Network Management Protocol (SNMP) Daemon..
Feb 06 09:41:21 localhost systemd[1]: Finished Permit User Sessions.
Feb 06 09:41:21 localhost systemd[1]: Starting Hold until boot process finishes up...
Feb 06 09:41:21 localhost systemd[1]: Starting Terminate Plymouth Boot Screen...
Feb 06 09:41:21 localhost systemd[1]: Started Weston Wayland Compositor (on tty7).
Feb 06 09:41:21 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 09:41:21 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 09:41:21 localhost systemd[1]: Finished Hold until boot process finishes up.
Feb 06 09:41:21 localhost systemd[1]: Finished Terminate Plymouth Boot Screen.
Feb 06 09:41:21 localhost systemd[1]: Received SIGRTMIN+21 from PID 242 (n/a).
Feb 06 09:41:21 localhost systemd[1]: Started Getty on tty1.
Feb 06 09:41:21 localhost NetworkManager[463]: <info>  [1675676481.9373] manager[0xaaab179c6010]: monitoring kernel firmware directory '/lib/firmware'.
Feb 06 09:41:21 localhost NetworkManager[463]: <info>  [1675676481.9377] monitoring ifupdown state file '/run/network/ifstate'.
Feb 06 09:41:21 localhost systemd[1]: Started Serial Getty on ttymxc1.
Feb 06 09:41:21 localhost systemd[1]: Reached target Login Prompts.
Feb 06 09:41:21 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.hostname1' unit='dbus-org.freedesktop.hostname1.service' requested by ':1.5' (uid=0 pid=463 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 09:41:22 localhost systemd[1]: Starting Hostname Service...
Feb 06 09:41:22 localhost systemd[529]: pam_unix(login:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 09:41:22 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.login1' unit='dbus-org.freedesktop.login1.service' requested by ':1.7' (uid=0 pid=529 comm="(n-launch) " label="kernel")
Feb 06 09:41:22 localhost systemd[1]: Starting Load Kernel Module drm...
Feb 06 09:41:22 localhost systemd[1]: modprobe@drm.service: Deactivated successfully.
Feb 06 09:41:22 localhost systemd[1]: Finished Load Kernel Module drm.
Feb 06 09:41:22 localhost sshd[541]: Server listening on 0.0.0.0 port 22.
Feb 06 09:41:22 localhost sshd[541]: Server listening on :: port 22.
Feb 06 09:41:22 localhost systemd[1]: Started OpenBSD Secure Shell server.
Feb 06 09:41:22 localhost systemd-logind[471]: New seat seat0.
Feb 06 09:41:22 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.login1'
Feb 06 09:41:22 localhost systemd[1]: Started User Login Management.
Feb 06 09:41:22 localhost systemd[1]: Created slice User Slice of UID 500.
Feb 06 09:41:22 localhost systemd[1]: Starting User Runtime Directory /run/user/500...
Feb 06 09:41:22 localhost systemd-logind[471]: New session 1 of user industrial.
Feb 06 09:41:22 localhost systemd[1]: Finished User Runtime Directory /run/user/500.
Feb 06 09:41:22 localhost systemd[1]: Starting User Manager for UID 500...
Feb 06 09:41:22 localhost systemd[552]: pam_unix(systemd-user:session): session opened for user industrial(uid=500) by (uid=0)
Feb 06 09:41:22 localhost systemd[1]: usbguard.service: Supervising process 554 which is not our child. We'll most likely not notice when it exits.
Feb 06 09:41:22 localhost systemd[1]: Started USBGuard daemon.
Feb 06 09:41:22 localhost usbguard-daemon[554]: uid=0 pid=474 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' type='Device.Present'
Feb 06 09:41:22 localhost usbguard-daemon[554]: uid=0 pid=474 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e40000.usb/ci_hdrc.0/usb1' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.0" name "EHCI Host Controller" hash "4eoDgjV5VTQ7e+Q29nkBuhkdQFwvDjR1v5WB1/v7/hA=" parent-hash "QHymr6pehX+KVKjadn4f2naCAWUV7PKgqAftFvDZba4=" via-port "usb1" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 09:41:22 localhost usbguard-daemon[554]: uid=0 pid=474 result='SUCCESS' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' type='Device.Present'
Feb 06 09:41:22 localhost usbguard-daemon[554]: uid=0 pid=474 result='SUCCESS' device.system_name='/devices/platform/soc@0/32c00000.bus/32e50000.usb/ci_hdrc.1/usb2' target.new='allow' device.rule='allow id 1d6b:0002 serial "ci_hdrc.1" name "EHCI Host Controller" hash "AKcVZmRe8L4P+V4ArqhHhQEJrAd5iy5eSWXTLKr5hL0=" parent-hash "U2Mxkm3YyWDwr6I+GAgynWnRH06AvSJa7j5rGei8WKU=" via-port "usb2" with-interface 09:00:00 with-connect-type ""' target.old='allow' type='Policy.Device.Update'
Feb 06 09:41:22 localhost containerd[520]: time="2023-02-06T09:41:22.629980375Z" level=info msg="starting containerd" revision="1.4.13~ds1-1~deb11u3" version="1.4.13~ds1"
Feb 06 09:41:22 localhost systemd[1]: Started A high performance web server and a reverse proxy server.
Feb 06 09:41:22 localhost systemd[1]: Started Disk Manager.
Feb 06 09:41:22 localhost haveged[453]: haveged: ver: 1.9.14; arch: generic; vend: ; build: (gcc 10.2.1 CTV); collect: 128K
Feb 06 09:41:22 localhost haveged[453]: haveged: cpu: (VC); data: 16K (D V); inst: 16K (D V); idx: 11/40; sz: 15456/64452
Feb 06 09:41:22 localhost haveged[453]: haveged: tot tests(BA8): A:1/1 B:1/1 continuous tests(B):  last entropy estimate 7.99661
Feb 06 09:41:22 localhost haveged[453]: haveged: fills: 0, generated: 0
Feb 06 09:41:23 localhost systemd[1]: Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
Feb 06 09:41:23 localhost kernel: caam_jr 30901000.jr: failed to flush job ring 0
Feb 06 09:41:23 localhost kernel: caam_jr: probe of 30901000.jr failed with error -5
Feb 06 09:41:23 localhost udisksd[472]: Acquired the name org.freedesktop.UDisks2 on the system message bus
Feb 06 09:41:23 localhost systemd[552]: Queued start job for default target Main User Target.
Feb 06 09:41:23 localhost systemd[552]: Created slice User Application Slice.
Feb 06 09:41:23 localhost systemd[552]: Reached target Paths.
Feb 06 09:41:23 localhost systemd[552]: Reached target Timers.
Feb 06 09:41:23 localhost systemd[552]: Starting D-Bus User Message Bus Socket...
Feb 06 09:41:23 localhost systemd[552]: Listening on GnuPG network certificate management daemon.
Feb 06 09:41:23 localhost systemd[552]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 09:41:23 localhost systemd[552]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 09:41:23 localhost systemd[552]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 09:41:23 localhost systemd[552]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 09:41:23 localhost networking[490]: warning: vrf: cache v4: cmd '/bin/ip rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 09:41:23 localhost networking[490]: Dump terminated
Feb 06 09:41:23 localhost networking[490]: )
Feb 06 09:41:23 localhost networking[490]: warning: vrf: cache v6: cmd '/bin/ip -6 rule show' failed: returned 255 (RTNETLINK answers: Operation not supported
Feb 06 09:41:23 localhost networking[490]: Dump terminated
Feb 06 09:41:23 localhost networking[490]: )
Feb 06 09:41:23 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 09:41:23 localhost systemd[552]: Listening on D-Bus User Message Bus Socket.
Feb 06 09:41:23 localhost kernel: ext4 filesystem being remounted at /run/systemd/unit-root/etc/hmi/FwServices/pa supports timestamps until 2038 (0x7fffffff)
Feb 06 09:41:23 localhost systemd[552]: Reached target Sockets.
Feb 06 09:41:23 localhost systemd[552]: Reached target Basic System.
Feb 06 09:41:23 localhost systemd[1]: Started User Manager for UID 500.
Feb 06 09:41:23 localhost systemd[1]: Started Session 1 of User industrial.
Feb 06 09:41:23 localhost systemd[552]: Reached target Main User Target.
Feb 06 09:41:23 localhost systemd[552]: Startup finished in 793ms.
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.313568125Z" level=info msg="loading plugin \"io.containerd.content.v1.content\"..." type=io.containerd.content.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.317406875Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.aufs\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.339460750Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.aufs\"..." error="aufs is not supported (modprobe aufs failed: exit status 1 \"modprobe: FATAL: Module aufs not found in directory /lib/modules/5.10.158-cip22+ind1\\n\"): skip plugin" type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.340190875Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.348262125Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.btrfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.btrfs (overlay) must be a btrfs filesystem to be used with the btrfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.349197250Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.devmapper\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.350049750Z" level=warning msg="failed to load plugin io.containerd.snapshotter.v1.devmapper" error="devmapper not configured"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.350753375Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.native\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.354945375Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.overlayfs\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.359620125Z" level=info msg="loading plugin \"io.containerd.snapshotter.v1.zfs\"..." type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.361740250Z" level=info msg="skip loading plugin \"io.containerd.snapshotter.v1.zfs\"..." error="path /var/lib/containerd/io.containerd.snapshotter.v1.zfs must be a zfs filesystem to be used with the zfs snapshotter: skip plugin" type=io.containerd.snapshotter.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.371158375Z" level=info msg="loading plugin \"io.containerd.metadata.v1.bolt\"..." type=io.containerd.metadata.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.372489375Z" level=warning msg="could not use snapshotter devmapper in metadata plugin" error="devmapper not configured"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.373158625Z" level=info msg="metadata content store policy set" policy=shared
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.380181875Z" level=info msg="loading plugin \"io.containerd.differ.v1.walking\"..." type=io.containerd.differ.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.381517125Z" level=info msg="loading plugin \"io.containerd.gc.v1.scheduler\"..." type=io.containerd.gc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.383080750Z" level=info msg="loading plugin \"io.containerd.service.v1.introspection-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.387108125Z" level=info msg="loading plugin \"io.containerd.service.v1.containers-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.387830500Z" level=info msg="loading plugin \"io.containerd.service.v1.content-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.388541875Z" level=info msg="loading plugin \"io.containerd.service.v1.diff-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.389193250Z" level=info msg="loading plugin \"io.containerd.service.v1.images-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.389795000Z" level=info msg="loading plugin \"io.containerd.service.v1.leases-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.408006375Z" level=info msg="loading plugin \"io.containerd.service.v1.namespaces-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.415784250Z" level=info msg="loading plugin \"io.containerd.service.v1.snapshots-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.417214250Z" level=info msg="loading plugin \"io.containerd.runtime.v1.linux\"..." type=io.containerd.runtime.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.419767625Z" level=info msg="loading plugin \"io.containerd.runtime.v2.task\"..." type=io.containerd.runtime.v2
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.424682375Z" level=info msg="loading plugin \"io.containerd.monitor.v1.cgroups\"..." type=io.containerd.monitor.v1
Feb 06 09:41:23 localhost kernel: caam algorithms registered in /proc/crypto
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.454935000Z" level=info msg="loading plugin \"io.containerd.service.v1.tasks-service\"..." type=io.containerd.service.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455260000Z" level=info msg="loading plugin \"io.containerd.internal.v1.restart\"..." type=io.containerd.internal.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455601625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.containers\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455732750Z" level=info msg="loading plugin \"io.containerd.grpc.v1.content\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455807625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.diff\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455871000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.events\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.455941500Z" level=info msg="loading plugin \"io.containerd.grpc.v1.healthcheck\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.456049000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.images\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.456122625Z" level=info msg="loading plugin \"io.containerd.grpc.v1.leases\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.456187125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.namespaces\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.456253000Z" level=info msg="loading plugin \"io.containerd.internal.v1.opt\"..." type=io.containerd.internal.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.459343000Z" level=info msg="loading plugin \"io.containerd.grpc.v1.snapshots\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.459665375Z" level=info msg="loading plugin \"io.containerd.grpc.v1.tasks\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.459827125Z" level=info msg="loading plugin \"io.containerd.grpc.v1.version\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.459906250Z" level=info msg="loading plugin \"io.containerd.grpc.v1.cri\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.460542875Z" level=info msg="Start cri plugin with config {PluginConfig:{ContainerdConfig:{Snapshotter:overlayfs DefaultRuntimeName:runc DefaultRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} UntrustedWorkloadRuntime:{Type: Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:<nil> PrivilegedWithoutHostDevices:false BaseRuntimeSpec:} Runtimes:map[runc:{Type:io.containerd.runc.v2 Engine: PodAnnotations:[] ContainerAnnotations:[] Root: Options:0x4000460ea0 PrivilegedWithoutHostDevices:false BaseRuntimeSpec:}] NoPivot:false DisableSnapshotAnnotations:true DiscardUnpackedLayers:false} CniConfig:{NetworkPluginBinDir:/usr/lib/cni NetworkPluginConfDir:/etc/cni/net.d NetworkPluginMaxConfNum:1 NetworkPluginConfTemplate:} Registry:{Mirrors:map[docker.io:{Endpoints:[https://registry-1.docker.io]}] Configs:map[] Auths:map[] Headers:map[]} ImageDecryption:{KeyModel:} DisableTCPService:true StreamServerAddress:127.0.0.1 StreamServerPort:0 StreamIdleTimeout:4h0m0s EnableSelinux:false SelinuxCategoryRange:1024 SandboxImage:k8s.gcr.io/pause:3.2 StatsCollectPeriod:10 SystemdCgroup:false EnableTLSStreaming:false X509KeyPairStreaming:{TLSCertFile: TLSKeyFile:} MaxContainerLogLineSize:16384 DisableCgroup:false DisableApparmor:false RestrictOOMScoreAdj:false MaxConcurrentDownloads:3 DisableProcMount:false UnsetSeccompProfile: TolerateMissingHugetlbController:true DisableHugetlbController:true IgnoreImageDefinedVolumes:false} ContainerdRootDir:/var/lib/containerd ContainerdEndpoint:/run/containerd/containerd.sock RootDir:/var/lib/containerd/io.containerd.grpc.v1.cri StateDir:/run/containerd/io.containerd.grpc.v1.cri}"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.460933500Z" level=info msg="Connect containerd service"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.461324250Z" level=info msg="Get image filesystem path \"/var/lib/containerd/io.containerd.snapshotter.v1.overlayfs\""
Feb 06 09:41:23 localhost kernel: caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto
Feb 06 09:41:23 localhost kernel: caam 30900000.crypto: registering rng-caam
Feb 06 09:41:23 localhost kernel: Device caam-keygen registered
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.481039250Z" level=error msg="failed to load cni during init, please check CRI plugin status before setting up network for pods" error="cni config load failed: no network config found in /etc/cni/net.d: cni plugin not initialized: failed to load cni config"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.485966500Z" level=info msg="loading plugin \"io.containerd.grpc.v1.introspection\"..." type=io.containerd.grpc.v1
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.488509375Z" level=info msg=serving... address=/run/containerd/containerd.sock.ttrpc
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.489270750Z" level=info msg=serving... address=/run/containerd/containerd.sock
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.491064500Z" level=info msg="containerd successfully booted in 0.881730s"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.492960500Z" level=info msg="Start subscribing containerd event"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.493197000Z" level=info msg="Start recovering state"
Feb 06 09:41:23 localhost systemd[1]: Started containerd container runtime.
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.520589125Z" level=info msg="Start event monitor"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.526234250Z" level=info msg="Start snapshots syncer"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.526539750Z" level=info msg="Start cni network conf syncer"
Feb 06 09:41:23 localhost containerd[520]: time="2023-02-06T09:41:23.526695000Z" level=info msg="Start streaming server"
Feb 06 09:41:23 localhost kernel: fsl-jr-uio 30901000.jr: UIO device full name fsl-jr0 initialized
Feb 06 09:41:23 localhost weston-launch[663]: Internal warning: debug scope 'drm-backend' has not been destroyed.
Feb 06 09:41:23 localhost systemd[1]: weston@industrial.service: Main process exited, code=exited, status=1/FAILURE
Feb 06 09:41:23 localhost systemd[1]: weston@industrial.service: Failed with result 'exit-code'.
Feb 06 09:41:23 localhost systemd[1]: session-1.scope: Deactivated successfully.
Feb 06 09:41:23 localhost systemd-logind[471]: Session 1 logged out. Waiting for processes to exit.
Feb 06 09:41:23 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.hostname1'
Feb 06 09:41:23 localhost systemd[1]: Started Hostname Service.
Feb 06 09:41:23 localhost systemd-logind[471]: Removed session 1.
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6363] hostname: hostname: using hostnamed
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6382] dns-mgr[0xaaab179bb170]: init: dns=default,systemd-resolved rc-manager=symlink (auto)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6398] manager[0xaaab179c6010]: rfkill: Wi-Fi hardware radio set enabled
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6399] manager[0xaaab179c6010]: rfkill: WWAN hardware radio set enabled
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6534] Loaded device plugin: NMAtmManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-adsl.so)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6822] Loaded device plugin: NMBluezManager (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-bluetooth.so)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6851] Loaded device plugin: NMWwanFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wwan.so)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.6914] Loaded device plugin: NMWifiFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-wifi.so)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7019] Loaded device plugin: NMTeamFactory (/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-device-plugin-team.so)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7034] manager: rfkill: Wi-Fi enabled by radio killswitch; enabled by state file
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7039] manager: rfkill: WWAN enabled by radio killswitch; enabled by state file
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7043] manager: Networking is enabled by state file
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7048] dhcp-init: Using DHCP client 'internal'
Feb 06 09:41:23 localhost dbus-daemon[462]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service' requested by ':1.5' (uid=0 pid=463 comm="/usr/sbin/NetworkManager --no-daemon " label="kernel")
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7094] settings: Loaded settings plugin: ifupdown ("/usr/lib/aarch64-linux-gnu/NetworkManager/1.30.6/libnm-settings-plugin-ifupdown.so")
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7097] settings: Loaded settings plugin: keyfile (internal)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7101] ifupdown: management mode: unmanaged
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7104] ifupdown:       interface-parser: parsing file /etc/network/interfaces
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7106] ifupdown:       interface-parser: finished parsing file /etc/network/interfaces
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7174] device (lo): carrier: link connected
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7191] manager: (lo): new Generic device (/org/freedesktop/NetworkManager/Devices/1)
Feb 06 09:41:23 localhost systemd[1]: Starting Network Manager Script Dispatcher Service...
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7280] manager: (end0): new Ethernet device (/org/freedesktop/NetworkManager/Devices/2)
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7461] settings: (end0): created default wired connection 'Wired connection 1'
Feb 06 09:41:23 localhost NetworkManager[463]: <info>  [1675676483.7502] device (end0): state change: unmanaged -> unavailable (reason 'managed', sys-iface-state: 'external')
Feb 06 09:41:23 localhost kernel: Generic PHY 30be0000.ethernet-1:01: attached PHY driver [Generic PHY] (mii_bus:phy_addr=30be0000.ethernet-1:01, irq=POLL)
Feb 06 09:41:23 localhost dbus-daemon[462]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Feb 06 09:41:23 localhost systemd[1]: Started Network Manager Script Dispatcher Service.
Feb 06 09:41:23 localhost NetworkManager[463]: <warn>  [1675676483.7901] Error: failed to open /run/network/ifstate
Feb 06 09:41:24 localhost systemd[1]: Finished Network initialization.
Feb 06 09:41:26 localhost crossbar[513]: Directory /web already exists - SKIPPING
Feb 06 09:41:26 localhost crossbar[513]: Directory /.crossbar already exists - SKIPPING
Feb 06 09:41:26 localhost crossbar[513]: File /README.md already exists - SKIPPING
Feb 06 09:41:26 localhost crossbar[513]: File /web/README.md already exists - SKIPPING
Feb 06 09:41:26 localhost crossbar[513]: File /.crossbar/config.json already exists - SKIPPING
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8126] device (end0): carrier: link connected
Feb 06 09:41:26 localhost kernel: fec 30be0000.ethernet end0: Link is Up - 1Gbps/Full - flow control off
Feb 06 09:41:26 localhost kernel: IPv6: ADDRCONF(NETDEV_CHANGE): end0: link becomes ready
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8140] device (end0): state change: unavailable -> disconnected (reason 'carrier-changed', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8167] policy: auto-activating connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8190] device (end0): Activation: starting connection 'Wired connection 1' (ba760d92-55bd-3066-b8e9-938b6ea4b551)
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8196] device (end0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8209] manager: NetworkManager state is now CONNECTING
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8244] device (end0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8279] device (end0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.8308] dhcp4 (end0): activation: beginning transaction (timeout in 45 seconds)
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9121] dhcp4 (end0): state changed unknown -> bound, address=134.86.254.71
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9165] device (end0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9288] device (end0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9299] device (end0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9322] manager: NetworkManager state is now CONNECTED_LOCAL
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9359] manager: NetworkManager state is now CONNECTED_SITE
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9364] policy: set 'Wired connection 1' (end0) as default for IPv4 routing and DNS
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9573] device (end0): Activation: successful, device activated.
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9617] manager: NetworkManager state is now CONNECTED_GLOBAL
Feb 06 09:41:26 localhost NetworkManager[463]: <info>  [1675676486.9711] manager: startup complete
Feb 06 09:41:26 localhost systemd[1]: Finished Network Manager Wait Online.
Feb 06 09:41:26 localhost systemd[1]: Reached target Network is Online.
Feb 06 09:41:26 localhost systemd[1]: Starting Docker Application Container Engine...
Feb 06 09:41:27 localhost NetworkManager[463]: <info>  [1675676487.0031] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 09:41:27 localhost.localdomain systemd-hostnamed[538]: Hostname set to <localhost.localdomain> (transient)
Feb 06 09:41:27 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 09:41:27 localhost.localdomain ntpd[721]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 09:41:27 localhost.localdomain ntpd[721]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 09:41:27 localhost.localdomain ntpd[721]: ----------------------------------------------------
Feb 06 09:41:27 localhost.localdomain ntpd[721]: ntp-4 is maintained by Network Time Foundation,
Feb 06 09:41:27 localhost.localdomain ntpd[721]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 09:41:27 localhost.localdomain ntpd[721]: corporation.  Support and training for ntp-4 are
Feb 06 09:41:27 localhost.localdomain ntpd[721]: available at https://www.nwtime.org/support
Feb 06 09:41:27 localhost.localdomain ntpd[721]: ----------------------------------------------------
Feb 06 09:41:27 localhost.localdomain ntpd[740]: proto: precision = 0.125 usec (-23)
Feb 06 09:41:27 localhost.localdomain ntpd[740]: basedate set to 2020-09-11
Feb 06 09:41:27 localhost.localdomain ntpd[740]: gps base set to 2020-09-13 (week 2123)
Feb 06 09:41:27 localhost.localdomain ntpd[740]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 09:41:27 localhost.localdomain ntpd[740]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listen normally on 4 lo [::1]:123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 09:41:27 localhost.localdomain ntpd[740]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 09:41:27 localhost.localdomain ntpd[740]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 09:41:27 localhost.localdomain ntpd[740]: Listening on routing socket on fd #21 for interface updates
Feb 06 09:41:27 localhost.localdomain ntpd[740]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:27 localhost.localdomain ntpd[740]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:27 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 09:41:27 localhost.localdomain ntpd[740]: ntpd exiting on signal 15 (Terminated)
Feb 06 09:41:27 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 09:41:27 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 09:41:27 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 09:41:27 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 09:41:27 localhost.localdomain ntpd[747]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 09:41:27 localhost.localdomain ntpd[747]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -c /run/ntp.conf.dhcp -u 102:108
Feb 06 09:41:27 localhost.localdomain ntpd[747]: ----------------------------------------------------
Feb 06 09:41:27 localhost.localdomain ntpd[747]: ntp-4 is maintained by Network Time Foundation,
Feb 06 09:41:27 localhost.localdomain ntpd[747]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 09:41:27 localhost.localdomain ntpd[747]: corporation.  Support and training for ntp-4 are
Feb 06 09:41:27 localhost.localdomain ntpd[747]: available at https://www.nwtime.org/support
Feb 06 09:41:27 localhost.localdomain ntpd[747]: ----------------------------------------------------
Feb 06 09:41:27 localhost.localdomain ntpd[753]: proto: precision = 0.125 usec (-23)
Feb 06 09:41:27 localhost.localdomain ntpd[753]: basedate set to 2020-09-11
Feb 06 09:41:27 localhost.localdomain ntpd[753]: gps base set to 2020-09-13 (week 2123)
Feb 06 09:41:27 localhost.localdomain ntpd[753]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 09:41:27 localhost.localdomain ntpd[753]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listen normally on 4 lo [::1]:123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: bind(21) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 09:41:27 localhost.localdomain ntpd[753]: unable to create socket on end0 (5) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 09:41:27 localhost.localdomain ntpd[753]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 09:41:27 localhost.localdomain ntpd[753]: Listening on routing socket on fd #21 for interface updates
Feb 06 09:41:27 localhost.localdomain ntpd[753]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:27 localhost.localdomain ntpd[753]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:27 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 09:41:27 localhost.localdomain crossbar[513]: Initializing node in directory '/'
Feb 06 09:41:27 localhost.localdomain crossbar[513]: Using template from '/usr/lib/python3/dist-packages/crossbar/node/templates/default'
Feb 06 09:41:27 localhost.localdomain crossbar[513]: Node key files exist and are valid. Node public key is 0x4e11fad1afb274d91bf345271e5583001f0a81c6c87190238e95b19111494c5a
Feb 06 09:41:27 localhost.localdomain crossbar[513]: Node key loaded from /.crossbar/key.priv
Feb 06 09:41:27 localhost.localdomain crossbar[513]: Application template initialized
Feb 06 09:41:27 localhost.localdomain crossbar[513]: To start your node, run 'crossbar start --cbdir /.crossbar'
Feb 06 09:41:27 localhost.localdomain systemd[1]: Started Crossbar.io service.
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.030635272Z" level=info msg="Starting up"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.040935984Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.041105234Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.041205233Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.041261108Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.059578041Z" level=info msg="parsed scheme: \"unix\"" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.059712916Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.059801790Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock  <nil> 0 <nil>}] <nil> <nil>}" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.059913790Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.231386538Z" level=warning msg="Usage of loopback devices is strongly discouraged for production use. Please use `--storage-opt dm.thinpooldev` or use `man dockerd` to refer to dm.thinpooldev section." storage-driver=devicemapper
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.314354485Z" level=warning msg="Base device already exists and has filesystem ext4 on it. User specified filesystem  will be ignored." storage-driver=devicemapper
Feb 06 09:41:28 localhost.localdomain ntpd[753]: bind(24) AF_INET6 fe80::7e63:9923:2c77:e358%2#123 flags 0x11 failed: Cannot assign requested address
Feb 06 09:41:28 localhost.localdomain ntpd[753]: unable to create socket on end0 (6) for fe80::7e63:9923:2c77:e358%2#123
Feb 06 09:41:28 localhost.localdomain ntpd[753]: failed to init interface for address fe80::7e63:9923:2c77:e358%2
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.359670319Z" level=info msg="[graphdriver] using prior storage driver: devicemapper"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.359849568Z" level=warning msg="[graphdriver] WARNING: the devicemapper storage-driver is deprecated, and will be removed in a future release"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.381675238Z" level=warning msg="Your kernel does not support cgroup blkio weight"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.382264861Z" level=warning msg="Your kernel does not support cgroup blkio weight_device"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.382841234Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_bps_device"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.383278232Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_bps_device"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.383742481Z" level=warning msg="Your kernel does not support cgroup blkio throttle.read_iops_device"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.384206229Z" level=warning msg="Your kernel does not support cgroup blkio throttle.write_iops_device"
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.385408600Z" level=info msg="Loading containers: start."
Feb 06 09:41:28 localhost.localdomain kernel: bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
Feb 06 09:41:28 localhost.localdomain kernel: Bridge firewalling registered
Feb 06 09:41:28 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:28.699030203Z" level=warning msg="Could not load necessary modules for IPSEC rules: protocol not supported"
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.7380] manager: (docker0): new Bridge device (/org/freedesktop/NetworkManager/Devices/3)
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.7962] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9292] device (docker0): state change: unmanaged -> unavailable (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9459] device (docker0): state change: unavailable -> disconnected (reason 'connection-assumed', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9530] device (docker0): Activation: starting connection 'docker0' (77178455-784f-42fe-82ed-5cd593a4ec25)
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9551] device (docker0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9602] device (docker0): state change: prepare -> config (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9633] device (docker0): state change: config -> ip-config (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9656] device (docker0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9748] device (docker0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9759] device (docker0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'external')
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9835] device (docker0): Activation: successful, device activated.
Feb 06 09:41:28 localhost.localdomain NetworkManager[463]: <info>  [1675676488.9872] policy: set-hostname: set hostname to 'localhost.localdomain' (no hostname found)
Feb 06 09:41:29 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:29.092892887Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip can be used to set a preferred IP address"
Feb 06 09:41:29 localhost.localdomain systemd[1]: Stopping Network Time Service...
Feb 06 09:41:29 localhost.localdomain ntpd[753]: ntpd exiting on signal 15 (Terminated)
Feb 06 09:41:29 localhost.localdomain ntpd[753]: 134.86.61.33 local addr 134.86.254.71 -> <null>
Feb 06 09:41:29 localhost.localdomain ntpd[753]: 137.202.187.89 local addr 134.86.254.71 -> <null>
Feb 06 09:41:29 localhost.localdomain systemd[1]: ntp.service: Deactivated successfully.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Stopped Network Time Service.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Starting Network Time Service...
Feb 06 09:41:29 localhost.localdomain ntpd[897]: ntpd 4.2.8p15@1.3728-o Wed Sep 23 11:46:38 UTC 2020 (1): Starting
Feb 06 09:41:29 localhost.localdomain ntpd[897]: Command line: /usr/sbin/ntpd -p /var/run/ntpd.pid -g -u 102:108
Feb 06 09:41:29 localhost.localdomain ntpd[897]: ----------------------------------------------------
Feb 06 09:41:29 localhost.localdomain ntpd[897]: ntp-4 is maintained by Network Time Foundation,
Feb 06 09:41:29 localhost.localdomain ntpd[897]: Inc. (NTF), a non-profit 501(c)(3) public-benefit
Feb 06 09:41:29 localhost.localdomain ntpd[897]: corporation.  Support and training for ntp-4 are
Feb 06 09:41:29 localhost.localdomain ntpd[897]: available at https://www.nwtime.org/support
Feb 06 09:41:29 localhost.localdomain ntpd[897]: ----------------------------------------------------
Feb 06 09:41:29 localhost.localdomain ntpd[912]: proto: precision = 0.125 usec (-23)
Feb 06 09:41:29 localhost.localdomain ntpd[912]: basedate set to 2020-09-11
Feb 06 09:41:29 localhost.localdomain ntpd[912]: gps base set to 2020-09-13 (week 2123)
Feb 06 09:41:29 localhost.localdomain ntpd[912]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): good hash signature
Feb 06 09:41:29 localhost.localdomain ntpd[912]: leapsecond file ('/usr/share/zoneinfo/leap-seconds.list'): loaded, expire=2023-06-28T00:00:00Z last=2017-01-01T00:00:00Z ofs=37
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen and drop on 0 v6wildcard [::]:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen and drop on 1 v4wildcard 0.0.0.0:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen normally on 2 lo 127.0.0.1:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen normally on 3 end0 134.86.254.71:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen normally on 4 lo [::1]:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listen normally on 5 end0 [fe80::7e63:9923:2c77:e358%2]:123
Feb 06 09:41:29 localhost.localdomain ntpd[912]: Listening on routing socket on fd #22 for interface updates
Feb 06 09:41:29 localhost.localdomain ntpd[912]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:29 localhost.localdomain ntpd[912]: kernel reports TIME_ERROR: 0x41: Clock Unsynchronized
Feb 06 09:41:29 localhost.localdomain systemd[1]: Started Network Time Service.
Feb 06 09:41:29 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:29.319172310Z" level=info msg="Loading containers: done."
Feb 06 09:41:29 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:29.462713910Z" level=info msg="Docker daemon" commit=363e9a8 graphdriver(s)=devicemapper version=20.10.5+dfsg1
Feb 06 09:41:29 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:29.463695406Z" level=info msg="Daemon has completed initialization"
Feb 06 09:41:29 localhost.localdomain systemd[1]: Started Docker Application Container Engine.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Reached target Multi-User System.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Reached target Graphical Interface.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Reached target MEL OS Boot Complete.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Starting Record Runlevel Change in UTMP...
Feb 06 09:41:29 localhost.localdomain dockerd[720]: time="2023-02-06T09:41:29.578120113Z" level=info msg="API listen on /var/run/docker.sock"
Feb 06 09:41:29 localhost.localdomain systemd[1]: systemd-update-utmp-runlevel.service: Deactivated successfully.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Finished Record Runlevel Change in UTMP.
Feb 06 09:41:29 localhost.localdomain systemd[1]: Startup finished in 4.140s (kernel) + 11.375s (userspace) = 15.516s.
Feb 06 09:41:33 localhost.localdomain systemd[1]: Stopping User Manager for UID 500...
Feb 06 09:41:33 localhost.localdomain systemd-journald[356]: Data hash table of /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal has a fill level at 75.1 (2734 of 3640 items, 2097152 file size, 767 bytes per hash table item), suggesting rotation.
Feb 06 09:41:33 localhost.localdomain systemd-journald[356]: /run/log/journal/dbe7d9459e724ab68a0585229f903277/system.journal: Journal header limits reached or header out-of-date, rotating.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Activating special unit Exit the Session...
Feb 06 09:41:33 localhost.localdomain systemd[552]: Stopped target Main User Target.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Stopped target Basic System.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Stopped target Paths.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Stopped target Sockets.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Stopped target Timers.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed D-Bus User Message Bus Socket.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed GnuPG network certificate management daemon.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 09:41:33 localhost.localdomain systemd[552]: Closed GnuPG cryptographic agent and passphrase cache.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Removed slice User Application Slice.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Reached target Shutdown.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Finished Exit the Session.
Feb 06 09:41:33 localhost.localdomain systemd[552]: Reached target Exit the Session.
Feb 06 09:41:33 localhost.localdomain systemd[1]: user@500.service: Deactivated successfully.
Feb 06 09:41:33 localhost.localdomain ntpd[912]: Soliciting pool server 208.67.72.43
Feb 06 09:41:33 localhost.localdomain systemd[1]: Stopped User Manager for UID 500.
Feb 06 09:41:33 localhost.localdomain systemd[1]: Stopping User Runtime Directory /run/user/500...
Feb 06 09:41:33 localhost.localdomain systemd[1]: run-user-500.mount: Deactivated successfully.
Feb 06 09:41:33 localhost.localdomain systemd[1]: user-runtime-dir@500.service: Deactivated successfully.
Feb 06 09:41:33 localhost.localdomain systemd[1]: Stopped User Runtime Directory /run/user/500.
Feb 06 09:41:33 localhost.localdomain systemd[1]: Removed slice User Slice of UID 500.
Feb 06 09:41:34 localhost.localdomain ntpd[912]: Soliciting pool server 198.137.202.32
Feb 06 09:41:34 localhost.localdomain ntpd[912]: Soliciting pool server 157.245.141.244
Feb 06 09:41:34 localhost.localdomain ntpd[912]: Soliciting pool server 65.19.142.137
Feb 06 09:41:34 localhost.localdomain ntpd[912]: Soliciting pool server 65.100.46.164
Feb 06 09:41:35 localhost.localdomain ntpd[912]: Soliciting pool server 129.146.193.200
Feb 06 09:41:35 localhost.localdomain ntpd[912]: Soliciting pool server 204.93.207.11
Feb 06 09:41:35 localhost.localdomain ntpd[912]: Soliciting pool server 208.67.75.242
Feb 06 09:41:35 localhost.localdomain ntpd[912]: Soliciting pool server 96.245.170.99
Feb 06 09:41:36 localhost.localdomain ntpd[912]: Soliciting pool server 104.131.155.175
Feb 06 09:41:36 localhost.localdomain ntpd[912]: Soliciting pool server 192.24.67.138
Feb 06 09:41:36 localhost.localdomain ntpd[912]: Soliciting pool server 98.191.213.7
Feb 06 09:41:36 localhost.localdomain ntpd[912]: Soliciting pool server 216.229.4.69
Feb 06 09:41:37 localhost.localdomain ntpd[912]: Soliciting pool server 108.61.73.243
Feb 06 09:41:37 localhost.localdomain ntpd[912]: Soliciting pool server 204.93.207.12
Feb 06 09:41:37 localhost.localdomain ntpd[912]: Soliciting pool server 104.236.116.147
Feb 06 09:41:38 localhost.localdomain ntpd[912]: Soliciting pool server 2620:138:5000:0:5054:ff:fe89:6673
Feb 06 09:41:39 localhost.localdomain systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
Feb 06 09:41:40 localhost.localdomain ntpd[912]: receive: Unexpected origin timestamp 0xe78b49d5.3638c94a does not match aorg 0000000000.00000000 from server@104.131.155.175 xmt 0xe78b49d4.70c7e032
Feb 06 09:41:49 localhost.localdomain systemd[1]: systemd-fsckd.service: Deactivated successfully.
Feb 06 09:41:58 localhost.localdomain systemd[1]: systemd-hostnamed.service: Deactivated successfully.
Feb 06 09:42:20 localhost.localdomain systemd[1]: Starting Estimate the current entropy quality available to random/urandom...
Feb 06 09:42:20 localhost.localdomain sh[962]: Entropy = 7.999844 bits per byte.
Feb 06 09:42:20 localhost.localdomain sh[962]: Optimum compression would reduce the size
Feb 06 09:42:20 localhost.localdomain sh[962]: of this 1048576 byte file by 0 percent.
Feb 06 09:42:20 localhost.localdomain sh[962]: Chi square distribution for 1048576 samples is 226.61, and randomly
Feb 06 09:42:20 localhost.localdomain sh[962]: would exceed this value 89.93 percent of the times.
Feb 06 09:42:20 localhost.localdomain sh[962]: Arithmetic mean value of data bytes is 127.4941 (127.5 = random).
Feb 06 09:42:20 localhost.localdomain sh[962]: Monte Carlo value for Pi is 3.143749785 (error 0.07 percent).
Feb 06 09:42:20 localhost.localdomain sh[962]: Serial correlation coefficient is 0.000592 (totally uncorrelated = 0.0).
Feb 06 09:42:20 localhost.localdomain systemd[1]: ent.service: Deactivated successfully.
Feb 06 09:42:20 localhost.localdomain systemd[1]: Finished Estimate the current entropy quality available to random/urandom.
Feb 06 09:44:06 localhost.localdomain sshd[963]: Accepted publickey for root from 134.86.254.7 port 45090 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:44:06 localhost.localdomain sshd[963]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:44:06 localhost.localdomain systemd[1]: Created slice User Slice of UID 0.
Feb 06 09:44:06 localhost.localdomain systemd[1]: Starting User Runtime Directory /run/user/0...
Feb 06 09:44:06 localhost.localdomain systemd-logind[471]: New session 3 of user root.
Feb 06 09:44:06 localhost.localdomain systemd[1]: Finished User Runtime Directory /run/user/0.
Feb 06 09:44:06 localhost.localdomain systemd[1]: Starting User Manager for UID 0...
Feb 06 09:44:06 localhost.localdomain systemd[966]: pam_unix(systemd-user:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:44:07 localhost.localdomain systemd[966]: Queued start job for default target Main User Target.
Feb 06 09:44:07 localhost.localdomain systemd[966]: cgroup compatibility translation between legacy and unified hierarchy settings activated. See cgroup-compat debug messages for details.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Created slice User Application Slice.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Reached target Paths.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Reached target Timers.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Starting D-Bus User Message Bus Socket...
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on GnuPG network certificate management daemon.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on GnuPG cryptographic agent and passphrase cache.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Listening on D-Bus User Message Bus Socket.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Reached target Sockets.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Reached target Basic System.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Reached target Main User Target.
Feb 06 09:44:07 localhost.localdomain systemd[966]: Startup finished in 487ms.
Feb 06 09:44:07 localhost.localdomain systemd[1]: Started User Manager for UID 0.
Feb 06 09:44:07 localhost.localdomain systemd[1]: Started Session 3 of User root.
Feb 06 09:44:15 localhost.localdomain sshd[963]: Received disconnect from 134.86.254.7 port 45090:11: disconnected by user
Feb 06 09:44:15 localhost.localdomain sshd[963]: Disconnected from user root 134.86.254.7 port 45090
Feb 06 09:44:15 localhost.localdomain sshd[963]: pam_unix(sshd:session): session closed for user root
Feb 06 09:44:15 localhost.localdomain systemd[1]: session-3.scope: Deactivated successfully.
Feb 06 09:44:15 localhost.localdomain systemd-logind[471]: Session 3 logged out. Waiting for processes to exit.
Feb 06 09:44:15 localhost.localdomain systemd-logind[471]: Removed session 3.
Feb 06 09:44:15 localhost.localdomain sshd[992]: Accepted publickey for root from 134.86.254.7 port 50838 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:44:15 localhost.localdomain sshd[992]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:44:15 localhost.localdomain systemd-logind[471]: New session 5 of user root.
Feb 06 09:44:15 localhost.localdomain systemd[1]: Started Session 5 of User root.
Feb 06 09:45:15 localhost.localdomain sshd[992]: Received disconnect from 134.86.254.7 port 50838:11: disconnected by user
Feb 06 09:45:15 localhost.localdomain sshd[992]: Disconnected from user root 134.86.254.7 port 50838
Feb 06 09:45:15 localhost.localdomain sshd[992]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:15 localhost.localdomain systemd[1]: session-5.scope: Deactivated successfully.
Feb 06 09:45:15 localhost.localdomain systemd-logind[471]: Session 5 logged out. Waiting for processes to exit.
Feb 06 09:45:15 localhost.localdomain systemd-logind[471]: Removed session 5.
Feb 06 09:45:16 localhost.localdomain sshd[1005]: error: kex_exchange_identification: Connection closed by remote host
Feb 06 09:45:16 localhost.localdomain sshd[1005]: Connection closed by 134.86.254.7 port 47506
Feb 06 09:45:17 localhost.localdomain sshd[1006]: Connection closed by authenticating user root 134.86.254.7 port 47522 [preauth]
Feb 06 09:45:17 localhost.localdomain sshd[1008]: Accepted publickey for root from 134.86.254.7 port 47536 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:17 localhost.localdomain sshd[1008]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: New session 6 of user root.
Feb 06 09:45:17 localhost.localdomain systemd[1]: Started Session 6 of User root.
Feb 06 09:45:17 localhost.localdomain sshd[1008]: Received disconnect from 134.86.254.7 port 47536:11: disconnected by user
Feb 06 09:45:17 localhost.localdomain sshd[1008]: Disconnected from user root 134.86.254.7 port 47536
Feb 06 09:45:17 localhost.localdomain sshd[1008]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:17 localhost.localdomain systemd[1]: session-6.scope: Deactivated successfully.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Session 6 logged out. Waiting for processes to exit.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Removed session 6.
Feb 06 09:45:17 localhost.localdomain sshd[1019]: Accepted publickey for root from 134.86.254.7 port 47538 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:17 localhost.localdomain sshd[1019]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: New session 7 of user root.
Feb 06 09:45:17 localhost.localdomain systemd[1]: Started Session 7 of User root.
Feb 06 09:45:17 localhost.localdomain sshd[1019]: Received disconnect from 134.86.254.7 port 47538:11: disconnected by user
Feb 06 09:45:17 localhost.localdomain sshd[1019]: Disconnected from user root 134.86.254.7 port 47538
Feb 06 09:45:17 localhost.localdomain sshd[1019]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:17 localhost.localdomain systemd[1]: session-7.scope: Deactivated successfully.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Session 7 logged out. Waiting for processes to exit.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Removed session 7.
Feb 06 09:45:17 localhost.localdomain sshd[1032]: Accepted publickey for root from 134.86.254.7 port 47548 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:17 localhost.localdomain sshd[1032]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: New session 8 of user root.
Feb 06 09:45:17 localhost.localdomain systemd[1]: Started Session 8 of User root.
Feb 06 09:45:17 localhost.localdomain sshd[1032]: Received disconnect from 134.86.254.7 port 47548:11: disconnected by user
Feb 06 09:45:17 localhost.localdomain sshd[1032]: Disconnected from user root 134.86.254.7 port 47548
Feb 06 09:45:17 localhost.localdomain sshd[1032]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:17 localhost.localdomain systemd[1]: session-8.scope: Deactivated successfully.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Session 8 logged out. Waiting for processes to exit.
Feb 06 09:45:17 localhost.localdomain systemd-logind[471]: Removed session 8.
Feb 06 09:45:18 localhost.localdomain sshd[1045]: Accepted publickey for root from 134.86.254.7 port 47560 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:18 localhost.localdomain sshd[1045]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: New session 9 of user root.
Feb 06 09:45:18 localhost.localdomain systemd[1]: Started Session 9 of User root.
Feb 06 09:45:18 localhost.localdomain sshd[1045]: Received disconnect from 134.86.254.7 port 47560:11: disconnected by user
Feb 06 09:45:18 localhost.localdomain sshd[1045]: Disconnected from user root 134.86.254.7 port 47560
Feb 06 09:45:18 localhost.localdomain sshd[1045]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:18 localhost.localdomain systemd[1]: session-9.scope: Deactivated successfully.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Session 9 logged out. Waiting for processes to exit.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Removed session 9.
Feb 06 09:45:18 localhost.localdomain sshd[1058]: Accepted publickey for root from 134.86.254.7 port 47570 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:18 localhost.localdomain sshd[1058]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: New session 10 of user root.
Feb 06 09:45:18 localhost.localdomain systemd[1]: Started Session 10 of User root.
Feb 06 09:45:18 localhost.localdomain sshd[1058]: Received disconnect from 134.86.254.7 port 47570:11: disconnected by user
Feb 06 09:45:18 localhost.localdomain sshd[1058]: Disconnected from user root 134.86.254.7 port 47570
Feb 06 09:45:18 localhost.localdomain sshd[1058]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:18 localhost.localdomain systemd[1]: session-10.scope: Deactivated successfully.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Session 10 logged out. Waiting for processes to exit.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Removed session 10.
Feb 06 09:45:18 localhost.localdomain sshd[1069]: Accepted publickey for root from 134.86.254.7 port 47574 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:18 localhost.localdomain sshd[1069]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: New session 11 of user root.
Feb 06 09:45:18 localhost.localdomain systemd[1]: Started Session 11 of User root.
Feb 06 09:45:18 localhost.localdomain sshd[1069]: Received disconnect from 134.86.254.7 port 47574:11: disconnected by user
Feb 06 09:45:18 localhost.localdomain sshd[1069]: Disconnected from user root 134.86.254.7 port 47574
Feb 06 09:45:18 localhost.localdomain sshd[1069]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:18 localhost.localdomain systemd[1]: session-11.scope: Deactivated successfully.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Session 11 logged out. Waiting for processes to exit.
Feb 06 09:45:18 localhost.localdomain systemd-logind[471]: Removed session 11.
Feb 06 09:45:20 localhost.localdomain sshd[1080]: Accepted publickey for root from 134.86.254.7 port 47578 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:20 localhost.localdomain sshd[1080]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: New session 12 of user root.
Feb 06 09:45:20 localhost.localdomain systemd[1]: Started Session 12 of User root.
Feb 06 09:45:20 localhost.localdomain sshd[1080]: Received disconnect from 134.86.254.7 port 47578:11: disconnected by user
Feb 06 09:45:20 localhost.localdomain sshd[1080]: Disconnected from user root 134.86.254.7 port 47578
Feb 06 09:45:20 localhost.localdomain sshd[1080]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:20 localhost.localdomain systemd[1]: session-12.scope: Deactivated successfully.
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: Session 12 logged out. Waiting for processes to exit.
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: Removed session 12.
Feb 06 09:45:20 localhost.localdomain sshd[1093]: Accepted publickey for root from 134.86.254.7 port 47580 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:20 localhost.localdomain sshd[1093]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: New session 13 of user root.
Feb 06 09:45:20 localhost.localdomain systemd[1]: Started Session 13 of User root.
Feb 06 09:45:20 localhost.localdomain sshd[1093]: Received disconnect from 134.86.254.7 port 47580:11: disconnected by user
Feb 06 09:45:20 localhost.localdomain sshd[1093]: Disconnected from user root 134.86.254.7 port 47580
Feb 06 09:45:20 localhost.localdomain sshd[1093]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:20 localhost.localdomain systemd[1]: session-13.scope: Deactivated successfully.
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: Session 13 logged out. Waiting for processes to exit.
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: Removed session 13.
Feb 06 09:45:20 localhost.localdomain sshd[1104]: Accepted publickey for root from 134.86.254.7 port 47588 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:20 localhost.localdomain sshd[1104]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:20 localhost.localdomain systemd-logind[471]: New session 14 of user root.
Feb 06 09:45:20 localhost.localdomain systemd[1]: Started Session 14 of User root.
Feb 06 09:45:23 localhost.localdomain sshd[1104]: Received disconnect from 134.86.254.7 port 47588:11: disconnected by user
Feb 06 09:45:23 localhost.localdomain sshd[1104]: Disconnected from user root 134.86.254.7 port 47588
Feb 06 09:45:23 localhost.localdomain sshd[1104]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:23 localhost.localdomain systemd[1]: session-14.scope: Deactivated successfully.
Feb 06 09:45:23 localhost.localdomain systemd-logind[471]: Session 14 logged out. Waiting for processes to exit.
Feb 06 09:45:23 localhost.localdomain systemd-logind[471]: Removed session 14.
Feb 06 09:45:24 localhost.localdomain sshd[1115]: Accepted publickey for root from 134.86.254.7 port 58952 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:24 localhost.localdomain sshd[1115]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: New session 15 of user root.
Feb 06 09:45:24 localhost.localdomain systemd[1]: Started Session 15 of User root.
Feb 06 09:45:24 localhost.localdomain sshd[1115]: Received disconnect from 134.86.254.7 port 58952:11: disconnected by user
Feb 06 09:45:24 localhost.localdomain sshd[1115]: Disconnected from user root 134.86.254.7 port 58952
Feb 06 09:45:24 localhost.localdomain sshd[1115]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:24 localhost.localdomain systemd[1]: session-15.scope: Deactivated successfully.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Session 15 logged out. Waiting for processes to exit.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Removed session 15.
Feb 06 09:45:24 localhost.localdomain sshd[1127]: Accepted publickey for root from 134.86.254.7 port 58966 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:24 localhost.localdomain sshd[1127]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: New session 16 of user root.
Feb 06 09:45:24 localhost.localdomain systemd[1]: Started Session 16 of User root.
Feb 06 09:45:24 localhost.localdomain sshd[1127]: Received disconnect from 134.86.254.7 port 58966:11: disconnected by user
Feb 06 09:45:24 localhost.localdomain sshd[1127]: Disconnected from user root 134.86.254.7 port 58966
Feb 06 09:45:24 localhost.localdomain sshd[1127]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:24 localhost.localdomain systemd[1]: session-16.scope: Deactivated successfully.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Session 16 logged out. Waiting for processes to exit.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Removed session 16.
Feb 06 09:45:24 localhost.localdomain sshd[1138]: Accepted publickey for root from 134.86.254.7 port 58980 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:24 localhost.localdomain sshd[1138]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: New session 17 of user root.
Feb 06 09:45:24 localhost.localdomain systemd[1]: Started Session 17 of User root.
Feb 06 09:45:24 localhost.localdomain sshd[1138]: Received disconnect from 134.86.254.7 port 58980:11: disconnected by user
Feb 06 09:45:24 localhost.localdomain sshd[1138]: Disconnected from user root 134.86.254.7 port 58980
Feb 06 09:45:24 localhost.localdomain sshd[1138]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:24 localhost.localdomain systemd[1]: session-17.scope: Deactivated successfully.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Session 17 logged out. Waiting for processes to exit.
Feb 06 09:45:24 localhost.localdomain systemd-logind[471]: Removed session 17.
Feb 06 09:45:24 localhost.localdomain sshd[1150]: Accepted publickey for root from 134.86.254.7 port 58996 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:25 localhost.localdomain sshd[1150]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: New session 18 of user root.
Feb 06 09:45:25 localhost.localdomain systemd[1]: Started Session 18 of User root.
Feb 06 09:45:25 localhost.localdomain sshd[1150]: Received disconnect from 134.86.254.7 port 58996:11: disconnected by user
Feb 06 09:45:25 localhost.localdomain sshd[1150]: Disconnected from user root 134.86.254.7 port 58996
Feb 06 09:45:25 localhost.localdomain sshd[1150]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:25 localhost.localdomain systemd[1]: session-18.scope: Deactivated successfully.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Session 18 logged out. Waiting for processes to exit.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Removed session 18.
Feb 06 09:45:25 localhost.localdomain sshd[1161]: Accepted publickey for root from 134.86.254.7 port 59000 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:25 localhost.localdomain sshd[1161]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: New session 19 of user root.
Feb 06 09:45:25 localhost.localdomain systemd[1]: Started Session 19 of User root.
Feb 06 09:45:25 localhost.localdomain sshd[1161]: Received disconnect from 134.86.254.7 port 59000:11: disconnected by user
Feb 06 09:45:25 localhost.localdomain sshd[1161]: Disconnected from user root 134.86.254.7 port 59000
Feb 06 09:45:25 localhost.localdomain sshd[1161]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:25 localhost.localdomain systemd[1]: session-19.scope: Deactivated successfully.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Session 19 logged out. Waiting for processes to exit.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Removed session 19.
Feb 06 09:45:25 localhost.localdomain sshd[1173]: Accepted publickey for root from 134.86.254.7 port 59012 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:25 localhost.localdomain sshd[1173]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: New session 20 of user root.
Feb 06 09:45:25 localhost.localdomain systemd[1]: Started Session 20 of User root.
Feb 06 09:45:25 localhost.localdomain sshd[1173]: Received disconnect from 134.86.254.7 port 59012:11: disconnected by user
Feb 06 09:45:25 localhost.localdomain sshd[1173]: Disconnected from user root 134.86.254.7 port 59012
Feb 06 09:45:25 localhost.localdomain sshd[1173]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:25 localhost.localdomain systemd[1]: session-20.scope: Deactivated successfully.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Session 20 logged out. Waiting for processes to exit.
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: Removed session 20.
Feb 06 09:45:25 localhost.localdomain sshd[1184]: Accepted publickey for root from 134.86.254.7 port 59024 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:25 localhost.localdomain sshd[1184]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:25 localhost.localdomain systemd-logind[471]: New session 21 of user root.
Feb 06 09:45:25 localhost.localdomain systemd[1]: Started Session 21 of User root.
Feb 06 09:45:26 localhost.localdomain sshd[1184]: Received disconnect from 134.86.254.7 port 59024:11: disconnected by user
Feb 06 09:45:26 localhost.localdomain sshd[1184]: Disconnected from user root 134.86.254.7 port 59024
Feb 06 09:45:26 localhost.localdomain sshd[1184]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:26 localhost.localdomain systemd[1]: session-21.scope: Deactivated successfully.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Session 21 logged out. Waiting for processes to exit.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Removed session 21.
Feb 06 09:45:26 localhost.localdomain sshd[1197]: Accepted publickey for root from 134.86.254.7 port 59038 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:26 localhost.localdomain sshd[1197]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: New session 22 of user root.
Feb 06 09:45:26 localhost.localdomain systemd[1]: Started Session 22 of User root.
Feb 06 09:45:26 localhost.localdomain sshd[1197]: Received disconnect from 134.86.254.7 port 59038:11: disconnected by user
Feb 06 09:45:26 localhost.localdomain sshd[1197]: Disconnected from user root 134.86.254.7 port 59038
Feb 06 09:45:26 localhost.localdomain sshd[1197]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:26 localhost.localdomain systemd[1]: session-22.scope: Deactivated successfully.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Session 22 logged out. Waiting for processes to exit.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Removed session 22.
Feb 06 09:45:26 localhost.localdomain sshd[1209]: Accepted publickey for root from 134.86.254.7 port 59046 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:26 localhost.localdomain sshd[1209]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: New session 23 of user root.
Feb 06 09:45:26 localhost.localdomain systemd[1]: Started Session 23 of User root.
Feb 06 09:45:26 localhost.localdomain sshd[1209]: Received disconnect from 134.86.254.7 port 59046:11: disconnected by user
Feb 06 09:45:26 localhost.localdomain sshd[1209]: Disconnected from user root 134.86.254.7 port 59046
Feb 06 09:45:26 localhost.localdomain sshd[1209]: pam_unix(sshd:session): session closed for user root
Feb 06 09:45:26 localhost.localdomain systemd[1]: session-23.scope: Deactivated successfully.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Session 23 logged out. Waiting for processes to exit.
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: Removed session 23.
Feb 06 09:45:26 localhost.localdomain sshd[1220]: Accepted publickey for root from 134.86.254.7 port 59048 ssh2: RSA SHA256:W+UAfMo/KjAKb2Av4Z4+MZ0KtSmjoAppGow3S09XNfI
Feb 06 09:45:26 localhost.localdomain sshd[1220]: pam_unix(sshd:session): session opened for user root(uid=0) by (uid=0)
Feb 06 09:45:26 localhost.localdomain systemd-logind[471]: New session 24 of user root.
Feb 06 09:45:26 localhost.localdomain systemd[1]: Started Session 24 of User root.
```

## Degraded Services 

```sh
● weston@industrial.service                                                                                         loaded failed failed    Weston Wayland Compositor (on tty7)
```

