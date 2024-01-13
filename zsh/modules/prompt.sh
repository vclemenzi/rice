#!/bin/zsh

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:*' enable git 

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' formats "%{$fg[yellow]%}(%b%)%{$reset_color%}"

PROMPT_USER="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m%{$fg[red]%}]"
PROMPT_PATH="%{$fg[cyan]%}%~%{$reset_color%}"
PROMPT_END="%{$fg[red]%}$ %{$reset_color%}%b"

PROMPT="$PROMPT_USER -> $PROMPT_PATH %{$fg[grey]%}"
PROMPT+="\$vcs_info_msg_0_ " 
PROMPT+=$'\n'"$PROMPT_END"
