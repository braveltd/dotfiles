export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="brave"

# fix ^M on Enter
stty icrnl

plugins=(
  git
  last-working-dir
  extract
  history
  sudo
  yarn
  web-search
  poetry
)

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh
source $HOME/zsh-z/zsh-z.plugin.zsh
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
alias neofetch="neofetch --source /home/hideuk/.config/neofetch/my_ascii"
alias ls="colorls"
alias neovim="nvim"
alias vim="nvim"
alias vi="nvim"

# for python virtual env
alias vact=". ./.env/bin/activate"
alias vdact="deactivate"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

alias pn="pnpm"

echo "\n\t\t\t\t\t   Brave Studio - Development, done right!\n"
neofetch
