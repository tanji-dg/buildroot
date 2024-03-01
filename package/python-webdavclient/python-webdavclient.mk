################################################################################
#
# python-webdavclient
#
################################################################################

PYTHON_WEBDAVCLIENT_VERSION = 1.0.8
PYTHON_WEBDAVCLIENT_SOURCE = webdavclient-$(PYTHON_WEBDAVCLIENT_VERSION).tar.gz
PYTHON_WEBDAVCLIENT_SITE = https://pypi.python.org/packages/34/be/5800a3946827c9c47dc86f8f4d1d0d548888193a601d7952f1f9426a1724
PYTHON_WEBDAVCLIENT_SETUP_TYPE = setuptools
PYTHON_WEBDAVCLIENT_LICENSE = MIT

$(eval $(python-package))
