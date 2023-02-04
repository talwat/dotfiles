
alias ngrok-bg="nohup ngrok tcp 25565 --log=stdout &> /dev/null &"
alias ngrok-bg-kill='kill -9 $(pgrep ngrok)'
alias ngrok-url="curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url | sed -e 's/^tcp:\/\///'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion