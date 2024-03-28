################################################################################
#
# dotnet-runtime
#
################################################################################

DOTNET_RUNTIME_VERSION = 8.0.3

# Set download URL and runtime identifier
# See https://docs.microsoft.com/en-us/dotnet/core/rid-catalog
# for the list of supported runtimes
# download_link="$azure_feed/Runtime/$specific_version/dotnet-runtime-$specific_version-$osname-$normalized_architecture.tar.gz"

AZURE_FEED = https://dotnetcli.azureedge.net/dotnet
DOTNET_RUNTIME_SITE = $(AZURE_FEED)/Runtime/$(DOTNET_RUNTIME_VERSION)

ifeq ($(BR2_x86_64),y)
ifeq ($(BR2_TOOLCHAIN_USES_MUSL),y)
DOTNET_RUNTIME_IDENTIFIER = linux-musl-x64
else
DOTNET_RUNTIME_IDENTIFIER = linux-x64
endif
else ifeq ($(BR2_arm),y)
DOTNET_RUNTIME_IDENTIFIER = linux-arm
else ifeq ($(BR2_aarch64),y)
ifeq ($(BR2_TOOLCHAIN_USES_MUSL),y)
DOTNET_RUNTIME_IDENTIFIER = linux-musl-arm64
else
DOTNET_RUNTIME_IDENTIFIER = linux-arm64
endif
endif

ifeq ($(DOTNET_RUNTIME_IDENTIFIER),)
$(error "Target platform is not supported by dotnet")
endif

DOTNET_RUNTIME_SOURCE = dotnet-runtime-$(DOTNET_RUNTIME_VERSION)-$(DOTNET_RUNTIME_IDENTIFIER).tar.gz

DOTNET_RUNTIME_LICENSE = MIT
DOTNET_RUNTIME_LICENSE_FILES = LICENSE.txt

# Runtime could be installed in the global location [/usr/share/dotnet] and
# will be picked up automatically.
# As alternative, it is possible to use the DOTNET_ROOT environment variable
# to specify the runtime location or register the runtime location in
# [/etc/dotnet/install_location]
# This script will install runtime to
# /usr/share/dotnet-runtime-$(DOTNET_RUNTIME_VERSION)
define DOTNET_RUNTIME_INSTALL_TARGET_CMDS
	cp -R $(@D) $(TARGET_DIR)/usr/share/
endef

$(eval $(generic-package))
