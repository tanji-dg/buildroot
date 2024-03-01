################################################################################
#
# python-hidraw
#
################################################################################

PYTHON_HIDRAW_VERSION = v1.2
PYTHON_HIDRAW_SITE = $(call github,vpelletier,python-hidraw,$(PYTHON_HIDRAW_VERSION))
PYTHON_HIDRAW_SETUP_TYPE = setuptools

$(eval $(python-package))
