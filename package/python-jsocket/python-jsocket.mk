################################################################################
#
# python-jsocket
#
################################################################################

PYTHON_JSOCKET_VERSION = 1.6
PYTHON_JSOCKET_SOURCE = jsocket-$(PYTHON_JSOCKET_VERSION).tar.gz
PYTHON_JSOCKET_SITE = https://pypi.python.org/packages/9b/39/1269542657b69d0cf3998561c7069b8459fcb809110560624198d79eff09
PYTHON_JSOCKET_SETUP_TYPE = setuptools
PYTHON_JSOCKET_LICENSE = Apache-2.0

$(eval $(python-package))
