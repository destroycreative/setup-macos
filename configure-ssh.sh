#!/usr/bin/env

echo ''
echo '⚡️ Setting up SSH'

echo "Do you alreay have an ssh key? [y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "What is the filename of your public key?"
        read key
        pbcopy < ~/.ssh/$key
        echo "Your public key is on your clipboard."
else
        echo "Let's make one!"
        ssh-keygen
        pbcopy < ~/.ssh/id_rsa.pub
        echo "Your pubblic key is on your clipboard"
fi