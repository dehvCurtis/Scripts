# Tools
sudo dnf install tree vim git wget curl gcc 

# Snap
sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap

# Snap Installs
sudo snap install spotify
sudo snap install 1password
sudo snap install gimp
sudo snap install typora
sudo snap install brave
sudo snap install docker

# Yubikey
sudo dnf install pam_yubico -y

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

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc
source ~/.zshrc

# ohmyzsh fonts
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
sudo ./install.sh
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
sudo fc-cache -v
