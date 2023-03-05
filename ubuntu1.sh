#!/bin/zsh

# Ubuntu setup script
# I assume you already install zsh, and run that script from zshell
# Я надеюсь вы уже закачали zsh, и запускаете этот скрипт из zshell

sudo apt update
sudo apt upgrade -y

# install some shit
sudo apt install git wget curl tmux neofetch gcc build-essential 

# for rbenv
sudo apt install libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
