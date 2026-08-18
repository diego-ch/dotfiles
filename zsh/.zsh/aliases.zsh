#
# config files
#

alias ghosttycfg="nvim ~/.config/ghostty/config"
alias kittycfg="nvim ~/.config/kitty/kitty.conf"
alias sshconfig="nvim ~/.ssh/config"
alias tmuxconfig="nvim ~/.config/tmux/tmux.conf"
alias zshconfig="nvim ~/.zshrc"
alias zshaliases="nvim ~/.zsh/aliases.zsh"
alias gitconfig="nvim ~/.gitconfig"

#
# reload ZSH
#

alias zshsource="source ~/.zshrc"

#
# kitty
#

alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"
alias ktheme="kitty +kitten themes"

#
# networking
#

alias wanip="curl -4s https://ident.me/ip && echo"
alias wanip6="curl -6s https://ident.me/ip && echo"
alias speedtest-best="speedtest -s 46129"

#
# override ls
#

if command -v eza >/dev/null 2>&1; then
    export EZA_OPTIONS="--group-directories-first --icons --time-style long-iso"
    alias ls="eza ${EZA_OPTIONS}"
    alias la="ls -A"
    alias ll="ls -l"
    alias lla="ls -lA"
    alias lt="ls -T"
    alias lta="lt -AI .git"
fi

#
# override grep
#

command -v rg >/dev/null 2>&1 && alias grep='rg'
