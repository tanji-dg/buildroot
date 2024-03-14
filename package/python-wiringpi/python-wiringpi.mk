################################################################################
#
# python-wiringpi
#
################################################################################

#PYTHON_WIRINGPI_VERSION = master
#PYTHON_WIRINGPI_SITE = https://github.com/WiringPi/WiringPi-Python.git
#PYTHON_WIRINGPI_SITE_METHOD = git
#PYTHON_WIRINGPI_GIT_SUBMODULES = YES
#PYTHON_WIRINGPI_SITE = /home/htanji/work/WiringPi-Python
#PYTHON_WIRINGPI_SITE_METHOD = local
PYTHON_WIRINGPI_VERSION = d88eb93b778a72b14caf4175838223b8f2e59f77
PYTHON_WIRINGPI_SITE = https://github.com/tanji-dg/WiringPi-Python.git
PYTHON_WIRINGPI_SITE_METHOD = git
PYTHON_WIRINGPI_GIT_SUBMODULES = YES
PYTHON_WIRINGPI_SETUP_TYPE = setuptools
PYTHON_WIRINGPI_LICENSE = LGPL
PYTHON_WIRINGPI_LICENSE_FILES = LICENSE.txt
PYTHON_WIRINGPI_DEPENDENCIES = python3 host-swig

$(eval $(python-package))
