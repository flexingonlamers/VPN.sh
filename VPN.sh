#!/bin/bash
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
ULG='\e[4;1;32m'
WHITE='\e[1;37m'
NC='\e[0m'
clear
tput civis
who am i >> logs.txt
echo -n -e "${WHITE}Booting Up Menu.. \r"
sleep 1.5
echo -n -e "${WHITE}Loading Menu [${RED}##                       ${WHITE}(8%)\r"
sleep 1
echo -n -e "${WHITE}Loading Menu [${RED}########                 ${WHITE}(38%)\r"
sleep 1
echo -n -e "${WHITE}Loading Menu [${RED}##########               ${WHITE}(49%)\r"
sleep 1
echo -n -e "${WHITE}Loading Menu [${RED}################         ${WHITE}(80%)\r"
sleep 1
echo -n -e "${WHITE}Loading Menu [${RED}#######################${WHITE}] (100%) ${RED}Finished"
sleep 2
echo -ne '\n'
tput cnorm
while true
do
clear
echo -e "
    ${RED}███${WHITE}╗    ${RED}███${WHITE}╗    ${LIGHTGREEN}██${WHITE}╗   ${LIGHTGREEN}██${WHITE}╗${LIGHTGREEN}██████${WHITE}╗ ${LIGHTGREEN}███${WHITE}╗   ${LIGHTGREEN}██${WHITE}╗    ${RED}███${WHITE}╗    ${RED}███${WHITE}╗
    ${RED}██${WHITE}╔╝    ╚${RED}██${WHITE}║    ${LIGHTGREEN}██${WHITE}║   ${LIGHTGREEN}██${WHITE}║${LIGHTGREEN}██${WHITE}╔══${LIGHTGREEN}██${WHITE}╗${LIGHTGREEN}████${WHITE}╗  ${LIGHTGREEN}██${WHITE}║    ${RED}██${WHITE}╔╝    ╚${RED}██${WHITE}║
    ${RED}██${WHITE}║${LIGHTGREEN}█████${WHITE}╗${RED}██${WHITE}║    ${LIGHTGREEN}██${WHITE}║   ${LIGHTGREEN}██${WHITE}║${LIGHTGREEN}██████${WHITE}╔╝${LIGHTGREEN}██${WHITE}╔${LIGHTGREEN}██${WHITE}╗ ${LIGHTGREEN}██${WHITE}║    ${RED}██${WHITE}║${LIGHTGREEN}█████${WHITE}╗${RED}██${WHITE}║
    ${RED}██${WHITE}║╚════╝${RED}██${WHITE}║    ${WHITE}╚${LIGHTGREEN}██${WHITE}╗ ${LIGHTGREEN}██${WHITE}╔╝${LIGHTGREEN}██${WHITE}╔═══╝ ${LIGHTGREEN}██${WHITE}║╚${LIGHTGREEN}██${WHITE}╗${LIGHTGREEN}██${WHITE}║    ${RED}██${WHITE}║╚════╝${RED}██${WHITE}║
    ${RED}███${WHITE}╗    ${RED}███${WHITE}║     ${WHITE}╚${LIGHTGREEN}████${WHITE}╔╝ ${LIGHTGREEN}██${WHITE}║     ${LIGHTGREEN}██${WHITE}║ ╚${LIGHTGREEN}████${WHITE}║    ${RED}███${WHITE}╗    ${RED}███${WHITE}║
    ${WHITE}╚══╝    ╚══╝      ${WHITE}╚═══╝  ╚═╝     ╚═╝  ╚═══╝    ${WHITE}╚══╝    ╚══╝
"
echo -e "${WHITE}Devs:${WHITE} [${LIGHTCYAN}@FlexingOnLamers${WHITE}]"
echo -e "${LIGHTBLUE}list ${WHITE}To See The Full List OF Commands "
echo -e -n "${WHITE}Users Online:${LIGHTRED} "
users | wc -w
echo -e "\n"
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e -n "${WHITE}root@${LIGHTRED}VPN${WHITE} ~]# \c"
read answer
if [[ $answer == list ]]
then
clear
echo -e ""
echo -e "${RED}                                 [${WHITE}+${RED}]${LIGHTCYAN}Commands And Tools${RED}[${WHITE}+${RED}]                                "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}AWS     ${WHITE}USE THIS FIRST                                  "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}openvpn ${WHITE}Downloads OPENVPN and Starts the autosetup      "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}addvpn  ${WHITE}Adds User configs for OPENVPN                   "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}soft    ${WHITE}Downloads SoftEther scripts and sets it up      "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}addsoft ${WHITE}Allows you to add users to your softether setup "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}SoftAIO ${WHITE}All In One script with extra options "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}restart ${WHITE}Restarts softether vpnserver just incase of any errors "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}TCP     ${WHITE}Runs TCP Dump and dumps all logs to a remote file "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}Credits ${WHITE}List of script developers and coders"
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == AWS ]]
then
clear
echo -e ""
echo -e "${LIGHTRED}Removing MOTD.."
echo -e ""
cd etc
 
rm -rf /etc/motd
echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Now Updating System.."
sleep 1.5
echo -e ""
 
cd

sleep 1
echo -e "${LIGHTRED}Updating System.."
echo -e ""
apt-get update
echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Upgrading System.."
echo -e ""
 
apt-get upgrade -y
 
echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Downloading Needed Dependencies"
echo -e ""
apt-get install lsof -y
 
apt-get install git -y
 
apt-get install gcc dstat iftop screen scapy iptraf-ng -y
 
apt-get install curl -y
 
apt-get install iptables -y
 
apt-get install apache2 -y
 
apt-get install php5 php-pear php5-mysql -y
 
apt-get install tcpdump -y

echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Now Installing SoftEther Scripts.."
echo -e ""
 
wget -q https://pastebin.com/raw/v3StmF23 -O soft.py
 
wget -q https://pastebin.com/raw/BhuTQYnn -O softadd.py

wget -q https://pastebin.com/raw/SyL8TxwV -O SoftAIO.py

echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Upgrading System.. (CENTOS) ${LIGHTGREEN}"
echo -e ""

yum update -y

echo -e "${LIGHTCYAN}Finished.."
sleep 1
echo -e "${LIGHTRED}Downloading Needed Dependencies (Centos)"
echo -e ""

yum install python-paramiko gcc screen nano wget httpd iptables perl -y

yum install iptables dstat gcc nano iftop screen scapy git lsof tcpdump -y

yum install gcc cmake gmp gmp-devel libpcap-devel gengetopt byacc flex -y

yum install json-c-doc.noarch json-c.i686 json-c.x86_64 json-c-devel.i686 json-c-devel.x86_64 -y

yum install epel-release -y

yum install gengetopt -y

yum install python-paramiko gcc screen nano wget httpd iptables perl -y

yum install gcc cmake gmp gmp-devel libpcap-devel gengetopt byacc flex -y

yum install json-c-doc.noarch json-c.i686 json-c.x86_64 json-c-devel.i686 json-c-devel.x86_64 -y

yum install epel-release -y

yum install gengetopt -y

echo -e "${LIGHTCYAN}Finished!"

chmod 777 *
 
read
fi
if [[ $answer == openvpn ]]
then
clear
echo -e ""
wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh
read
fi
if [[ $answer == addvpn ]]
then
clear
echo -e ""
bash openvpn-install.sh
read
fi
if [[ $answer == soft ]]
then
clear
echo -e ""
python soft.py
read
fi
if [[ $answer == addsoft ]]
then
clear
echo -e ""
python softadd.py
read
fi
if [[ $answer == restart ]]
then
clear
echo -e ""
cd /usr/local/vpnserver/
 
./vpnserver start
read
fi
if [[ $answer == TCP ]]
then
clear
echo -e ""
echo -e "${WHITE} Enter Desired Filename:${LIGHTRED} \c"
read file
clear
echo -e ""
echo -e "${WHITE} Enter Desired Packets To Capture:${LIGHTRED} \c"
read number
clear
echo -e ""
tcpdump -X -v -i eth0 -n -c $number -s 82 > $file
read
fi
if [[ $answer == softalt ]]
then
clear
echo -e ""
python SoftAIO.py
read
fi
if [[ $answer == Credits ]]
then
clear
echo -e ""
echo -e "${RED}                                 [${WHITE}+${RED}]${LIGHTCYAN}Devs and coders${RED}[${WHITE}+${RED}]                                "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}FlexingOnLamers  ${WHITE}Creator of this script                  "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}Tanner           ${WHITE}Creator of the softether Script(s)                  "
echo -e "${LIGHTRED}[${WHITE}+${LIGHTRED}] ${WHITE}Type: ${LIGHTCYAN}Venom            ${WHITE}Co-Creator of the softether alternative script      "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
done
