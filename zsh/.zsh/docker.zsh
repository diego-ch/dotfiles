#
# docker aliases
#
# xargs -r keeps these no-ops when nothing matches, instead of calling
# docker with no arguments.

alias dkps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Command}}"'
alias dkstopall='docker ps -q | xargs -r docker stop'
alias dkctnrm='docker ps -aq | xargs -r docker rm -f'
alias dkimgrm='docker images -aq | xargs -r docker rmi -f'
alias dkvolrm='docker volume ls -q | xargs -r docker volume rm'

# Full teardown: removes running containers and in-use volumes too, which
# `docker system prune` leaves alone.
dkpurge() {
    docker system df || return 1
    echo

    if ! read -q "REPLY?Remove ALL containers, images and volumes? [y/N] "; then
        echo "\naborted"
        return 1
    fi
    echo

    dkctnrm
    dkimgrm
    dkvolrm
    docker system prune -af

    echo
    docker system df
}
