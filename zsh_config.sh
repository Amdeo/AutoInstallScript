#! /bin/bash

#install autojump

git clone git://github.com/joelthelion/autojump.git
cd autojump && cd autojump
echo ". /usr/share/autojump/autojump.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source .zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source .zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source .zshrc

cd $ZSH_CUSTOM/plugins
mkdir incr
cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
echo "source $ZSH_CUSTOM/plugins/incr/incr*.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source  ${ZDOTDIR:-$HOME}/.zshrc

