setopt HIST_IGNORE_ALL_DUPS

# BEGIN_HOMEBREW_OPTIONS
if command -v brew >/dev/null 2>&1; then
    export HOMEBREW_NO_ENV_HINTS=1
    export PATH="$(brew --prefix)/opt/libpq/bin:$PATH"

    autosuggestions="$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    [ -f "$autosuggestions" ] && source "$autosuggestions"
    unset autosuggestions
fi
# END_HOMEBREW_OPTIONS

# BEGIN_CUSTOM_ALIASES
for config in ~/.zsh/*.zsh; do
    [ -f "$config" ] && source "$config"
done
unset config
# END_CUSTOM_ALIASES

# BEGIN_PLUGINS
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate zsh)"
export WD_CONFIG="$HOME/.config/wd/warprc"
[ -f "$HOME/.local/wd/wd.sh" ] && wd() { . "$HOME/.local/wd/wd.sh" }
# END_PLUGINS

autoload -Uz compinit
compinit

# Added by LM Studio CLI (lms)
[ -d "$HOME/.lmstudio/bin" ] && export PATH="$PATH:$HOME/.lmstudio/bin"
# End of LM Studio CLI section
