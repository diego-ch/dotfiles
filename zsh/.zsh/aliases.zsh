#
# global config
alias gitconfig="nvim ~/.gitconfig"
alias sshconfig="nvim ~/.ssh/config"

#
# zsh config
alias zshconfig="nvim ~/.zshrc"
alias zshaliases="nvim ~/.zsh/"
alias zshsource="source ~/.zshrc"

#
# terminal config
alias tmuxconfig="nvim ~/.config/tmux/tmux.conf"
alias ghosttycfg="nvim ~/.config/ghostty/config"
alias kittycfg="nvim ~/.config/kitty/kitty.conf"

alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"
alias ktheme="kitty +kitten themes"

#
# networking
alias wanip="curl -4s https://ident.me/ip && echo"
alias wanip6="curl -6s https://ident.me/ip && echo"
alias speedtest-best="speedtest -s 46129"

#
# platform specific aliases
case $(uname) in
Darwin)
    # macOS commands
    ;;
Linux)
    # fedora aliases
    ;;
esac
