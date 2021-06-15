# /bin/bash

apt-update -y
apt upgrade -y
apt install python2 exploitdb -y
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py