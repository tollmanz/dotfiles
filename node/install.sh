# !/bin/bash

SCRIPT="https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh"
DIR="${HOME}/.nvm"

install_nvm() {
	wget -qO- ${SCRIPT} | bash

	source ${HOME}/.zshrc

	# Install node versions
	nvm install v4
	nvm install v6

	# Set default
	nvm alias default v4
}

# Install NVM
if [ ! -d "${DIR}" ]; then
	echo "Installing nvm"
	install_nvm
else
	echo "nvm already installed"
fi