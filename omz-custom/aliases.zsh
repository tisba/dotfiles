# edit configurations
alias zshconfig="subl ~/.dotfiles"
alias sshconfig="subl ~/.ssh/config"

# basics
alias grep="grep --color=auto"
alias ll="ls -lsahF"
alias l="ll"
alias l.="ls -d .[^.]*"
alias ll.="ls -la -d .[^.]*"

# development / workspaces
export SRC_WORK_PATH="~/Documents/work/freelancing"
alias sf="${SRC_WORK_PATH}/stormforger"
alias sfsl="subl --project ${SRC_WORK_PATH}/stormforger/src/sf-core.sublime-project"
alias work="cd ${SRC_WORK_PATH}"

# ruby tools
alias be="bundle exec"

# utils
alias curl_timing="curl -w \"\n\n%{http_code} -> TOTAL: %{time_total}, DNS Lookup: %{time_namelookup}, Connect: %{time_connect}, Start Transfer: %{time_starttransfer}\n\n\""
