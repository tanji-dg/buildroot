################################################################################
#
# python-pybluez
#
################################################################################

PYTHON_PYBLUEZ_VERSION = 0.22
PYTHON_PYBLUEZ_SITE = $(call github,karulis,pybluez,$(PYTHON_PYBLUEZ_VERSION))
PYTHON_PYBLUEZ_SETUP_TYPE = setuptools

$(eval $(python-package))
