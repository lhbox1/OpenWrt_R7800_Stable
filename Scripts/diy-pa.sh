#下载使用sbwml版本alist
wget  -qO- https://github.com/sbwml/luci-app-alist/archive/master.zip > alist.zip
unzip -q alist.zip
cp -r luci-app-alist-master/luci-app-alist package/
rm -rf alist.zip
rm -rf luci-app-alist-master
