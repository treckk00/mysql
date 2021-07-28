#!/bin/bash
mysql -u root -p
use mysql

echo "* Create MySQL user: Create"
"create user 'user'@'%' identified by 'trhost123';"

echo "* Create MySQL user: Privileges"
"grant all privileges on *.* to 'user'@'%' with grant option;"

echo "* Flushing privileges.."

"FLUSH PRIVILEGES;"


echo "* Create MySQL Server user."

echo "* Create MySQL server: Create"
"create user 'server'@'%' identified by 'trhost123';"

echo "* Create MySQL server: Database"
"CREATE DATABASE server;"

echo "* Create MySQL Server: Privileges"
"grant all privileges on server.* to 'server'@'%';"

echo "* Flushing privileges.."

"FLUSH PRIVILEGES;"

echo "* MySQL database created & configured!"
echo "* Se ha instalado todo correctamente!"