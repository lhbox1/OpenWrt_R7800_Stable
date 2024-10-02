#!/bin/bash
#

opkg install /etc/argon/*.ipk

sed -i "s/7e924a76db88dbc0724c8676d5a1a221/71d39ab23054c352744e74fe3a674e50/g" /usr/lib/opkg/status
sleep 1
sed -i "s/install_argon.sh/wan_check.sh/g" /etc/crontabs/root

rm -rf /etc/argon
rm -rf /etc/install_argon.sh