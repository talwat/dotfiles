# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Oh My Zsh
#export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="tal"
#plugins=(git)

#source $ZSH/oh-my-zsh.sh

# Aliases
alias nes="/Applications/fceux.app/Contents/MacOS/fceux"
alias python="python3"
alias pip="pip3"
alias cato="command cat"
alias lso="command ls"
alias l="colorls -a -l"
alias ls="colorls -a"
alias cls="clear"
alias wget="wget -c"
alias ipi="ipconfig getifaddr en0"
alias ipe="curl ipinfo.io/ip; echo"
alias make="gmake"
alias rm="trash"

# git aliases
alias gp="git push"

# Modern Unix Aliases
source "$HOME/.local/modern/aliases.sh"

# Environment variables
export EDITOR="vim"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# .local
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="$HOME/.local/modern/bin:$PATH"
export PATH="$HOME/.local/cc65/bin:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Golang
export PATH="$HOME/go/bin:$PATH"

# Other
export PATH="/Users/tal/Library/Python/3.11/bin:$PATH"

# Homebrew software
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
#export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/m4/bin:$PATH"
export PATH="/opt/homebrew/opt/texinfo/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"

# Compile flags
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"

export CPATH="$HOME/.local/include:$CPATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="$HOME/.local/lib/pkgconfig:$PKG_CONFIG_PATH"
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"

# Oh-My-Go
set -o PROMPT_SUBST
export OMGO_PLUGINS="git"
export OMGO_SHOW_USER_HOSTNAME=1
PS1='$( oh-my-go prompt --shell=zsh --pwd=$PWD --user=$USER --exitcode=$? --hostname=$HOST )'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
