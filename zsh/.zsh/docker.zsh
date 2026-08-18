#
# docker aliases
#

alias dctstopall='docker stop $(docker ps -q)'
alias dcctnrm='for docker_ctn in $(docker ps -aq); do docker rm -f $docker_ctn; done;'
alias dcimgrm='for docker_img in $(docker images -aq); do docker rmi -f $docker_img; done;'
alias dcvolrm='for docker_vol in $(docker volume ls -q); do docker volume rm $docker_vol; done;'
alias dcps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Command}}"'

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
