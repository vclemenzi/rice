# Aliases
alias pac="sudo pacman"

## One word aliases
alias s="sudo"
alias l="ls"
alias c="cd"

## Travel to aliases
alias ttc="cd $HOME/.config"
alias ttci="cd $HOME/.config/i3"
alias ttcn="cd $HOME/.config/nvim"
alias ttcp="cd $HOME/.config/polybar"
alias ttcf="cd $HOME/.config/fish"
alias ttct="cd $HOME/.config/tmux"

function fish_prompt -d "Write out the prompt"
    printf '%s%s%s%s%s %s%s \n%s ' "["(set_color blue)$USER(set_color normal)(set_color red)"@"(set_color normal)(set_color cyan)$hostname(set_color normal)"]" (set_color yellow) " ➜" (set_color normal) (set_color green) (prompt_pwd) (set_color normal) (set_color red)"\$"(set_color normal) 
end

function fish_greeting
end
