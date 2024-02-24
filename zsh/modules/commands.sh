#!/bin/zsh

# Each alias is a function that checks if a command is available and uses it if it is, 
# otherwise it falls back to the default command.

alias internal_install_deps='sudo pacman -Sy bat eza'

function cat() {
  if command -v which bat &> /dev/null; then
    bat --style=plain --color=always $@
  else
    command cat $@
  fi
}

alias cat='cat'


function ls() {
  if command -v which exa &> /dev/null; then
    exa --group-directories-first --icons --color=always $@
  else
    command ls $@
  fi
}

alias ls='ls'
