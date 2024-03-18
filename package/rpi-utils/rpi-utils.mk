################################################################################
#
# rpi-utils
#
################################################################################

RPI_UTILS_VERSION = 9eddf892ef7b9f94b2406d56f48c81f15a42794c
RPI_UTILS_SITE = https://github.com/raspberrypi/utils
RPI_UTILS_SITE_METHOD = git
RPI_UTILS_DEPENDENCIES = dtc

$(eval $(cmake-package))
