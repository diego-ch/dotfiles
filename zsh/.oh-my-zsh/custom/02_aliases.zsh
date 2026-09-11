#
# global config
alias git-config="$EDITOR ~/.gitconfig"
alias ssh-config="$EDITOR ~/.ssh/config"

#
# zsh config
alias omz-config="$EDITOR ~/.zshrc"
alias omz-custom="$EDITOR $ZSH_CUSTOM"

#
# terminal config
alias tmux-config="$EDITOR ~/.config/tmux/tmux.conf"
alias ghostty-cfg="$EDITOR ~/.config/ghostty/config"
alias kitty-cfg="$EDITOR ~/.config/kitty/kitty.conf"

alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"
alias kthemes="kitty +kitten themes"

#
# networking
alias wanip="curl -4s https://ident.me/ip && echo"
alias wanip6="curl -6s https://ident.me/ip && echo"

#
# speedtest edgeuno ids
export SPD_SP=29666
export SPD_FOR=46129
export SPD_MIA=34059
export SPD_NYC=64881

#
# platform specific aliases
case $(uname) in
Darwin)
    # macOS commands
    alias myip='ifconfig | awk '\''/^[a-z]/{i=$1} /inet6? /{if ($2 !~ /^(fe80|::1|127\.)/) print i, $1, $2}'\'''
    ;;
Linux)
    # fedora aliases
    ;;
esac
