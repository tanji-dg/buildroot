################################################################################
#
# python-ioctl-opt
#
################################################################################

PYTHON_IOCTL_OPT_VERSION = 1.2
PYTHON_IOCTL_OPT_SITE = $(call github,vpelletier,python-ioctl-opt,$(PYTHON_IOCTL_OPT_VERSION))
PYTHON_IOCTL_OPT_SETUP_TYPE = setuptools

$(eval $(python-package))
