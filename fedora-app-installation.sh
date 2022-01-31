# Tools
sudo dnf install tree vim git wget curl

# Docker
sudo dnf install docker-ce docker-ce-cli containerd.io

# PyCharm
sudo dnf upgrade --refresh -y
sudo dnf upgrade --refresh -y
sudo whoami
sudo dnf install dnf-plugins-core -y
sudo dnf install python3 python3-devel python3-distutils-extra -y
sudo nano /etc/yum.repos.d/phracek-PyCharm-fedora-35.repo
sudo dnf install pycharm-community

# zsh
sudo dnf install zsh

# ohmyzsh
wget sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
