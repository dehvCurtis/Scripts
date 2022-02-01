# OS
sudo yum update -y
reboot

# Snap
sudo yum install epel-release
sudo yum install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Snap Apps
sudo snap install spotify
sudo snap install 1password
sudo snap install gimp
sudo snap install typora
sudo snap install brave
sudo snap install slack --classic

# Terminator Terminal
yum install -y terminator
