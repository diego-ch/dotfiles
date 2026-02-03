# zsh options
setopt HIST_IGNORE_ALL_DUPS

# custom aliases and sdks
export HOMEBREW_NO_ENV_HINTS=1
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/sdk.zsh ]] && source ~/.zsh/sdk.zsh

# zsh-autocomplete
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# mise
eval "$(mise activate zsh)"

# starship
eval "$(starship init zsh)"

# warp-dir
wd() { . $HOME/.local/wd/wd.sh }

