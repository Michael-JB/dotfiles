# Configure command line prompt
source $HOME/.config/zsh/prompt.zsh

# Load custom aliases
source $HOME/.config/zsh/aliases.zsh

# Enable command auto-completion
autoload -Uz compinit && compinit

# Use vim keybindings
bindkey -v

# Enable menu selection (plus shift-tab to go backwards)
zstyle ':completion:*' menu select
bindkey "$terminfo[kcbt]" reverse-menu-complete
setopt menucomplete
