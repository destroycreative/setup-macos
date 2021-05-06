#!/usr/bin/env

echo ''
echo '⚡️ Installing global composer packages'

## Download and install Composer
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

## Check composer version (1.9 as of 2019/8)
composer -V

## Valet
composer global require laravel/valet
valet install

## Valet will not finish installation without being set to use php@7.3
valet use php@7.3

## Restart the install
valet install

## Verify it's running.
dig testing.dev @127.0.0.1

read -p "Verify something like testing.dev. 0 IN   A   127.0.0.1.  Press [Enter] key to continue."


## Install CGR
composer global require consolidation/cgr
