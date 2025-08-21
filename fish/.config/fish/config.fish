# Proxy setting
function proxy
    set -x HTTPS_PROXY "http://127.0.0.1:10809"
    set -x HTTP_PROXY "http://127.0.0.1:10809"
    set -x ALL_PROXY "socks5://127.0.0.1:10808"
    git config --global http.proxy "socks5://127.0.0.1:10808"
    git config --global https.proxy "socks5://127.0.0.1:10808"
    echo "Proxy on"
end

function noproxy
    set -e HTTPS_PROXY
    set -e HTTP_PROXY
    set -e ALL_PROXY
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo "HTTP Proxy off"
end

function greeting -d "Greet user"
  echo -s ""
  fastfetch
  echo -s ""
end

if status is-interactive
  greeting
  set fish_greeting
end

set -gx PNPM_HOME "/home/brave/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

set -gx PATH "/home/brave/.local/bin" $PATH

alias pamcan="pacman"

abbr --add v "nvim"
abbr --add vi "nvim"
abbr --add vim "nvim"

alias vimdiff="nvim -d"

alias ls="eza --color=always --icons=always --git --no-filesize  --no-time --no-user --no-permissions"
alias l="eza --color=always --icons=auto --git --long --no-user --no-filesize --no-permissions --no-time --all"
alias ll="eza --color=always --long --git --no-user --all"

abbr --add lg "lazygit"

abbr --add ta "tmux attach"
abbr --add tr "tmux attach || tmux"

abbr --add pn "pnpm"
abbr --add pnd "pnpm dev"
abbr --add pnb "pnpm build"
abbr --add pnst "pnpm start"

alias cat="bat"

zoxide init fish | source
thefuck --alias | source

alias cd="z"
alias q="exit"

abbr --add uvr "uv run main.py"
abbr --add tx "tmux_new"

function tmux_new
    set session_name (basename $PWD)
    if tmux has-session -t $session_name 2>/dev/null
        echo "Session $session_name already exists. Attaching..."
        tmux attach-session -t $session_name
    else
        tmux new-session -s $session_name
    end
end

if test -f $HOME/.env.fish
  source $HOME/.env.fish
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

abbr --add bd "bun dev"

# VIM Keybindings
fish_vi_key_bindings

source $HOME/.config/fish/omp.fish
