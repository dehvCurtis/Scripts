# OS
sudo yum update -y
sudo yum install epel-release yum-utils -y
sudo yum install tree vim git wget curl gcc -y
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
sudo yum install -y yum-utils
sudo yum-config-manager \
   --add-repo \
   https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io --allowerasing
sudo systemctl start docker && sudo systemctl enable docker

# zsh
sudo yum install zsh

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
