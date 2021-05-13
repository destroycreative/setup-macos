#!/usr/bin/env

echo ''
echo '⚡️ Installing Homebrew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

## Brew services integrates Homebrew formulae with macOS' launchctl manager.
brew tap homebrew/services

## Install dns masq seperately due to error in valet install.
brew install dnsmasq

# Some helpful tools
brew install wget

## Install NVM
brew install nvm