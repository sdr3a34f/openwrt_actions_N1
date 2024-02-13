#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

## passwall2
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"

## amlogic
git submodule add https://github.com/ophub/luci-app-amlogic.git package/others/luci-app-amlogic

## 微信/Telegram 推送插件
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot feeds/luci/applications/luci-app-pushbot
