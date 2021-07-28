#!/bin/bash
echo "* Create MySQL user: Create"

mysql -u root -p "create user 'user'@'%' identified by 'trhost123';"

echo "* Create MySQL user: Privileges"
mysql -u root -p "grant all privileges on *.* to 'user'@'%' with grant option;"

echo "* Flushing privileges.."

mysql -u root -p "FLUSH PRIVILEGES;"


echo "* Create MySQL Server user."

echo "* Create MySQL server: Create"
mysql -u root -p "create user 'server'@'%' identified by 'trhost123';"

echo "* Create MySQL server: Database"
mysql -u root -p "CREATE DATABASE server;"

echo "* Create MySQL Server: Privileges"
mysql -u root -p "grant all privileges on server.* to 'server'@'%';"

echo "* Flushing privileges.."

mysql -u root -p "FLUSH PRIVILEGES;"

echo "* MySQL database created & configured!"
echo "* Se ha instalado todo correctamente!"