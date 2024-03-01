################################################################################
#
# rx8130ce
#
################################################################################

RX8130CE_VERSION = 1.0
RX8130CE_SOURCE = rx8130_k3.8-v$(RX8130CE_VERSION).zip
RX8130CE_SITE = https://www5.epsondevice.com/ja/information/rtc/tools/driver/download
#RX8130CE_LICENSE =
#RX8130CE_LICENSE_FILES =
#RX8130CE_MODULE_MAKE_OPTS = CONFIG_RX8130CECE=m
#RX8130CE_EXTRACT_CMDS = unzip $(DL_DIR)/$(RX8130CE_SOURCE) -d $(@D)
RX8130CE_EXTRACT_CMDS = bsdtar xvf $(DL_DIR)/rx8130ce/$(RX8130CE_SOURCE) -C $(@D)
RX8130CE_MODULE_SUBDIRS = RX8130/RX8130

$(eval $(kernel-module))
$(eval $(generic-package))
