#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
echo -e ""
figlet Panel Wireguard | lolcat
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e "              \e[1;31m\e[1;31m═[\e[mWireguard\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e "$bd 1$bl]\e[m $bd Create Wireguard Account"
echo -e "$bd 2$bl]\e[m $bd Delete Wireguard Account"
echo -e "$bd 3$bl]\e[m $bd Check User Login Wireguard"
echo -e "$bd 4$bl]\e[m $bd Renew Wireguard Account"
echo -e ""
echo -e "\e[1;32m═════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU    \e[m" | lolcat
echo -e "\e[1;32m═════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  wgr
echo -e ""
case $wgr in
1)
add-wg
;;
2)
del-wg
;;
3)
cek-wg
;;
4)
renew-wg
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
