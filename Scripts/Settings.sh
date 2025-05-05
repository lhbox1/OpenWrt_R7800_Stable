#!/bin/bash

#删除冲突插件
rm -rf $(find ./feeds/luci/ -type d -regex ".*\(openclash\|passwall\|lucky\|alist\|easymesh\|adguardhome\|smartdns\).*")
rm -rf package/istore
rm -rf feeds/packages/net/smartdns
#passwall
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/trojan-plus
rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/hysteria
rm -rf feeds/packages/net/dns2socks
rm -rf feeds/packages/net/geoview
rm -rf feeds/packages/net/ipt2socks
rm -rf feeds/packages/net/microsocks
rm -rf feeds/packages/net/naiveproxy
rm -rf feeds/packages/net/shadowsocks-libev
rm -rf feeds/packages/net/shadowsocks-rust
rm -rf feeds/packages/net/shadowsocksr-libev
rm -rf feeds/packages/net/simple-obfs
rm -rf feeds/packages/net/tcping
rm -rf feeds/packages/net/tuic-client
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/v2ray-plugin
rm -rf feeds/packages/net/xray-plugin


#rm -rf package/wwan/app/luci-app-usbmodem
rm -rf feeds/packages/net/adguardhome
rm -rf feeds/packages/net/lucky
####
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OWRT_IP/g" ./package/base-files/files/bin/config_generate
#修改immortalwrt.lan关联IP
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OWRT_IP/g" $(find feeds/luci/modules/luci-mod-system -type f -name "flash.js")
#修改默认主题
#sed -i "s/luci-theme-bootstrap/luci-theme-$OWRT_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$OWRT_NAME'/g" ./package/base-files/files/bin/config_generate
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
#添加插件
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang

#git clone https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall-packages

##25.1.1-1
rm -rf feeds/packages/net/{dns2tcp,gn,pdnsd-alt,trojan-go,trojan,v2ray-geoview,ssocks}
#git clone https://github.com/xiaorouji/openwrt-passwall-packages/tree/825aa3a00ad839f3f2521f7e06750a271dabae17 package/openwrt-passwall-packages



git clone https://github.com/lhbox1/luci-app-adguardhome1 package/luci-app-adguardhome
git clone https://github.com/shuishihan/luci-app-easymesh.git package/luci-app-easymesh
# git clone https://github.com/lhbox1/pakg.git package/pakggg
git clone --depth=1 --single-branch --branch "main" https://github.com/lmq8267/luci-app-alist ./package/luci-app-alist
