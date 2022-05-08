if [ -e "/Applications/Sublime Text.app" ]; then
  export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH
fi

if [ -e "/Applications/Visual Studio Code.app" ]; then
  export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH
fi

# Erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# Networking
whoseport() { lsof -i "TCP:$1" | grep LISTEN }

# Setup myfly if available (CTRL+r search replacement)
command -v mcfly > /dev/null && {
  eval "$(mcfly init zsh)"
}

gisw(){
  git branch --no-color --sort=-committerdate --format='%(refname:short)' | fzf --header 'git checkout' | xargs git checkout
}
