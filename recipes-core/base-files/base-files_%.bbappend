FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://fstab \
"

do_install:append() {
    install -d ${D}/eoi_shared
    install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/
}

FILES_${PN} += " \
     /eoi_shared.img \
"