#!/bin/zsh

# Assume already runned -> ubuntu1.sh

cp .zshrc ~/.zshrc
touch ~/.zshenv

cp .oh-my-zsh/themes/brave.zsh-theme ~/.oh-my-zsh/themes/

# download rbenv from github,
# activation already in .zshrc
# download ruby-build plugin
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone git@github.com:rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 3.2.1
rbenv global 3.2.1

gem install colorls

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
cp -r ./.config/nvim/lua/custom/ ~/.config/nvim/lua/

git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf

