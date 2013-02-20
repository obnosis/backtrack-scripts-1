#!/bin/bash 
#
#
#
#
#
#
menu()
{
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
echo -e "\e[1;31m1. Aircrack\e[0m"
echo -e "\e[1;31m2. Wpscan\e[0m"
echo -e "\e[1;31m3. Exploitdb\e[0m"
echo -e "\e[1;31m4. Fasttrack\e[0m"
echo -e "\e[1;31m5. Sqlmap\e[0m"
echo -e "\e[1;31m6. Giskismet\e[0m"
echo -e "\e[1;31m7. W3af\e[0m"
echo -e "\e[1;31m8. Nikto\e[0m"
echo -e "\e[1;31m9. subterfuge\e[0m"
echo -e "\e[1;31m10. Fern-wifi-cracker\e[0m"
echo -e "\e[1;31m11. Set\e[0m"
echo -e "\e[1;31m12. Joomscan\e[0m"
echo -e "\e[1;31m13. Metasploit\e[0m"
echo -e "\e[1;31m14. Backtrack\e[0m"
echo -e "\e[1;31m15. Jigsaw\e[0m"
echo -e "\e[1;31m16. DnsRecon\e[0m"
echo -e "\e[1;31m17. TheHarvester\e[0m"
echo -e "\e[1;31m18. Recon-ng\e[0m"
echo -e "\e[1;31m19. GhostPhisher\e[0m"
echo -e "\e[1;31m20. Beef\e[0m"
echo -e "\e[1;31m21. Smartphone-pentest-framework\e[0m"
echo -e "\e[1;31m22. UpdateAll\e[0m"
echo
echo -e "\e[1;31m0. Exit\e[0m"
echo
echo -e "\e[0;36m[*]Created By Jay Townsend aka L1ghtn1ng[*]\e[0m"
echo
echo -ne "\e[1;33m[*]Please select a number then [Enter]: \e[0m"

read option
}

aircrack()
{
  echo -e "\e[1;32mUpdating Aircrack-ng\e[0m"
	cd /pentest/wireless/aircrack-ng;
	svn cleanup;
	svn update;
	cd
}

wpscan()
{
if [ -d /pentest/web/wpscan/.git ]; then 
	echo -e "\e[1;32mUpdating Wpscan\e[0m"
	cd /pentest/web/wpscan; 
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Wpscan\e[0m"
	rm -rf /pentest/web/wpscan;
	git clone https://github.com/wpscanteam/wpscan.git /pentest/web/wpscan 
fi
}

exploitdb()
{
echo -e "\e[1;32mUpdating Exploit-db\e[0m"
	cd /pentest/exploits/exploitdb; 
	svn cleanup;
	svn update;
	cd
}

fasttrack()
{
	echo -e "\e[1;32mUpdating Fasttrack\e[0m"
	cd /pentest/exploits/fasttrack; 
	svn cleanup; 
	svn update; 
	cd
}

sqlmap()
{
if [ -d /pentest/database/sqlmap/.git ]; then 
	echo -e "\e[1;32mUpdating Sqlmap\e[0m"
	cd /pentest/database/sqlmap; 
	git pull;
	cd 
else 
	echo -e "\e[1;33mInstalling Sqlmap\e[0m"
	rm -rf /pentest/database/sqlmap/;
	git clone git://github.com/sqlmapproject/sqlmap.git /pentest/database/sqlmap/ 
fi
}

giskismet()
{
echo -e "\e[1;32mUpdating GISKismet\e[0m"
	cd /pentest/wireless/giskismet; 
	svn cleanup;
	svn update;
	cd
}

w3af()
{
echo -e "\e[1;32mUpdating W3af\e[0m"
	cd /pentest/web/w3af/; 
	svn cleanup;
	svn update;
	cd
}

nikto()
{
if [ -d /pentest/web/nikto/.git ]; then 
	echo -e "\e[1;32mUpdating Nikto\e[0m"
	cd /pentest/web/nikto;
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Nikto\e[0m"
	rm -rf /pentest/web/nikto/;
	git clone git://github.com/sullo/nikto.git /pentest/web/nikto/ 
fi
}

subterfuge()
{
echo -e "\e[1;32mUpdating Subterfuge\e[0m"
	cd /usr/share/subterfuge; 
	svn cleanup; 
	svn update; 
	cd
}

fern()
{
echo -e "\e[1;32mUpdating Fern WiFi Cracker\e[0m"
	cd /pentest/wireless/fern-wifi-cracker; 
	svn cleanup; 
	svn update; 
	cd
}

Set()
{
if [ -d /pentest/exploits/set/.git ]; then 
	echo -e "\e[1;32mUpdating SET\e[0m"
	cd /pentest/exploits/set; 
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling SET\e[0m"
	rm -rf /pentest/exploits/set/;
	git clone https://github.com/trustedsec/social-engineer-toolkit/ /pentest/exploits/set/ 
fi	
}

joomscan()
{
echo -e "\e[1;32mUpdating JoomScan\e[0m"
	cd /pentest/web/joomscan; 
	./joomscan.pl update; 
	cd
}

msf()
{
echo -e "\e[1;32mUpdating Metasploit\e[0m"
	msfupdate
}
bt()
{
echo -e "\e[1;32mUpdating Backtrack\e[0m"
	apt-get update; 
	apt-get upgrade -y; 
	apt-get dist-upgrade -y; 
	apt-get autoclean; 
	apt-get clean; 
	apt-get autoremove -y
}

jigsaw()
{
if [ -d /pentest/enumeration/jigsaw/.git ]; then 
	echo -e "\e[1;32mUpdating Jigsaw\e[0m"
	cd /pentest/enumeration/jigsaw; 
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Jigsaw\e[0m"
	rm -rf /pentest/enumeration/jigsaw/;
	git clone git://github.com/pentestgeek/jigsaw.git /pentest/enumeration/jigsaw/
fi
}

dnsrecon()
{
if [ -d /pentest/enumeration/dns/dnsrecon/.git ]; then 
	echo -e "\e[1;32mUpdating Dnsrecon\e[0m"
	cd /pentest/enumeration/dns/dnsrecon;
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Dnsrecon\e[0m"
	rm -rf /pentest/enumeration/dns/dnsrecon/;
	git clone git://github.com/darkoperator/dnsrecon.git /pentest/enumeration/dns/dnsrecon/
fi 
}

theharvester()
{
if [ -d /pentest/enumeration/theharvester/.svn ]; then 
	echo -e "\e[1;32mUpdating TheHarvester\e[0m"
	cd /pentest/enumeration/theharvester; 
	svn cleanup;
	svn update;
	cd
else 
	echo -e "\e[1;33mInstalling theHarvester\e[0m"
	rm -rf /pentest/enumeration/theharvester/;
	svn co http://theharvester.googlecode.com/svn/trunk/ /pentest/enumeration/theharvester/ 
fi
}

recon()
{
if [ -d /pentest/enumeration/recon-ng/.git ]; then 
	echo -e "\e[1;32mUpdating Recon-ng\e[0m"
	cd /pentest/enumeration/recon-ng; 
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Recon-ng\e[0m"
	git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /pentest/enumeration/recon-ng/
fi
}

ghost()
{
if [ -d /pentest/sniffers/ghost-phisher/.svn ]; then 
	echo -e "\e[1;32mUpdating Ghost Phisher\e[0m"
	cd /pentest/sniffers/ghost-phisher; 
	svn cleanup; 
	svn update;
	cd
else 
	echo -e "\e[1;33mInstalling Ghost Phisher\e[0m"
	svn co http://ghost-phisher.googlecode.com/svn/Ghost-Phisher/ /pentest/sniffers/ghost-phisher/; 
	chmod 755 /pentest/sniffers/ghost-phisher/ghost.py
fi
}

beef()
{
if [ -d /pentest/web/beef/.git ]; then 
	echo -e "\e[1;32mUpdating Beef\e[0m"
	cd /pentest/web/beef; 
	git pull;
	cd
else 
	echo -e "\e[1;33mInstalling Beef\e[0m"
	rm -rf /pentest/web/beef;
	git clone https://github.com/beefproject/beef.git /pentest/web/beef
fi
}

spf()
{
if [ -d /pentest/exploits/smartphone-pentest-framework/.git ]; then
	echo -e "\e[1;32mUpdating Smartphone-pentest-framework\e[0m"
	cd /pentest/exploits/smartphone-pentest-framework;
	git pull;
	cd
else
	echo -e "\e[1;33mInstalling Smartphone-pentest-framework\e[0m"
	rm -rf /pentest/exploits/smartphone-pentest-framework;
	git clone https://github.com/georgiaw/Smartphone-Pentest-Framework.git /pentest/exploits/smartphone-pentest-framework
fi 
}

updateall()
{
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
}

error()
{	
	echo
	echo -e "\e[1;31mError, That is not valid Input, Please pick a number from 0-22, Returning to menu\e[0m"
}

######################################################## End of functions ########################################################################################

############################################################## Menu ##############################################################################################

while sleep 5;
do
menu

case $option in
	1)
	aircrack
	;;
	2)
	wpscan
	;;
	3)
	exploitdb
	;;
	4)
	fasttrack
	;;
	5)
	sqlmap
	;;
	6)
	giskismet
	;;
	7)
	w3af
	;;
	8)
	nikto
	;;
	9)
	subterfuge
	;;
	10)
	fern
	;;
	11)
	Set
	;;
	12)
	joomscan
	;;
	13)
	msf
	;;
	14)
	bt
	;;
	15)
	jigsaw
	;;
	16)
	dnsrecon
	;;
	17)
	theharvester
	;;
	18)
	recon
	;;
	19)
	ghost
	;;
	20)
	beef
	;;
	21)
	spf
	;;
	22)
	updateall
	;;
	0)
	break
	;;
	*)
	error
	;;
esac
done
