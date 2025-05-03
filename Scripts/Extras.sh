#!/bin/bash

##-----------------Add AdGuardHome core------------------
curl -sL -m 30 --retry 2 https://raw.githubusercontent.com/lhbox1/lhatv/refs/heads/main/AdGuardHome.tar.gz -o /tmp/AdGuardHome.tar.gz
tar zxvf /tmp/AdGuardHome.tar.gz -C /tmp >/dev/null 2>&1
chmod +x /tmp/AdGuardHome >/dev/null 2>&1
mkdir -p package/luci-app-adguardhome/root/etc/AdGuardHome
mv /tmp/AdGuardHome package/luci-app-adguardhome/root/etc/AdGuardHome/AdGuardHome >/dev/null 2>&1
rm -rf /tmp/AdGuardHome.tar.gz >/dev/null 2>&1

chmod +x files/etc/wan_check.sh
chmod +x files/etc/install_ipk.sh
chmod +x files/etc/hostsUpdate.sh
