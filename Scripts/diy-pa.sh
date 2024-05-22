#下载使用sbwml版本alist
#wget  -qO- https://github.com/sbwml/luci-app-alist/archive/master.zip > alist.zip
#unzip -q alist.zip
#cp -r luci-app-alist-master/luci-app-alist package/
#rm -rf alist.zip
#rm -rf luci-app-alist-master


#下载使用master版本passwall
#wget -qO- https://github.com/xiaorouji/openwrt-passwall/archive/main.zip > temp1.zip
wget -qO- https://codeload.github.com/xiaorouji/openwrt-passwall/zip/refs/tags/4.77-5 > temp1.zip
unzip -q temp1.zip
rm -rf feeds/luci/applications/luci-app-passwall
cp -r openwrt-passwall-4.77-5/luci-app-passwall package/
rm -rf temp1.zip
rm -rf openwrt-passwall-4.77-5

