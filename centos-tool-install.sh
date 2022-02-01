# OS
sudo yum update -y
sudo yum install epel-release -y
sudo yum install tree vim git wget curl gcc docker -y
reboot

# Snap
sudo yum install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Snap Apps
sudo snap install 1password
sudo snap install brave
sudo snap install chromium
sudo snap install code --classic
sudo snap install gimp
sudo snap install pycharm-community --classic
sudo snap install slack --classic
sudo snap install spotify
sudo snap install typora

# Terminator Terminal
yum install -y terminator

# Docker
sudo yum install docker-ce docker-ce-cli containerd.io
sudo yum install -y yum-utils

 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
