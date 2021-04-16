#!/bin/bash
echo "Running Updates and installing LAMP with utils."
sleep 2
yum update -y
yum install curl httpd firewalld tree wget unzip mariadb-server mariadb php php-mysql php-gd -y

echo "Enabling and starting services."
sleep 2
systemctl enable httpd
systemctl start httpd
systemctl enable mariadb
systemctl start	mariadb
systemctl enable firewalld
systemctl start firewalld

echo "Applying firewalld rules."
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

echo "creating test files in /var/www/html"
touch /var/www/html/info.php
echo "created"
echo "Testing httpd and php file"
sleep 2
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
echo "Checking top 5 lines of info.php"
cat /var/www/html/info.php | head -5

echo "Your IP Address:"
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

echo "creating wp installation"
mkdir /var/www/staging
cd /var/www/staging/
wget http://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz

echo "ready for mysql database setup"
