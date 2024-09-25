#
# ohmyzsh config
# themes: agnoster, cloud, gozilla, intheloop, refined
#

# dir
export ZSH="$HOME/.oh-my-zsh"

# themes
ZSH_THEME="refined"

# auto updates
zstyle ':omz:update' mode auto

# plugins
plugins=(asdf brew git sudo wd)

# source ohmyzsh
source $ZSH/oh-my-zsh.sh

# user config
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/sdk.zsh ]] && source ~/.zsh/sdk.zsh

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
