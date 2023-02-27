#!/bin/zsh

# Ubuntu setup script
# I assume you already install zsh, and run that script from zshell
# Я надеюсь вы уже закачали zsh, и запускаете этот скрипт из zshell

sudo apt update
sudo apt upgrade -y

sudo apt install git wget curl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~/.zshrc
touch ~/.zshenv
#
# gcl https://github.com/zsh-users/zsh-syntax-highlighting.git
# git https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
#
# gem install colorls
#
# cp .oh-my-zsh/themes/brave.zsh-theme ~/.oh-my-zsh/themes/
#
# cp -r .config/nvim/lua/custom/ ~/.config/nvim/lua/
#
# gcl https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
#
