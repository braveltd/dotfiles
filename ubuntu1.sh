#!/bin/zsh

# Ubuntu setup script
# I assume you already install zsh, and run that script from zshell
# Я надеюсь вы уже закачали zsh, и запускаете этот скрипт из zshell

sudo apt update
sudo apt upgrade -y

sudo apt install git wget curl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
