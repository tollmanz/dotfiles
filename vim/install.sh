# Install SPF13
#
# https://github.com/spf13/spf13-vim

SCRIPT="https://j.mp/spf13-vim3"
DIR="${HOME}/.spf13-vim-3"

install_spf13() {
	wget ${SCRIPT} -O - | sh
}

if [ ! -d "${DIR}" ]; then
	echo "Installing spf13-vim"
	install_spf13
else
	echo "spf13-vim already installed"
fi
