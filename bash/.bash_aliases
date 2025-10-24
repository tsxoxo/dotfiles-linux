#!/usr/bin/env bash

# configs
alias conf='nvim ~/dotfiles/'
alias dotconf='nvim ~/dotfiles/'
alias vimconf='nvim ~/dotfiles/nvim/.config/nvim/'
alias bashconf='nvim ~/.bashrc'
alias bashalias='nvim ~/.bash_aliases'
alias aliasconf='nvim ~/.bash_aliases'
alias aconf='nvim ~/.bash_aliases'
alias kitconf='nvim ~/dotfiles/kitty/.config/kitty/kitty.conf'
alias kittyconf='nvim ~/dotfiles/kitty/.config/kitty/kitty.conf'
alias tmuxconf='nvim ~/dotfiles/tmux/.config/tmux/tmux.conf'
alias keyconf='sudoedit nvim /usr/share/X11/xkb/symbols/realprog'
alias sxconf='nvim ~/dotfiles/sxhkd/.config/sxhkd/sxhkdrc'
alias bspconf='nvim ~/dotfiles/bspwm/.config/bspwm/bspwmrc'
alias qbconf='nvim ~/dotfiles/qutebrowser/.config/qutebrowser/config.py'
alias quteconf='nvim ~/dotfiles/qutebrowser/.config/qutebrowser/config.py'
alias fluxconf='nvim ~/.fluxbox/'
alias tintconf='nvim ~/.config/tint2/'

# docs
alias docs='nvim ~/docs/'
alias uni='nvim ~/dev/hpi/'
alias devdocs='nvim ~/docs/dev/notes/'
alias ddocs='nvim ~/docs/dev/notes/'

# todos
alias todos='nvim ~/docs/todo/'
alias todo=nvim_cd_todo

nvim_cd_todo() {
  FILE=$(~/.local/bin/todo)
  nvim -c "cd ${FILE%/*}" "$FILE"
}

# music
alias mq='nvim ~/music/queue.md'
alias queue='nvim ~/music/queue.md'

## uni

alias hpidocs='nvim ~/dev/hpi'
alias hpi='nvim ~/dev/hpi'
alias hpimath='nvim ~/dev/hpi/s1/math1/'

# abbreviations
alias v=nvim
alias sv='sudoedit nvim'
alias bs='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# alias -='cd -' # why is this invalid alias?

# useful defaults
alias mv="mv -iv"       # dont overwrite stuff, show results
alias mkdir="mkdir -pv" # also dont overwrite stuff, show results
alias rm="rm -Iv"       # confirm when >3; verbose

alias xclip="xclip -selection clipboard"

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
  command eza --oneline --all --reverse --sort=name --group-directories-first --smart-group "$@"
}

alias eza="eza_col_icons"
alias l="eza_col_icons --long"
alias ls="eza_col_icons --long"
alias ezal="eza_col_icons --long"

# git
alias g="git"
alias gss="git status -s"
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
