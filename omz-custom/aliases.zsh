alias zshconfig="subl ~/.zshrc"

alias grep="grep --color=auto"
alias ll="ls -lsahF"
alias l="ll"
alias l.="ls -d .[^.]*"
alias ll.="ls -la -d .[^.]*"

# development
alias sf="~/Documents/work/freelancing/stormforger"
alias sfsl="subl --project ~/Documents/work/freelancing/stormforger/src/sf-core.sublime-project"

alias curl_timing="curl -w \"\n\n%{http_code} -> TOTAL: %{time_total}, DNS Lookup: %{time_namelookup}, Connect: %{time_connect}, Start Transfer: %{time_starttransfer}\n\n\""
