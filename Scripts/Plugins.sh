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

#库1
#git clone --depth=1 --single-branch https://github.com/kiddin9/openwrt-packages.git

#luci-app-adguardhome
#
#git clone --depth=1 --single-branch https://github.com/lhbox1/pakg.git

#Open Clash

git clone --depth=1 --single-branch --branch "master" https://github.com/vernesong/OpenClash.git
#git clone --depth=1 --single-branch --branch "dev" https://github.com/vernesong/OpenClash.git

#Pass Wall
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall.git ./pw_luci
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall-packages.git ./pw_packages

#库2
#git clone --depth=1 --single-branch --branch "master" https://github.com/kenzok8/openwrt-packages.git
#git clone --depth=1 --single-branch --branch "master" https://github.com/kenzok8/small.git

#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall.git
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall2.git
#git clone --depth=1 --single-branch --branch "main" https://github.com/xiaorouji/openwrt-passwall-packages.git

#alit列表
#git clone --depth=1 --single-branch --branch "master" https://github.com/sbwml/luci-app-alist.git

#预置OpenClash内核和GEO数据
export CORE_VER=https://raw.githubusercontent.com/vernesong/OpenClash/core/dev/core_version

export CORE_TUN=https://github.com/vernesong/OpenClash/raw/core/master/premium/clash-linux
export CORE_DEV=https://github.com/vernesong/OpenClash/raw/core/master/dev/clash-linux
export CORE_MATE=https://github.com/vernesong/OpenClash/raw/core/master/meta/clash-linux

export CORE_TYPE=arm64
export TUN_VER=$(curl -sfL $CORE_VER | sed -n "2{s/\r$//;p;q}")

export GEO_MMDB=https://github.com/alecthw/mmdb_china_ip_list/raw/release/lite/Country.mmdb
export GEO_SITE=https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geosite.dat
#export GEO_IP=https://github.com/Loyalsoldier/v2ray-rules-dat/raw/release/geoip.dat


export CLASHAA=https://github.com/lhbox1/lhatv/raw/main/openclash
curl -sfL -o ./OpenClash/luci-app-openclash/root/etc/config/openclash $CLASHAA



cd ./OpenClash/luci-app-openclash/root/etc/openclash
curl -sfL -o ./Country.mmdb $GEO_MMDB
#curl -sfL -o ./GeoSite.dat $GEO_SITE
#curl -sfL -o ./GeoIP.dat $GEO_IP

mkdir ./core && cd ./core

#curl -sfL -o ./tun.gz "$CORE_TUN"-"$CORE_TYPE"-"$TUN_VER".gz
#gzip -d ./tun.gz && mv ./tun ./clash_tun

#自定义
#curl -sL -m 30 --retry 2 https://raw.githubusercontent.com/lhbox1/Actions-OpenWrt/main/CMCC-RAX3000M-EMMC/clash1.tar.gz -o ./clash1.tar.gz
#tar -zxf ./clash1.tar.gz
#rm -rf ./clash
#rm -rf ./clash_tun


curl -sfL -o ./meta.tar.gz "$CORE_MATE"-"$CORE_TYPE".tar.gz
tar -zxf ./meta.tar.gz && mv ./clash ./clash_meta

#curl -sfL -o ./dev.tar.gz "$CORE_DEV"-"$CORE_TYPE".tar.gz
#tar -zxf ./dev.tar.gz

chmod +x ./clash* ; rm -rf ./*.gz
