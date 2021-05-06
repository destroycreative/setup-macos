#!/usr/bin/env

echo ''
echo '⚡️ Installing Front-end Tooling'

## Install NVM.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

## Restart bash.
source .bash_profile

## Check NVM is installed.
command -v nvm

# read -p "Verify NVM was installed. Press [Enter]."

## Install node 14.16.0.
nvm install 14.16.0

## Install global gulp.
npm install -g gulp@3.9.1

## Install Yarn
brew install yarn
