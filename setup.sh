#!/usr/bin/env

# Configure.
. ./configure-macos.sh
. ./configure-shell.sh

# Install xcode command line tools.
. ./install-xcode-select.sh

# Wait for the xcode command line tools to finish installing...
read -p "Press [Enter] key to continue, once the xcode tools have been installed."

# Install Homebrew things.
. ./install-homebrew.sh

# Install PHP, Valet, Node, Package Managers.
. ./install-php.sh
. ./install-composer-packages.sh
. ./install-front-end.sh

# Install Fonts.
. ./install-fonts.sh
