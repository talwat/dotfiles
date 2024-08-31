#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='$( oh-my-go prompt --shell=bash --pwd=$PWD --user=$USER --exitcode=$? --hostname=$HOSTNAME )'

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

export PF_INFO="ascii title os kernel pkgs memory palette"

export OMGO_SHOW_USER_HOSTNAME=0
export OMGO_PLUGINS="git"
