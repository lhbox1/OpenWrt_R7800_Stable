#!/bin/bash

#Design Theme
#git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "main" || echo "js") https://github.com/gngpp/luci-theme-design.git
#git clone --depth=1 --single-branch https://github.com/gngpp/luci-app-design-config.git
#sed -i 's/dark/light/g' luci-app-design-config/root/etc/config/design
#Argon Theme
#git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-theme-argon.git
#git clone --depth=1 --single-branch --branch $(echo $OWRT_URL | grep -iq "lede" && echo "18.06" || echo "master") https://github.com/jerrykuku/luci-app-argon-config.git
#Linkease
git clone --depth=1 --single-branch https://github.com/linkease/istore.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages.git
git clone --depth=1 --single-branch https://github.com/linkease/nas-packages-luci.git
#Open Clash
#git clone --depth=1 --single-branch --branch "dev" https://github.com/vernesong/OpenClash.git
#Pass Wall
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall.git ./pw_luci
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall-packages.git ./pw_packages

#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall.git
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall-packages.git


#预置OpenClash内核和GEO数据
export CORE_VER=https://raw.githubusercontent.com/vernesong/OpenClash/core/dev/core_version

export CORE_TUN=https://github.com/vernesong/OpenClash/raw/core/dev/premium/clash-linux
export CORE_DEV=https://github.com/vernesong/OpenClash/raw/core/dev/dev/clash-linux
export CORE_MATE=https://github.com/vernesong/OpenClash/raw/core/dev/meta/clash-linux

export CORE_TYPE=$(echo $OWRT_TARGET | grep -Eiq "64|86" && echo "amd64" || echo "arm64")
export TUN_VER=$(curl -sfL $CORE_VER | sed -n "2{s/\r$//;p;q}")

export GEO_MMDB=https://github.com/alecthw/mmdb_china_ip_list/raw/release/lite/Country.mmdb
export GEO_SITE=https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geosite.dat
export GEO_IP=https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geoip.dat

cd ./OpenClash/luci-app-openclash/root/etc/openclash

curl -sfL -o ./Country.mmdb $GEO_MMDB
curl -sfL -o ./GeoSite.dat $GEO_SITE
curl -sfL -o ./GeoIP.dat $GEO_IP

mkdir ./core && cd ./core

#curl -sfL -o ./tun.gz "$CORE_TUN"-"$CORE_TYPE"-"$TUN_VER".gz
#gzip -d ./tun.gz && mv ./tun ./clash_tun

curl -sfL -o ./meta.tar.gz "$CORE_MATE"-"$CORE_TYPE".tar.gz
tar -zxf ./meta.tar.gz && mv ./clash ./clash_meta

#curl -sfL -o ./dev.tar.gz "$CORE_DEV"-"$CORE_TYPE".tar.gz
#tar -zxf ./dev.tar.gz

chmod +x ./clash* ; rm -rf ./*.gz


#下载使用master版本openclash
wget  -qO- https://github.com/vernesong/OpenClash/archive/master.zip > temp.zip
unzip -q temp.zip
cp -r OpenClash-master/luci-app-openclash package/
rm -rf OpenClash-master
rm -rf temp.zip

#kenzok8下载使用master版本packages
#https://github.com/xiaorouji/openwrt-passwall/archive/main.zip
wget  -qO- https://github.com/kenzok8/small/archive/master.zip > temp2.zip
wget  -qO- https://github.com/kenzok8/openwrt-packages/archive/master.zip > temp3.zip


unzip -q temp2.zip
unzip -q temp3.zip
cp -r openwrt-packages-master/luci-app-adguardhome package/
cp -r openwrt-packages-master/adguardhome package/
cp -r openwrt-packages-master/luci-app-alist package/
cp -r openwrt-packages-master/alist package/
cp -r openwrt-packages-master/luci-app-ddns-go package/
cp -r openwrt-packages-master/ddns-go package/
cp -r openwrt-packages-master/luci-app-smartdns package/
cp -r openwrt-packages-master/smartdns package/


cp -r small-master/luci-app-ssr-plus package/
cp -r small-master/luci-app-passwall package/
cp -r small-master/luci-app-passwall2 package/
cp -r small-master/dns2socks package/
cp -r small-master/dns2tcp package/
cp -r small-master/v2dat package/
cp -r small-master/xray-core package/
cp -r small-master/chinadns-ng package/
cp -r small-master/sing-box package/
cp -r small-master/luci-app-mosdns package/
cp -r small-master/mosdns package/


rm -rf openwrt-packages-master
rm -rf temp2.zip
rm -rf small-master
rm -rf temp3.zip


