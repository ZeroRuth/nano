#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
.config
git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr
.config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon LUCI/Theme/Luci-theme-argon
.config
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/lean/luci-app-jd-dailybonus
.config
CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_luci-app-vssr=y
CONFIG_PACKAGE_Luci-theme-argon=y
CONFIG_PACKAGE_luci-app-jd-dailybonus=y
