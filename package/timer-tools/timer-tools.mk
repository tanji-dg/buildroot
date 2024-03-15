################################################################################
#
# timer-tools
#
################################################################################

TIMER_TOOLS_VERSION = 44dd5358e042b8562deeec9488f62c78b9685ad8
TIMER_TOOLS_SITE = $(call github,smaeul,timer-tools,$(TIMER_TOOLS_VERSION))
TIMER_TOOLS_LICENSE = GPL-2.0
TIMER_TOOLS_LICENSE_FILES = COPYING
TIMER_TOOLS_MODULE_SUBDIRS = module
TIMER_TOOLS_MODULE_MAKE_OPTS = CONFIG_TIMER_TOOLS=m

define TIMER_TOOLS_BUILD_CMDS
    $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) V=1 all
endef

define TIMER_TOOLS_INSTALL_STAGING_CMDS
    echo TIMER_TOOLS_INSTALL_STAGING_CMDS
endef

define TIMER_TOOLS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/build/target/src/timer_test $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

