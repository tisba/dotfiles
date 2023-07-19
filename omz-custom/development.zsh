if [ -e "/Applications/Sublime Text.app" ]; then
  export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH
fi

if [ -e "/Applications/Visual Studio Code.app" ]; then
  export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH
fi

export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.docker/bin":$PATH

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Networking
whoseport() { sudo lsof -i "TCP:$1" | grep LISTEN }

# Setup myfly if available (CTRL+r search replacement)
command -v mcfly > /dev/null && {
  export MCFLY_FUZZY=2
  export MCFLY_INTERFACE_VIEW=BOTTOM
  eval "$(mcfly init zsh)"
}

gisw(){
  git branch --no-color --sort=-committerdate --format='%(refname:short)' | fzf --header 'git checkout' | xargs git checkout
}

# Interactive "kubectl explain" using fzf
kexp(){
  echo '' | \
  fzf \
    --query "Pod" \
    --print-query \
    --preview 'kubectl explain {q}' \
    --preview-window 'up:99%' \
    --header "Using '$(kubectl config current-context)'; start typing <type>.<fieldName>[.<fieldName>]..." \
    --bind 'pgup:preview-up,pgdn:preview-down' \
    --bind 'enter:become(export FOO=bar && kubectl explain {q})' \
    --bind 'ctrl-y:execute-silent(printf {q} | pbcopy)+abort' \
    --bind 'ctrl-r:preview(kubectl explain {q} --recursive)'
}
