#!/bin/sh


# This command will put current date as mm-dd-yyyy in $date
date=$(date '+%m-%d-%Y')

#This command will create backups folder in /opt
mkdir /opt/backups
echo "#############################################"
echo "#                                           #"
echo "#   Creating backups directory in /opt      #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will redirect you to /backups directory
cd /opt/backups
echo "#############################################"
echo "#                                           #"
echo "#   Going to backups directory              #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will export the wordpress database in backups directory
mysqldump -u root -pBRUEHWILER wordpress > wordpress${date}.sql
echo "#############################################"
echo "#                                           #"
echo "# Creating a backup for wordpress database  #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
clear

#This command will compress the wordpress${date}.sql file to a .gz file
gzip -cv wordpress${date}.sql > wordpress${date}.gz 
echo "#############################################"
echo "#                                           #"
echo "# Compressing the backupfile to a .gz file  #"
echo "#                                           #"
echo "#############################################"
sleep 1
clear


echo "#############################################"
echo "#                                           #"
echo "#         Completing Creation of            #"
echo "#        Wordpress Database Backup          #"
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
echo "#            Done creating a                #"
echo "#        Wordpress Database Backup          #"
echo "#                                           #"
echo "#############################################"
sleep 1
sleep 1
sleep 1




