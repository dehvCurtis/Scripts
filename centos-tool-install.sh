# OS
sudo yum update -y
reboot

# Snap
sudo yum install epel-release
sudo yum install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap



sudo snap install spotify
