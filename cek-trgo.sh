#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
data=( `cat /var/log/trojan-go.log | grep -w 'authenticated as' | awk '{print $7}' | sort | uniq`);
echo "------------------------------------";
echo "-----=[ TrojanGO User Login ]=-----";
echo "------------------------------------";
for akun in "${data[@]}"
do
data2=( `lsof -n | grep -i ESTABLISHED | grep trojan-go | awk '{print $9}' | cut -d':' -f2 | grep -w 2096 | cut -d- -f2 | grep -v '>127.0.0.1' | sort | uniq | cut -d'>' -f2`);
echo -n > /tmp/iptrojan-go.txt
for ip in "${data2[@]}"
do
jum=$(cat /var/log/trojan-go.log | grep -w $akun | awk '{print $4}' | cut -d: -f1 | grep -w $ip | sort | uniq)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
echo "$jum" > /tmp/iptrojan-go.txt
fi
done
jum2=$(cat /tmp/iptrojan-go.txt | nl)
echo "user : $akun";
echo "$jum2";
echo "-------------------------------"
done
