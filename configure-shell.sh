#!/usr/bin/env

echo ''
echo '⚡️ Configuring the shell'
chsh -s /bin/bash

## Move the .bashrc and .bash_profile to user root.
mv ./files/bashrc.text ~/.bashrc
mv ./files/.bash_profile ~/.bash_profile

## Kill the zsh warning.
export BASH_SILENCE_DEPRECATION_WARNING=1 >> ~/.bashrc

## Restart bash.
source ~/.bash_profile