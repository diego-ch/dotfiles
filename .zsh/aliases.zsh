# config files
alias sshconfig="vim ~/.ssh/config"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"

# networking
alias lanip="ifconfig en0 | sort | grep inet | grep -v deprecated"
alias wanip="curl -4s https://ident.me/ip && echo"
alias wanip6="curl -6s https://ident.me/ip && echo"

# user commands
alias grep='grep --color'
alias ls="lsd"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias lt="ls --tree"
alias lta="lt -aI .git"

# flecto-aliases
alias flecto-local="docker exec -it backend-backend-1 bash"
alias flecto-prod="heroku run bash -a rnters-prod"
alias flecto-staging="heroku run bash -a rnters-staging"

# docker aliases
alias dcctnrm='for docker_container in $(docker ps -aq); do docker rm -f $docker_container; done;'
alias dcimgrm='for docker_image in $(docker images -aq); do docker rmi -f $docker_image; done;'
alias dcvolrm='for docker_volume in $(docker volume ls -q); do docker volume rm $docker_volume; done;'

dockerpurge() {
    # show pre stats
    docker system df
    echo

    # purge docker
    dcctrm
    dcimgrm
    dcvolrm
    docker network prune -f
    docker system prune -af

    # show post stats
    echo
    docker system df
}
