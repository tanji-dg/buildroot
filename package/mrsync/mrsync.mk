################################################################################
#
# mrsync
#
################################################################################

MRSYNC_VERSION = 62a74aeb30a9ef2b8ca61e72d92519265180cda4
MRSYNC_SITE = $(call github,silpol,mrsync,$(MRSYNC_VERSION))
MRSYNC_DEPENDENCIES = rsync

define MRSYNC_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MRSYNC_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) bindir=$(TARGET_DIR)/usr/bin install
endef

$(eval $(generic-package))
