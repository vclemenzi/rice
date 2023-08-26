alias pac="sudo pacman"
alias ttc="cd $HOME/.config"

function fish_prompt -d "Write out the prompt"
    printf '%s%s%s%s%s %s%s \n%s ' "["(set_color blue)$USER(set_color normal)(set_color red)"@"(set_color normal)(set_color cyan)$hostname(set_color normal)"]" (set_color yellow) " ➜" (set_color normal) (set_color green) (prompt_pwd) (set_color normal) (set_color red)"\$"(set_color normal) 
end

function fish_greeting
end
