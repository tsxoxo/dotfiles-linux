# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# --- set PATH and other ENV variables --
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi
export PATH

# ---XDG---
### (these might be the defaults but I like them explicit.)
### also see /home/tom/.config/user-dirs.dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export DOTFILES="$HOME/dotfiles"
export DEV_DOCS="$HOME/docs/dev/"

### All is vim
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR=nvim

export TERMINAL=st

# ---OTHER APPS---
# Qt theme (needed if you use Qt apps)
export QT_QPA_PLATFORMTHEME=gtk2
# fix no menus in ghidra (java app expecting window reparenting)
export _JAVA_AWT_WM_NONREPARENTING=1
export LESS="-R"

# rg
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/rg/rgrc"

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#   # include .bashrc if it exists
#   if [ -f "$HOME/.bashrc" ]; then
#     . "$HOME/.bashrc"
#   fi
# fi

# python's uv?
. "$HOME/.local/share/../bin/env"
