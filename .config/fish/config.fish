if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"
alias l="ls -lah"
alias vim="nvim"
alias python3="python3.11"
alias pn="pnpm"

set EDITOR nvim

set fish_greeting

fish_add_path --append "~/.local/bin"

# pnpm
set -gx PNPM_HOME "/home/brave/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
