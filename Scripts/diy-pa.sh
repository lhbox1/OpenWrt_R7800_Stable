#下载使用lucky
wget  -qO- https://codeload.github.com/gdy666/luci-app-lucky/zip/refs/tags/v2.15.7 > lucky.zip
unzip -q lucky.zip
cp -r luci-app-lucky-2.15.7/luci-app-lucky package/
cp -r luci-app-lucky-2.15.7/lucky package/
rm -rf lucky.zip
rm -rf luci-app-lucky-2.15.7


#下载使用master版本passwall
#wget -qO- https://github.com/xiaorouji/openwrt-passwall/archive/main.zip > temp1.zip
wget -qO- https://codeload.github.com/xiaorouji/openwrt-passwall/zip/refs/tags/25.5.16-1 > temp1.zip

unzip -q temp1.zip

#cp -r openwrt-passwall-main/luci-app-passwall package/
cp -r openwrt-passwall-25.5.16-1/luci-app-passwall package/
rm -rf temp1.zip

#rm -rf openwrt-passwall-main
rm -rf openwrt-passwall-25.5.16-1

git clone --depth=1 --single-branch --branch "master" https://github.com/kenzok8/openwrt-packages.git ./small-openwrt-packages
cp -r small-openwrt-packages/luci-app-smartdns package/
cp -r small-openwrt-packages/smartdns package/

rm -rf small-openwrt-packages

