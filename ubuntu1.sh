#!/bin/zsh

# Ubuntu setup script
# I assume you already install zsh, and run that script from zshell
# Я надеюсь вы уже закачали zsh, и запускаете этот скрипт из zshell

sudo apt update
sudo apt upgrade -y

# install some shit
sudo apt install git wget curl tmux 

wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
