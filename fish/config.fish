set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end


function fish_prompt
    printf "[%s%s%s@%s%s%s %s%s%s]\$ " (set_color green) (whoami) (set_color normal) (set_color blue) (hostname) (set_color normal) (set_color green) (prompt_pwd) (set_color normal)
end