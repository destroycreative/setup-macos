#!/usr/bin/env

echo ''
echo '⚡️ Installing Drupal Support'

# mkdir ~/terminus && cd ~/terminus
# curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar && php installer.phar install

## The new github token fails with the above installation method. 
## If you do not need the latest token, uncomment the above and comment out the following two lines.
mkdir ~/terminus && cd ~/terminus
curl -L https://github.com/pantheon-systems/terminus/releases/download/$(curl --silent "https://api.github.com/repos/pantheon-systems/terminus/releases/latest" | perl -nle'print $& while m{"tag_name": "\K.*?(?=")}g')/terminus.phar --output terminus
chmod +x terminus
sudo ln -s ~/terminus/terminus /usr/local/bin/terminus

read -p "You need a machine token from Pantheon to continue. Press [Enter] when ready."

read machineToken

terminus auth:login --machine-token=$machineToken

echo "What is your email used for this account?"

read userEmail

terminus auth:login --email=userEmail

read -p "Did everything excute correctly " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Try troubleshooting tips at https://pantheon.io/docs/terminus/install#troubleshooting."
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

cgr pantheon-systems/terminus
