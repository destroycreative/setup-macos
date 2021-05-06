#!/usr/bin/env

echo ''
echo '⚡️ Installing applications'

## Install casks
brew install --cask \
  chromedriver \
  dbning\
  firefox \
  google-chrome\
  phpstorm \
  postman \
  slack \
  sourcetree \
  tableplus \
  tableau \
  visual-studio-code \
  webex-meetings

## Tidy up
brew cleanup -s
