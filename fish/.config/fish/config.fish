function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias pamcan="pacman"

alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"

alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias l="eza --color=always --long --git --no-user --all"

alias pn="pnpm"

alias cat="bat"

zoxide init fish | source
oh-my-posh init fish --config $HOME/.config/ohmyposh/zen.toml | source
thefuck --alias | source 

poetry completions fish > ~/.config/fish/completions/poetry.fish

alias cd="z"

# pnpm
set -gx PNPM_HOME "/home/brave/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
