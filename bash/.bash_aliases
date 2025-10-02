#!/usr/bin/env bash

# configs
alias vimconf='nvim ~/.config/nvim'
alias bashconf='nvim ~/.bashrc'
alias bashalias='nvim ~/.bash_aliases'
alias aliasconf='nvim ~/.bash_aliases'
alias fluxconf='nvim ~/.fluxbox/'
alias tintconf='nvim ~/.config/tint2/'
alias kitconf='nvim ~/.config/kitty/kitty.conf'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
alias tmuxconf='nvim ~/.config/tmux/tmux.conf'
alias keyconf='nvim ~/.config/fluxbox/keys ~/.config/sxhkd/sxhkdrc ~/.config/keyboard/realprog'
alias sxconf='nvim ~/.config/sxhkd/sxhkdrc'
alias qbconf='nvim ~/.config/qutebrowser/config.py'

# other contexts
alias docs='nvim ~/docs'

# abbreviations
alias v=nvim
alias sv='sudo -E nvim'
alias bs='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# alias -='cd -' # why is this invalid alias?

# useful defaults
alias mv="mv -iv"       # dont overwrite stuff, show results
alias mkdir="mkdir -pv" # also dont overwrite stuff, show results

# From the pros
alias r="fc -s" # repeat last command: `r`; ...that starts with cc: `r cc`

# python
alias pinit=_pinit
alias pact='source .venv/bin/activate'

_pinit() {
  mkdir -p ./.venv
  echo "Running python3 -m venv .venv"
  python3 -m venv .venv && echo ".venv set up"
  source ./.venv/bin/activate
}

# Make sudo preserve aliases
alias sudo='sudo '

# functions
# show 10 largest files in current dir
dutop() {
  du -sh "${1:-.}"/* 2>/dev/null | sort -hr | head -10
}

eza_col_icons() {
  command eza --oneline --all --reverse --sort=name --group-directories-first --smart-group --no-permissions "$@"
}

alias eza="eza_col_icons"
alias l="eza_col_icons"
alias ezal="eza_col_icons --long"

# git
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit --verbose"
alias gp="git push"
alias gpv="git push --verbose"

# fun logs to try out
alias glgg="git log --graph"
alias glgga="git log --graph --decorate --all"
alias glgm="git log --graph --max-count=10"
alias glod="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias glods="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short"
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
alias glols="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --stat"
alias glo="git log --oneline --decorate"
alias glog="git log --oneline --decorate --graph"
alias gloga="git log --oneline --decorate --graph --all"
alias glp="git log --pretty=<format>"
alias glg="git log --stat"
alias glgp="git log --stat --patch"

# Other apps
alias qb="qutebrowser > /dev/null 2>&1 &"

### start yazi with 'y' and track CWD
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
