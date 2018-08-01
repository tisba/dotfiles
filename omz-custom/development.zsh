export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/":$PATH

export ERL_AFLAGS="-kernel shell_history enabled"

whoseport() { lsof -i "TCP:$1" | grep LISTEN }
