#!/bin/zsh

# Assume already runned -> ubuntu1.sh

cp .zshrc ~/.zshrc
touch ~/.zshenv

cp .oh-my-zsh/themes/brave.zsh-theme ~/.oh-my-zsh/themes/

gcl https://github.com/zsh-users/zsh-syntax-highlighting.git
git https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions


# gem install colorls

gcl https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp -r ./.config/nvim/lua/custom/ ~/.config/nvim/lua/

# gcl https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
