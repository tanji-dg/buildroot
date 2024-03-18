################################################################################
#
# python-json-rpc
#
################################################################################

PYTHON_JSON_RPC_VERSION = 1.10.8
PYTHON_JSON_RPC_SOURCE = json-rpc-$(PYTHON_JSON_RPC_VERSION).tar.gz
PYTHON_JSON_RPC_SITE = https://pypi.python.org/packages/79/be/106ad9c7910d9d87aca0772ba41597c2c86223766b5dd1e65863e4902ab5
PYTHON_JSON_RPC_SETUP_TYPE = setuptools
PYTHON_JSON_RPC_LICENSE = MIT

define PYTHON_JSON_RPC_REMOVE_DATA
        $(RM) -f $(TARGET_DIR)/usr/lib/python2.7/site-packages/jsonrpc/tests/py35_utils.py
endef

PYTHON_JSON_RPC_POST_INSTALL_TARGET_HOOKS += PYTHON_JSON_RPC_REMOVE_DATA

$(eval $(python-package))
