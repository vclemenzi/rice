# case $PWD in
#     "$HOME") neofetch
# esac

alias pac='sudo pacman'
alias neovim='nvim'


alias ls='ls --color=auto'
alias ll='ls -ll'
alias lsf='find . -maxdepth 1 -type f -ls'

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# vi mode
bindkey -v
export KEYTIMEOUT=1

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;}

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# run "ls" on directory change
cd () {
    builtin cd "$@" || return

    case $PWD in
        "$HOME"|"$HOME"/*) ls
    esac
}

source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
