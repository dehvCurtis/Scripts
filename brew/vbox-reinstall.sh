#brew cleanupi
brew update --rebase
brew upgrade --cleanup
brew install vagrant-completion --force
brew cask install virtualbox --force
brew cask install vagrant --force
brew cask install vagrant-manager --force
brew upgrade --cleanup
brew cleanup
brew doctor
#sudo shutdown -r now
