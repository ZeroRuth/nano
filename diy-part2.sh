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
#=================================================
# 清除旧版argon主题并拉取最新版
pushd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
#git lua-maxminddb 依赖
git clone https://github.com/jerrykuku/lua-maxminddb package/lean/helloworld/lua-maxminddb
#HelloWorld是一个以用户最佳主观体验为导向的插件，它支持多种主流协议和多种自定义视频分流服务，拥有精美的操作界面，并配上直观的节点信息。
git clone https://github.com/jerrykuku/luci-app-vssr package/lean/helloworld/luci-app-vssr
#Luci for JD dailybonus Script for Openwrt，一个运行在openwrt下的京东签到插件。
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/lean/jddailybonus/luci-app-jd-dailybonus
