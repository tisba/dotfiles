# Sublime
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Go
alias gosrc='cd $GOPATH/src/github.com/'

# Networking
whoseport() { lsof -i "TCP:$1" | grep LISTEN }

# Setup myfly (CTRL+r search replacement)
eval "$(mcfly init zsh)"

gisw(){
  git branch --no-color --sort=-committerdate --format='%(refname:short)' | fzf --header 'git checkout' | xargs git checkout
}
