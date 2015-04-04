#
# Copyright (c) 2015 Radovan Augustin, rado_augustin@yahoo.com
# All rights reserved.
#
# This file is licensed under BSD 3-Clause License.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lio_tcm_node-cpp
PKG_VERSION:=2.2
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/lio_tcm_node-cpp
  TITLE:=lio-utils/tcm_node (C++)
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Linux-IO Target
  DEPENDS:=+uclibcxx +libuuid
endef

define Package/lio_tcm_node-cpp/description
  tcm_node is utility from Linux-IO Target lio-utils, rewritten to C++.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/lio_tcm_node-cpp/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tcm_node $(1)/usr/sbin
endef

$(eval $(call BuildPackage,lio_tcm_node-cpp))
