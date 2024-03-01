################################################################################
#
# rpi-eepromutils
#
################################################################################

RPI_EEPROMUTILS_VERSION = 633f1b027228e2545f1ba53b63bb99e630ea6a7b
RPI_EEPROMUTILS_SITE = $(call github,raspberrypi,hats,$(RPI_EEPROMUTILS_VERSION))

define RPI_EEPROMUTILS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" -C $(@D)/eepromutils
endef

define RPI_EEPROMUTILS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/eepromutils/eepmake $(TARGET_DIR)/usr/bin/eepmake
	$(INSTALL) -m 0755 $(@D)/eepromutils/eepdump $(TARGET_DIR)/usr/bin/eepdump
	$(INSTALL) -m 0755 $(@D)/eepromutils/eepflash.sh $(TARGET_DIR)/usr/bin/eepflash
endef

$(eval $(generic-package))
