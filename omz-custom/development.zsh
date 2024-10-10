if [ -e "/Applications/Sublime Text.app" ]; then
  export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH
fi

if [ -e "/Applications/Visual Studio Code.app" ]; then
  export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH
fi

# Prefixing prompt with profile when $AWS_VAULT is set
if [[ -n $AWS_VAULT ]]; then
  export PROMPT="[AWS@${AWS_VAULT}] ${PROMPT}"
fi

# Networking
whoseport() { sudo lsof -i "TCP:$1" | grep LISTEN }

# Setup myfly if available (CTRL+r search replacement)
command -v mcfly > /dev/null && {
  export MCFLY_FUZZY=2
  export MCFLY_INTERFACE_VIEW=BOTTOM
  eval "$(mcfly init zsh)"
}

# gpick shows a list of branches, sorted by last commit date, and checks out the selected branch
gpick(){
  git branch --no-color --sort=-committerdate --format='%(refname:short)' | fzf --header 'git switch' | xargs git switch
}

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Setup pyenv, if installed
command -v pyenv > /dev/null && {
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"

  eval "$(pyenv init -)"
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
