function greeting -d "Greet user"
  echo "Hello, $USER"

  echo -s (set_color blue) "╔══════════════════════════════╗"
  echo -s (set_color blue) "║      Welcome, <3 Brave.      ║"
  echo -s (set_color blue) "╚══════════════════════════════╝"
  echo -s (set_color cyan) "Today is "(date "+%A, %B %d %Y")" and it's "(date "+%H:%M")
  echo -s (set_color yellow) "Are we making money or having fun today?"
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

if test -f $HOME/.env.fish
  source $HOME/.env.fish
end


