CMDLINE_ROOTFS = "root=/dev/nfs nfsroot=192.168.180.33:/fsrootfs,vers=4.1,proto=tcp rw rootfstype=ext4 rootwait"
CMDLINE_NETCONFIG = "ip=dhcp"

CMDLINE += "${CMDLINE_NETCONFIG}"

