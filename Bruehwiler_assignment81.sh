#!/bin/sh

clear
echo "#############################################"
echo "#                                           #"
echo "#           Installing LAMP                 #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
#To install epel-release
yum install epel-release -y
clear

#To install jq
yum install jq -y
clear

#To install httpd
yum install -y httpd
clear
echo "#############################################"
echo "#                                           #"
echo "#       Your Web server is installed        #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#Start apache on your vm
systemctl start httpd.service
clear
echo "#############################################"
echo "#                                           #"
echo "#       Apache has started in your VM       #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear


#Tell firewalld to allow traffic to our web server
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
clear 
echo "#############################################"
echo "#                                           #"
echo "#      Allowed traffic to our web server    #"
echo "#            both web traffic and           #"
echo "#            encrypted web traffic          #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#Reload the firewall to apply the changes
firewall-cmd --reload
clear
echo "###################################################"
echo "#                                                 #"
echo "#       Reload the firewall to apply changes      #"
echo "#                                                 #"
echo "###################################################"
sleep 1
sleep 1
clear


#To enable apache to start on boot
systemctl enable httpd.service
clear
echo "###################################################"
echo "#                                                 #"
echo "#       Enabled Apache to start on boot           #"
echo "#                                                 #"
echo "###################################################"
sleep 1
sleep 1
clear

#Install PHP Apache Modules
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install -y yum-utils
yum-config-manager --enable remi-php56
yum install -y php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo
clear
echo "###################################################"
echo "#                                                 #"
echo "#       Installed all PHP Apache Modules          #"
echo "#                                                 #"
echo "###################################################"
sleep 1
sleep 1
clear

#To restart apache so that it recognizes the new module
systemctl restart httpd.service
clear
echo "#########################################"
echo "#                                       #"
echo "#    Restarted Apache web server in     #"
echo "#     order to recognizes all           #"
echo "#         the new module installed      #"
echo "#                                       #"
echo "#########################################"
sleep 1
sleep 1
clear

#Setting up MySQL Server
echo "Setting up MySQL Server"
echo "#############################################"
echo "#                                           #"
echo "#         Setting up MySQL Server           #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#Install MySQL (MariaDB)
yum install -y mariadb-server mariadb
clear
echo "#############################################"
echo "#                                           #"
echo "#       Installed mariadb in the system     #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#To start MariaDB
systemctl start mariadb
clear
echo "#############################################"
echo "#                                           #"
echo "#       Starting mariadb in the system      #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear


#Running the mysql_secure_installation script
echo -e "\nY\nBRUEHWILER\nBRUEHWILER\nY\nY\nY\nY\n " | mysql_secure_installation
clear
echo "#############################################"
echo "#                                           #"
echo "#    my_secure_installation script done     #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#To enable MariaDB to start on boot
systemctl enable mariadb.service
clear
echo "#############################################"
echo "#                                           #"
echo "#    Enabled mariadb to start on boot       #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#command to create a database(commands to input)
mysql -u root -pBRUEHWILER -e "CREATE DATABASE wordpress;"
clear
echo "#############################################"
echo "#                                           #"
echo "#    Created wordpress database             #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1


#to create a new MySQL user account(commands to input)
mysql -u root -pBRUEHWILER -e "CREATE USER wp_user@localhost IDENTIFIED BY 'wp_07jul23';"
mysql -u root -pBRUEHWILER -e "GRANT ALL PRIVILEGES ON wordpress.* TO wp_user@localhost IDENTIFIED BY 'wp_07jul23';"
mysql -u root -pBRUEHWILER -e "FLUSH PRIVILEGES;"
echo "#############################################"
echo "#                                           #"
echo "#    Created wp_user in mariadb and gave    #"
echo "#    wp_user access to wordpress database   #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

clear
echo "#############################################"
echo "#                                           #"
echo "#           Installing                      #"
echo "#                                           #"
echo "#############################################"
sleep 1

clear
echo "#############################################"
echo "#                                           #"
echo "# 25 % .......                              #"
echo "#                                           #"
echo "#############################################"
sleep 1

clear
echo "#############################################"
echo "#                                           #"
echo "# 50 % ............                         #"
echo "#                                           #"
echo "#############################################"
sleep 1

clear
echo "#############################################"
echo "#                                           #"
echo "# 75 % .........................            #"
echo "#                                           #"
echo "#############################################"
sleep 1

clear
echo "#############################################"
echo "#                                           #"
echo "# 99 % .................................    #"
echo "#                                           #"
echo "#############################################"
sleep 1
clear

echo "#############################################"
echo "#                                           #"
echo "#  Finish installing LAMP in the system     #"
echo "#                                           #"
echo "#############################################"
sleep 1

