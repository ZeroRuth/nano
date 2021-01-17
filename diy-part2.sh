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
# 清除默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# luci-theme-argon for 18.06 by jerrykuku

rm -rf package/lean/luci-theme-argon

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/mine/luci-theme-argon

# luci-app-vssr

git clone htpHtps://github.com/jerrykuku/lua-maxminddb package/mine/lua-maxminddb

git clone https://github.com/jerrykuku/luci-app-vssr package/mine/luci-app-vssr

# Luci for JD dailybonus Script for Openwrt

git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/mine/luci-app-jd-dailybonus
