################################################################################
#
# python-argcomplete
#
################################################################################

PYTHON_ARGCOMPLETE_VERSION = 1.9.2
PYTHON_ARGCOMPLETE_SOURCE = argcomplete-$(PYTHON_ARGCOMPLETE_VERSION).tar.gz
PYTHON_ARGCOMPLETE_SITE = https://pypi.python.org/packages/3b/db/c524f0d72842b44b179cc50d4257f1e72f447fef0919556e8b28a9b0f80f
PYTHON_ARGCOMPLETE_SETUP_TYPE = setuptools
PYTHON_ARGCOMPLETE_LICENSE = Apache-2.0

$(eval $(python-package))
