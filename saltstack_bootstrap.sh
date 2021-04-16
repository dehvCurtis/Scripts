curl -L https://bootstrap.saltstack.com -o install_salt.sh

sudo sh install_salt.sh -M -P
sudo salt --versions-report
echo "master: salt" >> /etc/salt/minion
echo "id: myminion" >> /etc/salt/minion
service salt-master restart
service salt-minion restart
