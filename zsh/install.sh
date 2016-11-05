#!/bin/zsh
#
# Install Prezto (https://github.com/sorin-ionescu/prezto)

PREZTO="${ZDOTDIR:-$HOME}/.zprezto"
REPO="https://github.com/sorin-ionescu/prezto.git"

if [ ! -d "${PREZTO}" ]; then
	echo "Installing prezto"
	git clone ${REPO} --recursive  "${PREZTO}"
	chsh -s /bin/zsh
else
	echo "Prezto already installed"
fi
