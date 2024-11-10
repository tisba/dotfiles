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

# Recursive diff of two directories, excluding:
# * .DS_Store
# * ._* - AppleDouble files, stores metadata on filesystems that don't support it natively
# * .fseventsd - File System Events daemon, used by Time Machine etc
# * .Spotlight-V100 - Spotlight index
alias rdiff="diff -rq --exclude=.DS_Store --exclude='._*' --exclude=.fseventsd --exclude=.Spotlight-V100"

# git
alias gss="git stash show -p stash@{0}"
