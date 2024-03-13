################################################################################
#
# python-wiringpi
#
################################################################################

PYTHON_WIRINGPI_VERSION = 6d3c9e704e60bac837aecec2c8db95b0cd0f57d0
PYTHON_WIRINGPI_SITE = https://github.com/WiringPi/WiringPi-Python.git
PYTHON_WIRINGPI_SITE_METHOD = git
PYTHON_WIRINGPI_SETUP_TYPE = setuptools
PYTHON_WIRINGPI_LICENSE = LGPL
PYTHON_WIRINGPI_LICENSE_FILES = LICENSE.txt
PYTHON_WIRINGPI_DEPENDENCIES = python3 host-swig
PYTHON_WIRINGPI_GIT_SUBMODULES = YES

$(eval $(python-package))
