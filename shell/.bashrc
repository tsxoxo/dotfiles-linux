#!/usr/bin/env bash

###############
# BASH CONFIG #
###############
# Main file and 'entry point' to the set of config files:
# - ~/.bashrc
# - ~/.bash_aliases
# - ~/.inputrc
#
# .inputrc handles readline stuff like auto-completion and vi mode.
#

# NOTE: set env vars in .profile, source .profile in bspwmrc

export PS1="\n${PS1}"

# Settings
shopt -s histappend

### Increase history size
HISTSIZE=10000
HISTFILESIZE=20000

### Save multi-line commands as single entry
shopt -s cmdhist

### Share command history across tmux panes, windows, etc.
### by saving/refreshing it after every command
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Load aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load inputrc
# NOTE: 2025-09-21 Is this bad?
# I did this because it solved an issue for me.
# It forced inputrc to reload when running 'exec $SHELL' didn't.
# (I was setting up TAB to cycle through completion options)
if [ -f ~/.inputrc ]; then
  bind -f ~/.inputrc
fi

# ---------
# set up other stuff
# ---------
# zoxide
eval "$(zoxide init bash)"

# fzf
if [[ ! "$PATH" == */home/tom/.local/share/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/tom/.local/share/fzf/bin"
fi
eval "$(fzf --bash)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
