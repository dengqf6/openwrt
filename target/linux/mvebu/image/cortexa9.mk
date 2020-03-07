#
# Copyright (C) 2012-2016 OpenWrt.org
# Copyright (C) 2016 LEDE-project.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Device/globalscale_mirabox
  $(Device/NAND-512K)
  DEVICE_VENDOR := Globalscale
  DEVICE_MODEL := Mirabox
  SOC := armada-370
  SUPPORTED_DEVICES += mirabox
endef
TARGET_DEVICES += globalscale_mirabox

define Device/linksys_wrt1900ac
  $(Device/NAND-128K)
  DEVICE_VENDOR := Linksys
  DEVICE_MODEL := WRT1900AC
  DEVICE_VARIANT := v1
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Mamba
  DEVICE_DTS := armada-xp-linksys-mamba
  DEVICE_PACKAGES := kmod-mwlwifi swconfig wpad-basic mwlwifi-firmware-88w8864
  KERNEL_SIZE := 3072k
  IMAGES += factory.img
  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
endef
TARGET_DEVICES += linksys_wrt1900ac

define Device/marvell_a370-db
  $(Device/NAND-512K)
  DEVICE_VENDOR := Marvell
  DEVICE_MODEL := Armada 370 Development Board (DB-88F6710-BP-DDR3)
  DEVICE_DTS := armada-370-db
  SUPPORTED_DEVICES += armada-370-db
endef
TARGET_DEVICES += marvell_a370-db

define Device/marvell_a370-rd
  $(Device/NAND-512K)
  DEVICE_VENDOR := Marvell
  DEVICE_MODEL := Armada 370 RD (RD-88F6710-A1)
  DEVICE_DTS := armada-370-rd
  SUPPORTED_DEVICES += armada-370-rd
endef
TARGET_DEVICES += marvell_a370-rd

define Device/marvell_axp-db
  $(Device/NAND-512K)
  DEVICE_VENDOR := Marvell
  DEVICE_MODEL := Armada XP Development Board (DB-78460-BP)
  DEVICE_DTS := armada-xp-db
  SUPPORTED_DEVICES += armada-xp-db
endef
TARGET_DEVICES += marvell_axp-db

define Device/marvell_axp-gp
  $(Device/NAND-512K)
  DEVICE_VENDOR := Marvell
  DEVICE_MODEL := Armada Armada XP GP (DB-MV784MP-GP)
  DEVICE_DTS := armada-xp-gp
  SUPPORTED_DEVICES += armada-xp-gp
endef
TARGET_DEVICES += marvell_axp-gp

define Device/plathome_openblocks-ax3-4
  DEVICE_VENDOR := Plat'Home
  DEVICE_MODEL := OpenBlocks AX3
  DEVICE_VARIANT := 4 ports
  SOC := armada-xp
  SUPPORTED_DEVICES += openblocks-ax3-4
  BLOCKSIZE := 128k
  PAGESIZE := 1
  IMAGES += factory.img
  IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
endef
TARGET_DEVICES += plathome_openblocks-ax3-4
