#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BATTERY=/sys/class/power_supply/BAT0/capacity

RESET="\[$(tput sgr0)\]"
RED="\[$(tput setaf 1)\]"
YELLOW="\[$(tput setaf 3)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 5)\]"

getBatColor() {
  BATCOLOR="$RED"

  if [ "$1" -gt "50" ]; then
    BATCOLOR="$GREEN"
  elif [ "$1" -gt "10" ]; then
    BATCOLOR="$YELLOW"
  fi

  echo -e "$BATCOLOR"
}

alias ls='ls --color=auto'

if [ "$TERM" != "xterm-256color" ]; then
  PS1="[\u@\h \w $(getBatColor "$(cat $BATTERY)")$(cat $BATTERY)%${RESET}]\$ "
else
  PS1="${RED}[${YELLOW}\u${GREEN}@${BLUE}\h ${PURPLE}\w $(getBatColor "$(cat $BATTERY)")$(cat $BATTERY)%${RED}]${RESET}\$ "
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

alias ipi="ip -json route get 8.8.8.8 | jq -r '.[].prefsrc'"
alias purge="sudo paru -Rns"
alias ngrok_bg="nohup ngrok tcp 25565 --log=stdout &> /dev/null &"
alias ngrok_bg_kill='kill -9 $(pgrep ngrok)'
alias ngrok_url="curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url | sed -e 's/^tcp:\/\///'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion