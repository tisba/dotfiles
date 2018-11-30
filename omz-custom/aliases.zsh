# remove "rails generate" alias
unalias rg

# remove "git status -s" alias
unalias gss

# edit configurations
alias zshconfig="$EDITOR ~/.dotfiles"
alias sshconfig="$EDITOR ~/.ssh/config"

# basics
alias grep="grep --color=auto"
alias ll="ls -lsahF"
alias l="ll"
alias l.="ls -d .[^.]*"
alias ll.="ls -la -d .[^.]*"

# ruby tools
alias be="bundle exec"

# utils
alias rhttp="ruby -run -e httpd . -p 9090"
alias curl_timing="curl -w \"\n\n%{http_code} -> TOTAL: %{time_total}, DNS Lookup: %{time_namelookup}, Connect: %{time_connect}, Start Transfer: %{time_starttransfer}\n\n\""
alias cdpwd="cd \$(realpath \$(pwd))"

# git
alias gss="git stash show -p stash@{0}"
