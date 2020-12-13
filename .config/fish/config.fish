######################
# Fish Configuration #
######################

## Adds `~/.local/bin` to $PATH
set PATH "$HOME/.local/bin" $PATH

## Set fish welcome message.
greeting

## Default programs:
set EDITOR "nvim"
set TERMINAL "alacritty"
set BROWSER "brave"

## Clean ~/.
set LESSHISTFILE "/dev/null"
set WGETRC "$HOME/.config/wget/wgetrc"

## Global variables.
set XDG_CONFIG_HOME "$HOME/.config"
