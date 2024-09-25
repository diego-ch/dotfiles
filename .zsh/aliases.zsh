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
