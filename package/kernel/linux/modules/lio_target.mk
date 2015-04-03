#
# Copyright (c) 2015 Radovan Augustin, rado_augustin@yahoo.com
# All rights reserved.
#
# This file is licensed under BSD 3-Clause License.
#

LIOISCSI_MENU:=Linux-IO Target

define KernelPackage/target_core_mod
  SUBMENU:=$(LIOISCSI_MENU)
  TITLE:=Generic Target Core Mod (TCM)
  DEPENDS:=+kmod-scsi-core +kmod-fs-configfs
  KCONFIG:=CONFIG_TARGET_CORE \
           CONFIG_TCM_IBLOCK=n \
           CONFIG_TCM_FILEIO=n \
           CONFIG_TCM_PSCSI=n \
           CONFIG_TCM_USER=n \
           CONFIG_LOOPBACK_TARGET=n \
           CONFIG_TCM_FC=n \
           CONFIG_ISCSI_TARGET=n \
           CONFIG_SBP_TARGET=n
  FILES:=$(LINUX_DIR)/drivers/target/target_core_mod.ko
  AUTOLOAD:=$(call AutoLoad,29,target_core_mod)
endef

$(eval $(call KernelPackage,target_core_mod))

define KernelPackage/target_core_iblock
  SUBMENU:=$(LIOISCSI_MENU)
  TITLE:=TCM/IBLOCK Subsystem Plugin for Linux/BLOCK
  DEPENDS:=+kmod-target_core_mod
  KCONFIG:=CONFIG_TCM_IBLOCK
  FILES:=$(LINUX_DIR)/drivers/target/target_core_iblock.ko
  AUTOLOAD:=$(call AutoLoad,30,target_core_iblock)
endef

$(eval $(call KernelPackage,target_core_iblock))

define KernelPackage/iscsi_target_mod
  SUBMENU:=$(LIOISCSI_MENU)
  TITLE:=Linux-iSCSI.org iSCSI Target Mode Stack
  DEPENDS:=+kmod-target_core_mod +kmod-crypto-core +kmod-crypto-crc32c
  KCONFIG:=CONFIG_ISCSI_TARGET
  FILES:=$(LINUX_DIR)/drivers/target/iscsi/iscsi_target_mod.ko
  AUTOLOAD:=$(call AutoLoad,30,iscsi_target_mod)
endef

$(eval $(call KernelPackage,iscsi_target_mod))
