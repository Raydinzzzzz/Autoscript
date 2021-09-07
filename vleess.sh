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
figlet Panel Vless | lolcat
echo -e "\e[1;32m════════════════════════════════════════\e[m" | lolcat
echo -e "             \e[1;31m\e[1;31m═[\e[mV2Ray Vless\e[1;31m]═\e[m" 
echo -e "\e[1;32m════════════════════════════════════════\e[m" | lolcat
echo -e "$bd 1$bl]\e[m $bd Create Vless Websocket Account"
echo -e "$bd 2$bl]\e[m $bd Deleting Vless Websocket Account"
echo -e "$bd 3$bl]\e[m $bd Renew Vless Account "
echo -e "$bd 4$bl]\e[m $bd Check User Login Vless"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU    \e[m"  | lolcat
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  vless
echo -e ""
case $vless in
1)
add-vless
;;
2)
del-vless
;;
3)
renew-vless
;;
4)
cek-vless
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
