################################################################################
#
# python-pycurl
#
################################################################################

PYTHON_PYCURL_VERSION = 7.43.0
PYTHON_PYCURL_SOURCE = pycurl-$(PYTHON_PYCURL_VERSION).tar.gz
PYTHON_PYCURL_SITE = https://pypi.python.org/packages/12/3f/557356b60d8e59a1cce62ffc07ecc03e4f8a202c86adae34d895826281fb
PYTHON_PYCURL_DEPENDENCIES=python libcurl
PYTHON_PYCURL_SETUP_TYPE = distutils
PYTHON_PYCURL_ENV = PYCURL_CURL_CONFIG=${STAGING_DIR}/usr/bin/curl-config
PYTHON_PYCURL_BUILD_OPTS = --with-openssl
PYTHON_PYCURL_INSTALL_TARGET_OPTS = --with-openssl

$(eval $(python-package))
