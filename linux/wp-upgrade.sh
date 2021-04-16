echo 'Did you deactivate plugins?'
sleep 10
echo 'Starting Script'
mkdir stage1
cd stage1
tar -cf backup.tar /var/www/html
wget http://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz
cd wordpress
rm -rf /var/www/html/wp-includes
rm -rf /var/www/html/wp-admin
mv wp-includes/ /var/www/html
mv wp-admin/ /var/www/html
cp -R wp-content/ /var/www/html/wp-content/
cp -R /var/www/html/
head -n 40 /var/www/html/wp-config.php
cp wp-config-sample.php /var/www/html/wp-config.php
echo '------------------'
echo 'replace data in wp-config.php'
echo '------------------'
echo 'running restorecon on /var/www/html/'
restorecon -vR /var/www/html/
echo 'restsarting service'
service httpd restart
