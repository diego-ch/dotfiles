# config files
alias ghosttycfg="nvim ~/.config/ghostty/config"
alias sshconfig="nvim ~/.ssh/config"
alias zshconfig="nvim ~/.zshrc"
alias zshaliases="nvim ~/.zsh/aliases.zsh"
alias zshsource="source ~/.zshrc"

# kitty
alias icat="kitty +kitten icat"
alias kssh="kitty +kitten ssh"
alias ktheme="kitty +kitten themes"

# networking
alias lanip="ifconfig en0 | sort | grep inet | grep -v deprecated"
alias wanip="curl -4s https://ident.me/ip && echo"
alias wanip6="curl -6s https://ident.me/ip && echo"
alias speedtest-best="speedtest -s 46129"

# user commands
alias grep='grep --color'
alias ls="eza --group-directories-first --icons --time-style long-iso"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias lt="ls --tree"
alias lta="lt -AI .git"

# flecto-aliases
alias flecto-dev="wd flecto-be; docker compose run --rm console-test"
alias flecto-local="docker exec -it backend-backend-1 bash"
alias flecto-prod="heroku run bash -a rnters-prod"
alias flecto-staging="heroku run bash -a rnters-staging"

# docker aliases
alias dcctnrm='for docker_ctn in $(docker ps -aq); do docker rm -f $docker_ctn; done;'
alias dcimgrm='for docker_img in $(docker images -aq); do docker rmi -f $docker_img; done;'
alias dcvolrm='for docker_vol in $(docker volume ls -q); do docker volume rm $docker_vol; done;'

dockerpurge() {
    # show pre stats
    docker system df
    echo

    # purge docker
    dcctnrm
    dcimgrm
    dcvolrm
    docker network prune -f
    docker system prune -af

    # show post stats
    echo
    docker system df
}

