#!/bin/sh

# Environment properties
_arch=`uname -m`
_shell=`basename $SHELL`

# Xcode CLI utilities
xcode-select --install

# Rosetta for Apple silicon
if [ X"${_arch}" == X"arm64" ]; then
	sudo softwareupdate --install-rosetta
fi

# Homebrew
curl -fsSL -o brew_install.sh https://raw.githubusercontent.com/Homebrew/install/master/install.sh
chmod +x ./brew_install.sh
/bin/bash -c ./brew_install.sh

# Ensure Homebrew is in ${PATH}
if [ X"${_shell}" == X"zsh" ]; then
    _profile=~/.zprofile
elif [ X"${_shell}" == X"bash" ]; then
    _profile=~/.bash_profile
else
    _profile=~/.profile
fi
if [ X"${_arch}" == X"arm64" ]; then
    _brewdir=/opt/homebrew
else
    _brewdir=/usr/local
fi
_brew="${_brewdir}/bin/brew shellenv"
_eval1='eval "$('
_eval2=')"'
echo "${_eval1}${_brew}${_eval2}" >> ${_profile}
eval "${_eval1}${_brew}${_eval2}"

# Confirm that required taps are available
echo "Homebrew taps available:"
brew tap --verbose
brew update
brew tap --verbose

for tap in homebrew/{core,cask}; do
    brew tap | grep -q -e "$tap" || (echo Tap "$tap" not found; exit 1)
done

# Ansible
brew install ansible
