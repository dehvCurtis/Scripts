# Tools
sudo dnf install tree vim git wget curl

# Brave Browser
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

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

# ohmyzsh fonts
cd /usr/share/fonts
sudo mkdir meslo
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
sudo fc-cache -v
