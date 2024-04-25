# remove "git status -s" alias
unalias gss

# basics
alias grep="grep --color=auto"
alias ll="ls -lsahF"
alias l="ll"
alias l.="ls -d .[^.]*"
alias ll.="ls -la -d .[^.]*"

# utils
alias rhttp="ruby -run -e httpd . -p 9090"
alias curl-timing="curl -w \"\n\n%{http_code} -> TOTAL: %{time_total}, DNS Lookup: %{time_namelookup}, Connect: %{time_connect}, Start Transfer: %{time_starttransfer}\n\n\""
alias cdpwd="cd \$(realpath \$(pwd))"
alias rdiff="diff -rq --exclude=.DS_Store"

# git
alias gss="git stash show -p stash@{0}"
