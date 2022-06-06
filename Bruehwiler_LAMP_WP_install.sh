#!/bin/sh

clear
echo "#############################################"
echo "#                                           #"
echo "#           Installing LAMP                 #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will install ntpdate to update the date and time of the VM
yum install -y ntpdate
echo "#############################################"
echo "#                                           #"
echo "#           Installed ntpdate               #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will update date and time
ntpdate ntp.ubuntu.com
echo "#############################################"
echo "#                                           #"
echo "#   Updated the time and date of the VM     #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear


#This command will install httpd on your VM
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

#This command will start apache on your VM
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


#This command will tell firewalld to allow traffic to our web server
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

#This command will reload the firewall to apply the changes
firewall-cmd --reload
clear
echo "###################################################"
echo "#                                                 #"
echo "#       Reloaded the firewall to apply changes    #"
echo "#                                                 #"
echo "###################################################"
sleep 1
sleep 1
clear


#This command will enable apache to start on boot
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

#These commands will Install and update PHP Apache and its Modules that is necessary for installing LAMP and WordPress
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install -y yum-utils
yum-config-manager --enable remi-php56
yum install -y php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo
clear
echo "###################################################"
echo "#                                                 #"
echo "#     Installed PHP Apache and all its Modules    #"
echo "#     that is necessary for installing LAMP       #"
echo "#                   and WordPress                 #"  
echo "#                                                 #"
echo "###################################################"
sleep 1
sleep 1
clear

#This command will restart apache so that it recognizes the new module
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
echo "#############################################"
echo "#                                           #"
echo "#         Setting up MySQL Server           #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will install MySQL (MariaDB)
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

#This command will start MariaDB
systemctl start mariadb
clear
echo "#############################################"
echo "#                                           #"
echo "#       Started mariadb                     #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear


#This command will run mysql_secure_installation script
#This script will remove some dangerous defaults and lock down access to our database system a little bit.
echo -e "\nY\nBRUEHWILER\nBRUEHWILER\nY\nY\nY\nY\n " | mysql_secure_installation
clear
echo "#############################################"
echo "#                                           #"
echo "#    my_secure_installation script done     #"
echo "#      Removed some dangerouse defaults     #"
echo "#    and made our database more safe        #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will enable MariaDB to start on boot
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

#This command will create a database named "wordpress"(commands to input)
mysql -u root -pBRUEHWILER -e "CREATE DATABASE wordpress;"
clear
echo "#############################################"
echo "#                                           #"
echo "#    Created wordpress database             #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1


#This command will create a new MySQL user account and grants privileges to database "wordpress"(commands to input)
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
echo "#   Completing the installation of LAMP     #"
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
echo "#  Done installing LAMP in the system       #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
sleep 1
clear

echo "#############################################"
echo "#                                           #"
echo "#  Installing WordPress is starting         #"
echo "#                                           #"
echo "#############################################"
sleep 1
clear

#This command will bring you to root directory
cd ~
echo "#############################################"
echo "#                                           #"
echo "#  Going to root directory                  #"
echo "#                                           #"
echo "#############################################"
sleep 1
clear

#This command will download and install WordPress
wget http://wordpress.org/latest.tar.gz
clear
echo "#############################################"
echo "#                                           #"
echo "#  Downloaded and installed WordPress       #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will extract the archived file
tar xzvf latest.tar.gz
clear
echo "#############################################"
echo "#                                           #"
echo "#  Extracted the archived file of wordpress #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will transfer the file to /var/www/html directory
rsync -avP ~/wordpress/ /var/www/html/
clear
echo "#############################################"
echo "#                                           #"
echo "#  Transfered the extracted file to         #"
echo "#       /var/www/html/ directory            #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will add uploads directory
mkdir /var/www/html/wp-content/uploads
echo "#############################################"
echo "#                                           #"
echo "#  Added an uploads directory in            #"  
echo "#          /var/www/html/ directory         #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will assign correct ownership and permission to the wordpress files
chown -R apache:apache /var/www/html/*
echo ""
echo "#############################################"
echo "#                                           #"
echo "# Assigned correct ownership and permission #"
echo "#      to the wordpress files inside the    #"
echo "#                  /var/www/html/ directory #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will bring you to apache root directory
cd /var/www/html/
echo "#############################################"
echo "#                                           #"
echo "#  Going to the Apache root directory       #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will will create wp-config.php file by extracting wp-config-sample.php
#and configure the database information
cat wp-config-sample.php | sed -e 's/database_name_here/wordpress/g' | sed -e 's/username_here/wp_user/g' | sed -e 's/password_here/wp_07jul23/g' > wp-config.php

clear
echo "#############################################"
echo "#                                           #"
echo "#  Configured the wp-config.php file        #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1

clear
echo "#############################################"
echo "#                                           #"
echo "# Completing the installation of WordPress  #"
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
echo "#       Done installing LAMP and            #"
echo "#        WordPress in the system            #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
sleep 1




