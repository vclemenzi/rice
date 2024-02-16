# Install ZAP if not installed
if [ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}/zap" ]; then
    command zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
fi

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/vim"
plug "zap-zsh/supercharge"
plug "zap-zsh/fzf"
plug "$HOME/.config/zsh/modules/prompt.sh"
plug "$HOME/.config/zsh/modules/aliases.sh"
plug "$HOME/.config/zsh/modules/vars.sh"
plug "$HOME/.config/zsh/modules/commands.sh"

export VI_MODE_ESC_INSERT="jk" && plug "zap-zsh/vim"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -Uz compinit
compinit

# Zoxide
eval "$(zoxide init zsh)"
