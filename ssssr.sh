#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bd='\e[1m'
bl='\e[36;1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
echo -e ""
figlet PANEL SHADOWSOCKS | lolcat
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e "           \e[1;31m\e[1;31m═[\e[mSSR & SS Account\e[1;31m]═\e[m" 
echo -e "\e[1;32m═══════════════════════════════════════\e[m" | lolcat
echo -e "$bd 1$bl]\e[m$bd  Create SSR Account"
echo -e "$bd 2$bl]\e[m$bd  Create Shadowsocks Account"
echo -e "$bd 3$bl]\e[m$bd  Deleting SSR Account"
echo -e "$bd 4$bl]\e[m$bd  Delete Shadowsocks Account"
echo -e "$bd 5$bl]\e[m$bd  Renew SSR Account Active"
echo -e "$bd 6$bl]\e[m$bd  Renew Shadowsocks Account"
echo -e "$bd 7$bl]\e[m$bd  Check User Login Shadowsocks"
echo -e "$bd 8$bl]\e[m$bd  Show Other SSR Menu"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU  \e[m"  | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-8 or x] :  "  ssssr
echo -e ""
case $ssssr in
1)
add-ssr
;;
2)
add-ss
;;
3)
del-ssr
;;
4)
del-ss
;;
5)
renew-ssr
;;
6)
renew-ss
;;
7)
cek-ss
;;
8)
ssr
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
