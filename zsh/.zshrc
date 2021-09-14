# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/michael/.oh-my-zsh"
export ZSH_CUSTOM="/home/michael/.oh-my-zsh/custom"
export EDITOR="nvim"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

plugins=(git zsh-autosuggestions common-aliases command-not-found zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Oh My Zsh aliases
# alias cp="cp -i" # confirm before overwriting something
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias more=less

# Personal Aliases
alias myip='wget http://ipecho.net/plain -O - -q ; echo'
alias dnf='sudo dnf'
alias yum='sudo yum'
alias mount='sudo mount'
alias sc='source ~/.zshrc'
alias ec='nvim ~/.zshrc'
alias mux='tmuxinator'

# The Fuck
eval $(thefuck --alias)

# Docker
alias dks="docker container ls --format=\"table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.CreatedAt}}\""

# System
alias mkdir="mkdir -pv"
alias wget="wget -c"

function wttr() {
    # change Paris to your default location
    local request="wttr.in/${1-10028}"
    [ "$(tput cols)" -lt 125 ] && request+='?n'
    curl -H "Accept-Language: ${LANG%_*}" --compressed "$request"
}

function x () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xvf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7za x $1 ;;
      *.xz)        xz -d $1 ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
