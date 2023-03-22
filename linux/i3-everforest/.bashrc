#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/.local/apps/firefox:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export OMGO_SHOW_USER_HOSTNAME=1
export OMGO_PLUGINS="git"

PS1='$( oh-my-go prompt --shell=bash --pwd=$PWD --user=$USER --exitcode=$? --hostname=$HOSTNAME )'

# pfetch config

export PF_FAST_PKG_COUNT=1
export PF_INFO="ascii title os host kernel uptime pkgs memory wm"
export PF_COL1=2
export PF_COL3=6
