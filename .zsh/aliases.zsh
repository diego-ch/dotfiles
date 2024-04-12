# config files
alias sshconfig="vim ~/.ssh/config"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"

# networking
alias ip="ipconfig getifaddr en0"
alias wanip="curl -4s https://ident.me/ip"
alias wanip6="curl -6s https://ident.me/ip"

# user commands
alias grep='grep --color'
alias ls="exa --icons --group-directories-first -F -H"
alias ll="exa --icons --group-directories-first --long --header -lF"
alias tree="exa --icons --group-directories-first --long --header -T"
alias t="tree -I '.git' -a"

# flecto-aliases
alias flecto-local="docker exec -it backend-backend-1 bash"
alias flecto-prod="heroku run bash -a rnters-prod"
alias flecto-staging="heroku run bash -a rnters-staging"
