FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += " \
     file://flash_t234_qspi_sdmmc_custom.xml \
"

do_preconfigure:append() {
     mkdir -p ${S}/bootloader/${NVIDIA_BOARD}/cfg/
     cp ${WORKDIR}/flash_t234_qspi_sdmmc_custom.xml ${S}/bootloader/${NVIDIA_BOARD}/cfg/
}
