################################################################################
#
# usbtop
#
################################################################################

USBTOP_VERSION = ad969d94a6cff2b2dd73cbefbcc59e6ddab2784a
USBTOP_SITE = $(call github,aguinet,usbtop,$(USBTOP_VERSION))

$(eval $(cmake-package))
