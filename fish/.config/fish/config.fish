function greeting -d "Greet user"
  echo -s ""
  echo -s (set_color FF2200) "╔══════════════════════════════╗"
  echo -s (set_color white) "       Welcome, <3 $USER.      "
  echo -s (set_color FF2200) "╚══════════════════════════════╝"
  echo -s ""
  echo -s (set_color white) ""(date "+%A, %B %d %Y")" and it's "(date "+%H:%M")
  echo -s (set_color purple) "Are we making money or having fun today?"
  echo -s (set_color white) ""

  # exec pfetch
end

if status is-interactive
  greeting
  set fish_greeting
end

# pnpm
set -gx PNPM_HOME "/home/brave/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Adding wsl-open as a browser for Fish for Windows
if string match -qr '(m|M)icrosoft' (uname -r)
  if test -z "$BROWSER"
    set -x BROWSER wsl-open
  else
    set -x BROWSER "$BROWSER:wsl-open"
  end
end

set -gx PATH "/home/brave/.local/bin" $PATH

alias pamcan="pacman"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"

alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias l="eza --color=always --long --git --no-user --all"

alias lg="lazygit"

alias ta="tmux attach"
alias tr="tmux attach || tmux"

alias pn="pnpm"
alias pnd="pnpm dev"
alias pnb="pnpm build"
alias pnst="pnpm start"

alias cat="bat"

zoxide init fish | source
oh-my-posh init fish --config $HOME/.config/ohmyposh/zen.toml | source
thefuck --alias | source

# poetry completions fish > ~/.config/fish/completions/poetry.fish

alias cd="z"
alias q="exit"

alias uvr="uv run main.py"

if test -f $HOME/.env.fish
  source $HOME/.env.fish
end



# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
