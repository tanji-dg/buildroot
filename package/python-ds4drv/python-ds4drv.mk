################################################################################
#
# python-ds4drv
#
################################################################################

PYTHON_DS4DRV_VERSION = v0.5.1
PYTHON_DS4DRV_SITE = $(call github,chrippa,ds4drv,$(PYTHON_DS4DRV_VERSION))
PYTHON_DS4DRV_SETUP_TYPE = setuptools

$(eval $(python-package))
