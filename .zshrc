# zsh options
setopt HIST_IGNORE_ALL_DUPS

# aliases
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# starship
eval "$(starship init zsh)"
