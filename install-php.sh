#!/usr/bin/env

echo ''
echo '⚡️ Installing PHP'

## Install PHP 7.3.
brew install php@7.3

# Autostart PHP on boot.
sudo brew services start php@7.3

# Check PHP version (e.g. 7.3.x).
php -v

# Install Xdebug.
pecl install xdebug

# Move ext-xdebug.ini to 7.3 conf.
mv ./files/ext-xdebug.ini /usr/local/etc/php/7.3/conf.d/ext-xdebug.ini

# Check it's loading.
php --ini

# Let user check xdebug is installed
read -p "Note if ext-xdebug.ini is being printed? Press [Enter] key to continue."

# Check the version displays Xdebug.
php -v

# Let user check xdebug is installed
read -p "Note if Xdebug is being printed? Press [Enter] key to continue."

## Tidy up.
brew cleanup -s
