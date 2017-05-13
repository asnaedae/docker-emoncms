#!/bin/bash

# Start MySQL Server
service mysql start > /dev/null 2>&1

sleep 10

# Initialize the db and create the user 
echo "CREATE DATABASE emoncms;" >> init.sql
echo "CREATE USER 'emoncms'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';" >> init.sql
echo "GRANT ALL ON emoncms.* TO 'emoncms'@'localhost';" >> init.sql
echo "flush privileges;" >> init.sql
mysql < init.sql

# Cleanup
rm init.sql

# Stop MySQL Server
sleep 10
service mysql stop > /dev/null 2>&1
