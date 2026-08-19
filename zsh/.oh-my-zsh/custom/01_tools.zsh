#
# mise
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"
fi

#
# starship
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

#
# lm studio cli
[ -d "$HOME/.lmstudio/bin" ] && export PATH="$PATH:$HOME/.lmstudio/bin"
