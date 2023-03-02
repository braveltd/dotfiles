export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="brave"

# fix ^M on Enter
stty icrnl

plugins=(
  git
  z
  sudo
  python
  poetry
  last-working-dir
  extract
  history
  web-search
)

source $ZSH/oh-my-zsh.sh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

if [ -d "$HOME/apps" ] ; then
  export PATH="$PATH:$HOME/apps/"
fi

# my stuff for ubuntu
# gtk 3.0 reloader
function reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}

export EDITOR='nvim'
export VISUAL='nvim'

source ~/.zshenv

unsetopt BEEP
alias ls="colorls"
alias neovim="nvim"
alias vim="nvim"
alias vi="nvim"
alias pn="pnpm"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$HOME/.local/bin:$HOME/.poetry/bin:$PATH"
# pnpm end

echo -e "\n\u1b[38;5;202;1mBrave Studio\u1b[m - Development, done right!\n"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(~/.rbenv/bin/rbenv init - zsh)"
source $(dirname $(gem which colorls))/tab_complete.sh

neofetch
