#!/bin/zsh

autoload -Uz vcs_info

precmd() {
    vcs_info
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats ' git:(%b)'

setopt PROMPT_SUBST

PROMPT='%F{green}  %f%F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f '
