#!/bin/bash 
# Please give me credit if
# You use any of my code
# Thank you
#
#
#
banner(){
clear
echo -e "\e[0;32m
######  #######    ####### ####### ####### #       
#     #    #          #    #     # #     # #       
#     #    #          #    #     # #     # #       
######     #          #    #     # #     # #       
#     #    #          #    #     # #     # #       
#     #    #          #    #     # #     # #       
######     #          #    ####### ####### ####### 
                                                   
#     # ######  ######     #    ####### ####### ######  
#     # #     # #     #   # #      #    #       #     # 
#     # #     # #     #  #   #     #    #       #     # 
#     # ######  #     # #     #    #    #####   ######  
#     # #       #     # #######    #    #       #   #   
#     # #       #     # #     #    #    #       #    #  
 #####  #       ######  #     #    #    ####### #     #\e[0m"
echo
echo -e "\e[0;36m[*]Created By Jay Townsend aka L1ghtn1ng[*]\e[0m"
}

menu(){
banner
echo                   
echo -e "\e[1;31m1) Update Tools Menu\e[0m"
echo -e "\e[1;31m2) Run Tools Menu\e[0m"
echo
echo -e "\e[1;31m0) Exit\e[0m"
echo
echo
echo -ne "\e[1;33m[*]Please select a number then [Enter]:\e[0m "

read option

case $option in
	1)
	toolmenu;;
	2)
	run_tools;;
	0)
	break;;
	*)
	error;;
esac 
}

toolmenu(){
banner
echo                   
echo -e "\e[1;31m1) Aircrack\e[0m"
echo -e "\e[1;31m2) Wpscan\e[0m"
echo -e "\e[1;31m3) Exploitdb\e[0m"
echo -e "\e[1;31m4) Fasttrack\e[0m"
echo -e "\e[1;31m5) Sqlmap\e[0m"
echo -e "\e[1;31m6) Giskismet\e[0m"
echo -e "\e[1;31m7) W3af\e[0m"
echo -e "\e[1;31m8) Nikto\e[0m"
echo -e "\e[1;31m9) subterfuge\e[0m"
echo -e "\e[1;31m10) Fern-wifi-cracker\e[0m"
echo -e "\e[1;31m11) Set\e[0m"
echo -e "\e[1;31m12) Joomscan\e[0m"
echo -e "\e[1;31m13) Metasploit\e[0m"
echo -e "\e[1;31m14) Backtrack\e[0m"
echo -e "\e[1;31m15) Jigsaw\e[0m"
echo -e "\e[1;31m16) DnsRecon\e[0m"
echo -e "\e[1;31m17) TheHarvester\e[0m"
echo -e "\e[1;31m18) Recon-ng\e[0m"
echo -e "\e[1;31m19) GhostPhisher\e[0m"
echo -e "\e[1;31m20) Beef\e[0m"
echo -e "\e[1;31m21) Smartphone-pentest-framework\e[0m"
echo -e "\e[1;31m22) Scripts\e[0m"
echo -e "\e[1;31m23) Nmap\e[0m"
echo -e "\e[1;31m24) Wifite\e[0m"
echo -e "\e[1;31m25) Weevely\e[0m"
echo -e "\e[1;31m26) Hexorbase\e[0m"
echo -e "\e[1;31m27) DnsEnum\e[0m"
echo -e "\e[1;31m28) EasyCred\e[0m"
echo -e "\e[1;31m29) GooFile\e[0m"
echo -e "\e[1;31m30) Horst\e[0m"
echo -e "\e[1;31m31) UpdateAll\e[0m"
echo
echo -e "\e[1;31m99) Return to main menu\e[0m"
echo
echo
echo -ne "\e[1;33m[*]Please select a number then [Enter]:\e[0m "

read option

case $option in
	1) aircrack;;
	2) wpscan;;
	3) exploitdb;;
	4) fasttrack;;
	5) sqlmap;;
	6) giskismet;;
	7) w3af;;
	8) nikto;;
	9) subterfuge;;
	10) fern;;
	11) Set;;
	12) joomscan;;
	13) msf;;
	14) bt;;
	15) jigsaw;;
	16) dnsrecon;;
	17) theharvester;;
	18) recon;;
	19) ghost;;
	20) beef;;
	21) spf;;
	22) script_update;;
	23) nmap;;
	24) wifite;;
	25) weevely;;
	26) hexorbase;;
	27) dnsenum;;
	28) easycred;;
	29) goofile;;
	30) horst;;
	31) updateall;;
	99) menu;;
	*) error;;
esac
}

run_tools(){
banner
echo                   
echo -e "\e[1;31m1) Recon-ng\e[0m"
echo -e "\e[1;31m2) GhostPhisher\e[0m"
echo
echo -e "\e[1;31m99) Return to main menu\e[0m"
echo
echo
echo -ne "\e[1;33m[*]Please select a number then [Enter]:\e[0m "

read option

case $option in
	1)
	cd /pentest/enumeration/recon-ng
	./recon-ng.py
	;;
	2)
	cd /pentest/sniffers/ghost-phisher
	./ghost.py
	;;
	99)
	menu
	;;
	*)
	error
	;;
esac
}

aircrack(){
echo -e "\e[1;32mUpdating Aircrack-ng\e[0m"
cd /pentest/wireless/aircrack-ng
svn cleanup
svn update
}

wpscan(){
if [ -d /pentest/web/wpscan/.git ]; then 
	echo -e "\e[1;32mUpdating Wpscan\e[0m"
	cd /pentest/web/wpscan 
	git pull
else 
	echo -e "\e[1;33mInstalling Wpscan\e[0m"
	rm -rf /pentest/web/wpscan
	git clone https://github.com/wpscanteam/wpscan.git /pentest/web/wpscan 
fi
}

exploitdb(){
if [ -d /pentest/exploits/exploitdb/.svn ]; then 
	echo -e "\e[1;32mUpdating Exploit-db\e[0m"
	cd /pentest/exploits/exploitdb 
	svn cleanup
	svn update
else 
	echo -e "\e[1;33mInstalling Exploit-db\e[0m"
	rm -rf /pentest/exploits/exploitdb
	svn co svn://svn.exploit-db.com/exploitdb /pentest/exploits/exploitdb/ 
fi
}

fasttrack(){
echo -e "\e[1;32mUpdating Fasttrack\e[0m"
cd /pentest/exploits/fasttrack 
svn cleanup 
svn update
}

sqlmap(){
if [ -d /pentest/database/sqlmap/.git ]; then 
	echo -e "\e[1;32mUpdating Sqlmap\e[0m"
	cd /pentest/database/sqlmap 
	git pull
else 
	echo -e "\e[1;33mInstalling Sqlmap\e[0m"
	rm -rf /pentest/database/sqlmap/
	git clone git://github.com/sqlmapproject/sqlmap.git /pentest/database/sqlmap/ 
fi
}

giskismet(){
echo -e "\e[1;32mUpdating GISKismet\e[0m"
	cd /pentest/wireless/giskismet 
	svn cleanup
	svn update
}

w3af(){
echo -e "\e[1;32mUpdating W3af\e[0m"
	cd /pentest/web/w3af/ 
	svn cleanup
	svn update
}

nikto(){
if [ -d /pentest/web/nikto/.git ]; then 
	echo -e "\e[1;32mUpdating Nikto\e[0m"
	cd /pentest/web/nikto
	git pull
else 
	echo -e "\e[1;33mInstalling Nikto\e[0m"
	rm -rf /pentest/web/nikto/
	git clone git://github.com/sullo/nikto.git /pentest/web/nikto/ 
fi
}

subterfuge(){
echo -e "\e[1;32mUpdating Subterfuge\e[0m"
	cd /usr/share/subterfuge 
	svn cleanup
	svn update 
}

fern(){
echo -e "\e[1;32mUpdating Fern WiFi Cracker\e[0m"
	cd /pentest/wireless/fern-wifi-cracker
	svn cleanup
	svn update
}

Set(){
if [ -d /pentest/exploits/set/.git ]; then 
	echo -e "\e[1;32mUpdating SET\e[0m"
	cd /pentest/exploits/set
	git pull
else 
	echo -e "\e[1;33mInstalling SET\e[0m"
	rm -rf /pentest/exploits/set/
	git clone https://github.com/trustedsec/social-engineer-toolkit/ /pentest/exploits/set/ 
fi	
}

joomscan(){
echo -e "\e[1;32mUpdating JoomScan\e[0m"
	cd /pentest/web/joomscan 
	./joomscan.pl update
}

msf(){
if [ -d /opt/metasploit/msf3/.git ]; then 
	echo -e "\e[1;32mUpdating Metasploit\e[0m"
	cd /opt/metasploit/msf3/
	git pull
else
	echo -e "\e[1;33mInstalling Metasploit\e[0m"
	rm -rf /opt/metasploit/msf3/
	git clone git://github.com/rapid7/metasploit-framework.git /opt/metasploit/msf3/
fi
}

bt(){
echo -e "\e[1;32mUpdating Backtrack\e[0m"
apt-get update 
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoclean
apt-get clean
apt-get autoremove -y
}

jigsaw(){
if [ -d /pentest/enumeration/jigsaw/.git ]; then 
	echo -e "\e[1;32mUpdating Jigsaw\e[0m"
	cd /pentest/enumeration/jigsaw
	git pull
else 
	echo -e "\e[1;33mInstalling Jigsaw\e[0m"
	rm -rf /pentest/enumeration/jigsaw/
	git clone git://github.com/pentestgeek/jigsaw.git /pentest/enumeration/jigsaw/
fi
}

dnsrecon(){
if [ -d /pentest/enumeration/dns/dnsrecon/.git ]; then 
	echo -e "\e[1;32mUpdating Dnsrecon\e[0m"
	cd /pentest/enumeration/dns/dnsrecon
	git pull
else 
	echo -e "\e[1;33mInstalling Dnsrecon\e[0m"
	rm -rf /pentest/enumeration/dns/dnsrecon/
	git clone git://github.com/darkoperator/dnsrecon.git /pentest/enumeration/dns/dnsrecon/
fi
}

theharvester(){
if [ -d /pentest/enumeration/theharvester/.svn ]; then 
	echo -e "\e[1;32mUpdating TheHarvester\e[0m"
	cd /pentest/enumeration/theharvester 
	svn cleanup
	svn update
else 
	echo -e "\e[1;33mInstalling theHarvester\e[0m"
	rm -rf /pentest/enumeration/theharvester/
	svn co http://theharvester.googlecode.com/svn/trunk/ /pentest/enumeration/theharvester/ 
fi
}

recon(){
if [ -d /pentest/enumeration/recon-ng/.git ]; then 
	echo -e "\e[1;32mUpdating Recon-ng\e[0m"
	cd /pentest/enumeration/recon-ng
	git pull
else 
	echo -e "\e[1;33mInstalling Recon-ng\e[0m"
	git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /pentest/enumeration/recon-ng/
fi
}

ghost(){
if [ -d /pentest/sniffers/ghost-phisher/.svn ]; then 
	echo -e "\e[1;32mUpdating Ghost Phisher\e[0m"
	cd /pentest/sniffers/ghost-phisher
	svn cleanup 
	svn update
else 
	echo -e "\e[1;33mInstalling Ghost Phisher\e[0m"
	svn co http://ghost-phisher.googlecode.com/svn/Ghost-Phisher/ /pentest/sniffers/ghost-phisher/ 
	chmod 755 /pentest/sniffers/ghost-phisher/ghost.py
fi
}

beef(){
if [ -d /pentest/web/beef/.git ]; then 
	echo -e "\e[1;32mUpdating Beef\e[0m"
	cd /pentest/web/beef
	git pull
else 
	echo -e "\e[1;33mInstalling Beef\e[0m"
	rm -rf /pentest/web/beef
	git clone https://github.com/beefproject/beef.git /pentest/web/beef
fi
}

spf(){
if [ -d /pentest/exploits/smartphone-pentest-framework/.git ]; then
	echo -e "\e[1;32mUpdating Smartphone-pentest-framework\e[0m"
	cd /pentest/exploits/smartphone-pentest-framework
	git pull
else
	echo -e "\e[1;33mInstalling Smartphone-pentest-framework\e[0m"
	rm -rf /pentest/exploits/smartphone-pentest-framework
	git clone https://github.com/georgiaw/Smartphone-Pentest-Framework.git /pentest/exploits/smartphone-pentest-framework
fi 
}

script_update(){ 
echo -e "\e[1;32mUpdating Backtrack-Scripts\e[0m"
cd /root/backtrack-scripts 
git pull
}

nmap(){
if [ -d /opt/nmap-svn/.svn ]; then
	echo -e "\e[1;32mUpdating Nmap\e[0m"
	cd /opt/nmap-svn/
	svn cleanup
	svn update
	cp /opt/nmap-svn/nmap /usr/local/bin/
	cp /opt/nmap-svn/nmap-mac-prefixes /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-os-db /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-payloads /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-protocols /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-rpc /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-service-probes /usr/local/share/nmap/
	cp /opt/nmap-svn/nmap-services /usr/local/share/nmap/
	cp /opt/nmap-svn/nse_main.lua /usr/local/share/nmap/
	cp -r /opt/nmap-svn/nselib/ /usr/local/share/nmap/
	cp -r /opt/nmap-svn/scripts/ /usr/local/share/nmap/ 
else
	echo -e "\e[1;33mRemoving nmap files and folders\e[0m"
	rm -rf /root/.zenmap/
	rm -rf /opt/nmap-svn/
	rm -rf /usr/local/share/ncat/
	rm -rf /usr/local/share/nmap/
	rm -rf /usr/local/share/zenmap/
	rm /usr/local/bin/ncat
	rm /usr/local/bin/ndiff
	rm /usr/local/bin/nmap
	rm /usr/local/bin/nmap-update
	rm /usr/local/bin/nmapfe
	rm /usr/local/bin/nping
	rm /usr/local/bin/uninstall_zenmap
	rm /usr/local/bin/xnmap
	rm /usr/local/bin/zenmap
	rm /usr/local/share/nmap
	rm /usr/local/share/zenmap

	apt-get remove -y nmap
	echo
	echo -e "\e[1;33mInstalling nmap from svn\e[0m"
	svn co https://svn.nmap.org/nmap/ /opt/nmap-svn/
	cd /opt/nmap-svn/
	./configure && make && make install
	echo
	echo -e "\e[1;32mUpdating locate db\e[0m"
	updatedb
fi
}

wifite(){
if [ -d /pentest/wireless/wifite/.svn ]; then 
	echo -e "\e[1;32mUpdating WiFite\e[0m"
	cd /pentest/wireless/wifite 
	svn cleanup
	svn update
else 
	echo -e "\e[1;33mInstalling WiFite\e[0m"
	rm -rf /pentest/wireless/wifite/
	svn co http://wifite.googlecode.com/svn/trunk/ /pentest/wireless/wifite/
fi
}

weevely(){
if [ -d /pentest/backdoors/web/weevely/.git ]; then
	echo -e "\e[1;32mUpdating Weevely\e[0m"
	cd /pentest/backdoors/web/weevely
	git pull
else
	echo -e "\e[1;33mInstalling weevely\e[0m"
	rm -rf /pentest/backdoors/web/weevely
	git clone https://github.com/epinna/Weevely.git /pentest/backdoors/web/weevely
fi 
}

hexorbase(){
if [ -d /pentest/database/hexorbase/.svn ]; then 
	echo -e "\e[1;32mUpdating HexorBase\e[0m"
	cd /pentest/database/hexorbase
	svn cleanup
	svn update
else 
	echo -e "\e[1;33mInstalling HexorBase\e[0m"
	rm -rf /pentest/database/hexorbase
	svn co http://hexorbase.googlecode.com/svn/HexorBase/ /pentest/database/hexorbase/
fi
}

dnsenum(){
if [ -d /pentest/enumeration/dns/dnsenum/.svn ]; then 
	echo -e "\e[1;32mUpdating DnsEnum\e[0m"
	cd /pentest/enumeration/dns/dnsenum 
	svn cleanup 
	svn update
else 
	echo -e "\e[1;33mInstalling DnsEnum\e[0m"
	rm -rf /pentest/enumeration/dns/dnsenum/
	svn co http://dnsenum.googlecode.com/svn/trunk/ /pentest/enumeration/dns/dnsenum/
fi
}

easycred(){
if [ -d /pentest/scanners/easy-creds/.git ]; then 
	echo -e "\e[1;32mUpdating Easy-Creds\e[0m"
	cd /pentest/scanners/easy-creds/
	git pull
else 
	echo -e "\e[1;33mInstalling Easy-Creds\e[0m"
	rm -rf /pentest/scanners/easy-creds/
	git clone https://github.com/brav0hax/easy-creds.git /pentest/scanners/easy-creds/
fi
}

goofile(){
if [ -d /pentest/enumeration/google/goofile/.svn ]; then 
	echo -e "\e[1;32mUpdating Goofile\e[0m"
	cd /pentest/enumeration/google/goofile
	svn up
else 
	echo -e "\e[1;33mInstalling Goofile\e[0m"
	rm -rf /pentest/enumeration/google/goofile/
	svn co http://goofile.googlecode.com/svn/trunk/ /pentest/enumeration/google/goofile/
fi
}

horst(){
if [ -d /pentest/wireless/horst/.git ]; then 
	echo -e "\e[1;32mUpdating HORST\e[0m"
	cd /pentest/wireless/horst/
	git pull
else 
	echo -e "\e[1;33mInstalling HORST\e[0m"
	rm -rf /pentest/wireless/horst/
	git clone git://github.com/br101/horst.git /pentest/wireless/horst/
	cd /pentest/wireless/horst/
	make
fi
}

updateall(){
aircrack
wpscan
exploitdb
fasttrack
sqlmap
giskismet
w3af
nikto
subterfuge
fern
Set
joomscan
msf
bt
jigsaw
dnsrecon
theharvester
recon
ghost
beef
spf
script_update
nmap
wifite
weevely
hexorbase
dnsenum
easycred
goofile
horst
}

error(){	
echo
echo -e "\e[1;31mError, That is not valid input. Please choose a number from menu. Returning to menu.\e[0m"
sleep 4
}

########## Program starts ##########

while : 
do
menu
done
