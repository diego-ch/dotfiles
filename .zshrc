setopt HIST_IGNORE_ALL_DUPS

# BEGIN_HOMEBREW_OPTIONS
export HOMEBREW_NO_ENV_HINTS=1
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# END_HOMEBREW_OPTIONS

# BEGIN_CUSTOM_ALIASES
if [ -f ~/.bash_aliases ]; then
    echo -e "loading aliases..."
    . ~/.bash_aliases
fi
# END_CUSTOM_ALIASES

# BEGIN_PLUGINS
eval "$(starship init zsh)"
eval "$(mise activate zsh)"
wd() { . $HOME/.local/wd/wd.sh }
# END_PLUGINS

autoload -Uz compinit
compinit

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/diego-ch/.lmstudio/bin"
# End of LM Studio CLI section
