FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://boot_netargs.cmd.in"

do_compile_append() {
    if [ -f ${DEPLOYDIR}/boot.scr ]; then
        rm ${DEPLOYDIR}/boot.scr
    fi
    if [ -f ${WORKDIR}/boot.cmd ]; then
        rm ${WORKDIR}/boot.cmd
    fi
    
    sed -e 's/@@KERNEL_IMAGETYPE@@/${KERNEL_IMAGETYPE}/' \
        -e 's/@@KERNEL_BOOTCMD@@/${KERNEL_BOOTCMD}/' \
        "${WORKDIR}/boot_netargs.cmd.in" > "${WORKDIR}/boot.cmd"
    mkimage -A ${UBOOT_ARCH} -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr	
}
