################################################################################
#
# python-wiringpi
#
################################################################################

PYTHON_WIRINGPI_VERSION = 2.60.0
PYTHON_WIRINGPI_SOURCE = wiringpi-$(PYTHON_WIRINGPI_VERSION).tar.gz
PYTHON_WIRINGPI_SITE = https://files.pythonhosted.org/packages/67/cf/35854ec6c7f7285454e2204a18e977d935aefc99e2b2a14093832faab510
PYTHON_WIRINGPI_SETUP_TYPE = setuptools
PYTHON_WIRINGPI_LICENSE = LGPL
PYTHON_WIRINGPI_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
