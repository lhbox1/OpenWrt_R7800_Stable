#下载使用sbwml版本alist
#wget  -qO- https://github.com/sbwml/luci-app-alist/archive/master.zip > alist.zip
#unzip -q alist.zip
#cp -r luci-app-alist-master/luci-app-alist package/
#rm -rf alist.zip
#rm -rf luci-app-alist-master


#sirpdboy仓库



#下载使用master版本passwall
#wget -qO- https://github.com/xiaorouji/openwrt-passwall/archive/main.zip > temp1.zip
wget -qO- https://codeload.github.com/xiaorouji/openwrt-passwall/zip/refs/tags/4.77-6 > temp1.zip
unzip -q temp1.zip
#rm -rf feeds/luci/applications/luci-app-passwall
cp -r openwrt-passwall-4.77-6/luci-app-passwall package/
rm -rf temp1.zip
rm -rf openwrt-passwall-4.77-6

#下载使用helloworld依赖库ssr
wget -qO- https://github.com/fw876/helloworld/archive/master.zip > temp2.zip
unzip -q temp2.zip
rm -rf feeds/luci/applications/luci-app-ssr-plus
cp -r helloworld-master/luci-app-ssr-plus package/
cp -r helloworld-master/shadow-tls package/
rm -rf temp2.zip
rm -rf helloworld-master

#下载使用sbwml版本mosdns
wget  -qO- https://github.com/sbwml/luci-app-mosdns/archive/v5.zip > mosdns.zip
unzip -q mosdns.zip
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
cp -r luci-app-mosdns-5/luci-app-mosdns package/
cp -r luci-app-mosdns-5/v2dat package/
cp -r luci-app-mosdns-5/mosdns package/
rm -rf mosdns.zip
rm -rf luci-app-mosdns-5

