#!/bin/sh

# Xcode CLI utilities
xcode-select --install

# Homebrew
curl -fsSL -o brew_install.sh https://raw.githubusercontent.com/Homebrew/install/master/install.sh
chmod +x ./brew_install.sh
/bin/bash -c ./brew_install.sh

# Ansible
brew install ansible
