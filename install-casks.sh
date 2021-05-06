#!/usr/bin/env

echo ''
echo '⚡️ Installing applications'

## Install casks
brew install --cask \
  1password \
  alfred \
  dbngin \
  docker \
  dropbox \
  firefox \
  mochi \
  notion \
  phpstorm \
  webstorm \
  signal \
  skype \
  slack \
  sourcetree \
  spotify \
  tableplus \
  visual-studio-code

  

## Tidy up
brew cleanup -s
