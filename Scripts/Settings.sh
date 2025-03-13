#!/bin/bash

#删除冲突插件
rm -rf $(find ./feeds/luci/ -type d -regex ".*\(openclash\|passwall\|lucky\|alist\|easymesh\|adguardhome\|ksmbd\).*")
rm -rf package/istore
rm -rf feeds/packages/net/lucky

rm -rf feeds/packages/net/trojan-plus
rm -rf feeds/packages/net/v2ray-plugin
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/hysteria
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/chinadns-ng

#rm -rf package/wwan/app/luci-app-usbmodem
rm -rf feeds/packages/net/adguardhome
####
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OWRT_IP/g" ./package/base-files/files/bin/config_generate
#修改默认主题
#sed -i "s/luci-theme-bootstrap/luci-theme-$OWRT_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$OWRT_NAME'/g" ./package/base-files/files/bin/config_generate
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
#添加插件
git clone https://github.com/lhbox1/luci-app-adguardhome1 package/luci-app-adguardhome
git clone https://github.com/shuishihan/luci-app-easymesh.git package/luci-app-easymesh
# git clone https://github.com/lhbox1/pakg.git package/pakggg
git clone --depth=1 --single-branch --branch "main" https://github.com/lmq8267/luci-app-alist ./package/luci-app-alist
