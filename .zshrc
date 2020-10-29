#!/bin/zsh
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/a/.oh-my-zsh"

plugins=(git django docker zsh-autosuggestions zsh-syntax-highlighting)

ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
# [[ $- != *i* ]] && return
use_color=true
unset use_color safe_term match_lhs sh

# Oh My Zsh aliases
alias cp="cp -i" # confirm before overwriting something
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias more=less

# Personal Aliases
alias myip='wget http://ipecho.net/plain -O - -q ; echo'
alias ls='ls -la --block-size=M'

# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# The Fuck
eval $(thefuck --alias)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/a/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/a/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/a/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/a/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

