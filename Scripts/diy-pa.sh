#下载使用lucky
wget  -qO- https://codeload.github.com/gdy666/luci-app-lucky/zip/refs/tags/v2.15.7 > lucky.zip
unzip -q lucky.zip
cp -r luci-app-lucky-2.15.7/luci-app-lucky package/
cp -r luci-app-lucky-2.15.7/lucky package/
rm -rf lucky.zip
rm -rf luci-app-lucky-2.15.7


#下载使用master版本passwall
#wget -qO- https://github.com/xiaorouji/openwrt-passwall/archive/main.zip > temp1.zip
wget -qO- https://codeload.github.com/xiaorouji/openwrt-passwall/zip/refs/tags/25.5.1-2 > temp1.zip
unzip -q temp1.zip
rm -rf feeds/luci/applications/luci-app-passwall
cp -r openwrt-passwall-25.5.1-2/luci-app-passwall package/
rm -rf temp1.zip
rm -rf openwrt-passwall-25.5.1-2

#下载使用helloworld依赖库ssr
#wget -qO- https://github.com/fw876/helloworld/archive/master.zip > temp2.zip
#unzip -q temp2.zip
#rm -rf feeds/luci/applications/luci-app-ssr-plus
#cp -r helloworld-master/luci-app-ssr-plus package/
#cp -r helloworld-master/shadow-tls package/
#rm -rf temp2.zip
#rm -rf helloworld-master

#下载使用sbwml版本mosdns
#wget  -qO- https://codeload.github.com/sbwml/luci-app-mosdns/zip/refs/tags/v5.3.1 > mosdns.zip
#unzip -q mosdns.zip
#rm -rf feeds/packages/net/mosdns
#rm -rf feeds/packages/net/v2ray-geodata
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

#cp -r luci-app-mosdns-5.3.1/luci-app-mosdns package/
#cp -r luci-app-mosdns-5.3.1/v2dat package/
#cp -r luci-app-mosdns-5.3.1/mosdns package/
#rm -rf mosdns.zip
#rm -rf luci-app-mosdns-5.3.1

