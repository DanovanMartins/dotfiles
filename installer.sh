#!bin/bash

if [ `cat /etc/os-release | grep '^ID_LIKE' | cut -d '=' -f 2` == arch ]
then
	echo "Arch distro"
	INSTALLER="sudo pacman -S"
elif [ `cat /etc/os-release | grep '^ID_LIKE' | cut -d '=' -f 2` == fedora ]
then
	echo "Fedora distro"
	INSTALLER="sudo yum install"
else
	echo "Other distro"
	INSTALLER="sudo apt install"
fi

#INSTALL OH-MY-ZSH PACKAGES
eval '$INSTALLER zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting'

#CREATE OH-MY-ZSH DOTFILE
curl -L https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

#ZSHPATH="${HOME}/.oh-my-zsh/plugins/"
ZSHPATH="${HOME}/.oh-my-zsh/custom/plugins/"

git -C ${ZSHPATH} clone https://github.com/zsh-users/zsh-completions
git -C ${ZSHPATH} clone https://github.com/zsh-users/zsh-autosuggestions
git -C ${ZSHPATH} clone https://github.com/zsh-users/zsh-syntax-highlighting.git

#SET ZSH AS DEFAULT SHELL
chsh -s /bin/zsh

#INSTALL TMUX PACKAGES
#Press prefix + I (capital i, as in Install) to fetch the plugin.
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
eval '$INSTALLER tmux'

#INSTALL NEOVIM PACKAGES
eval '$INSTALLER neovim'
eval '$INSTALLER ripgrep'
eval '$INSTALLER xsel'
eval '$INSTALLER ruby'
eval '$INSTALLER ccls'
eval '$INSTALLER npm'

rm ${HOME}/.zshrc
rm ${HOME}/.tmux.conf
rm -rf ${HOME}/.config/nvim

ln -s zshrc ${HOME}/.zshrc
ln -s tmux.conf ${HOME}/.tmux.conf
ln -s nvim ${HOME}/.config/nvim

mkdir -p ${HOME}/.local/share/fonts
curl -o ${HOME}/.local/share/fonts/DroidSansMNerdFont-Regular.otf -fLO \
 https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

sudo fc-cache -f -v

# mkdir -p ${HOME}/.config/nvim/lua

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Enjoy it."
