#
#下载使用master版本openclash
#wget  -qO- https://github.com/vernesong/OpenClash/archive/master.zip > temp.zip
#unzip -q temp.zip
#cp -r OpenClash-master/luci-app-openclash package/
#rm -rf OpenClash-master
#rm -rf temp.zip

#kenzok8下载使用master版本packages
#wget  -qO- https://github.com/xiaorouji/openwrt-passwall/archive/main.zip > temp1.zip
#wget  -qO- https://github.com/kenzok8/small/archive/master.zip > temp2.zip
#wget  -qO- https://github.com/kenzok8/openwrt-packages/archive/master.zip > temp3.zip

#unzip -q temp1.zip
#unzip -q temp2.zip
#unzip -q temp3.zip
#cp -r openwrt-passwall-main/luci-app-passwall package/

#cp -r openwrt-packages-master/luci-app-adguardhome package/
#cp -r openwrt-packages-master/adguardhome package/
#cp -r openwrt-packages-master/luci-app-alist package/
#cp -r openwrt-packages-master/alist package/
#cp -r openwrt-packages-master/luci-app-ddns-go package/
#cp -r openwrt-packages-master/ddns-go package/
#cp -r openwrt-packages-master/luci-app-smartdns package/
#cp -r openwrt-packages-master/smartdns package/


#cp -r small-master/luci-app-ssr-plus package/

#cp -r small-master/luci-app-passwall2 package/
#cp -r small-master/dns2socks package/
#cp -r small-master/dns2tcp package/

#cp -r small-master/xray-core package/
#cp -r small-master/chinadns-ng package/
#cp -r small-master/sing-box package/
#cp -r small-master/luci-app-mosdns package/
#cp -r small-master/v2dat package/
#cp -r small-master/mosdns package/



#rm -rf openwrt-passwall-main
#rm -rf temp1.zip

#rm -rf temp2.zip
#rm -rf small-master

#rm -rf temp3.zip
#rm -rf openwrt-packages-master


#插件库
wget  -qO- https://github.com/lhbox1/pakg/archive/main.zip > temp3.zip
unzip -q temp3.zip
cp -r pakg-main/luci-app-adguardhome package/
#cp -r pakg-main/luci-app-mosdns package/
#cp -r pakg-main/v2dat package/
rm -rf temp3.zip
rm -rf pakg-main

#下载使用sbwml版本alist
wget  -qO- https://github.com/sbwml/luci-app-alist/archive/master.zip > alist.zip
unzip -q alist.zip
cp -r luci-app-alist-master/luci-app-alist package/
rm -rf alist.zip
rm -rf luci-app-alist-master
