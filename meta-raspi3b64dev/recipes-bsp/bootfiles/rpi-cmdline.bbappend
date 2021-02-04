CMDLINE_ROOTFS = "root=/dev/nfs nfsroot=192.168.180.33:/home/eindemwort/projects/yocto/raspberrypi/rootfs,vers=4.1,proto=tcp rw rootfstype=ext4 rootwait"
CMDLINE_NETCONFIG = "ip=dhcp"

CMDLINE += "${CMDLINE_NETCONFIG}"

