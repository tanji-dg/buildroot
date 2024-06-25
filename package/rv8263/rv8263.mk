################################################################################
#
# rv8263
#
#################################################################################
#RV8263_VERSION = master
RV8263_VERSION = d4becb4b35efc9538ac4af661eeae9fb28506cab
RV8263_SITE = $(call github,tanji-dg,rv8263,$(RV8263_VERSION))
#RV8263_SITE = /home/htanji/proj/rv8263
#RV8263_SITE_METHOD = local

define RV8263_BUILD_CMDS
 	$(TARGET_MAKE_ENV) CC=$(TARGET_CC) $(MAKE) -C $(@D)
endef

define RV8263_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rtc_vl $(TARGET_DIR)/usr/bin/rtc_vl
endef

# This tells Buildroot that this is a generic package
$(eval $(generic-package))
