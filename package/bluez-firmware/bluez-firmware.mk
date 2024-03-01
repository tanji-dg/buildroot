###############################################################################
#
# bluez-firmware
#
################################################################################

BLUEZ_FIRMWARE_VERSION = ade2bae1aaaebede09abb8fb546f767a0e4c7804
BLUEZ_FIRMWARE_SITE = https://github.com/RPi-Distro/bluez-firmware
BLUEZ_FIRMWARE_SITE_METHOD = git
BLUEZ_FIRMWARE_LICENSE = PROPRIETARY
#BLUEZ_FIRMWARE_LICENSE_FILES = LICENCE.broadcom_bcm43xx
#BLUEZ_FIRMWARE_CONF_OPTS = --libdir=/lib

define BLUEZ_FIRMWARE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/broadcom/BCM-LEGAL.txt \
		$(TARGET_DIR)/lib/firmware/BCM-LEGAL.txt
	$(INSTALL) -D -m 0644 $(@D)/broadcom/BCM43430A1.hcd \
		$(TARGET_DIR)/lib/firmware/BCM43430A1.hcd
	$(INSTALL) -D -m 0644 $(@D)/broadcom/BCM4345C0.hcd \
		$(TARGET_DIR)/lib/firmware/BCM4345C0.hcd
endef


$(eval $(generic-package))
