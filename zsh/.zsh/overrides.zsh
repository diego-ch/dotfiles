#
# overrides
if command -v eza >/dev/null 2>&1; then
    export EZA_OPTIONS="--group-directories-first --icons --time-style long-iso"
    alias ls="eza ${EZA_OPTIONS}"
    alias ll="ls -l"
    alias la="ls -A"
    alias lla="ls -lA"
    alias lt="ls -T"
    alias lta="lt -I .git -A"
fi

if command -v rg >/dev/null 2>&1; then
    alias grep='rg'
fi
