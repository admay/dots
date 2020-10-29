#!/bin/zsh
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/michael/.oh-my-zsh"

plugins=(git django docker docker-compose zsh-autosuggestions zsh-syntax-highlighting)

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

alias dark-screen='redshift -P -O 4500'
alias norm-screen='redshift -P -O 6000'

alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

# Pyton
alias python='python3'
alias pip='pip3'
export PYTHONPYCACHEPREFIX="$HOME/.cache/cpython/"
export PYTHONDONTWRITEBYTECODE="florp"

# Kali
alias sherlock='python3 /home/michael/builds/sherlock/sherlock.py'

# KDB+
export QLIC=~/q
alias q='QHOME=~/q rlwrap -r ~/q/l64/q'
export PATH=$HOME/q/l64/q:$PATH
alias developer='source /home/michael/developer/config/config.profile; q /home/michael/developer/launcher.q_ '

# Azure
source /etc/bash_completion.d/azure-cli


function work() {
    echo "Connecting to VPN"
    globalprotect connect -p goto.dvtrading.co -u mzavarella

    echo "Creating mount points"
    sudo mkdir -p /mnt/dve-ops
    sudo mkdir -p /mnt/dv-energy
    sudo mkdir -p /mnt/dve-tech

    echo "Mounting share drives"
    sudo mount -v -t nfs smartconnectdvt.priv.dvtrading.co:/ifs/data/shares/Group/DVE_Ops /mnt/dve-ops
    sudo mount -v -t nfs smartconnectdvt.priv.dvtrading.co:/ifs/data/DV_Energy/DV_Energy /mnt/dv-energy
    sudo mount -v -t nfs smartconnectdvt.priv.dvtrading.co:/ifs/data/DVE_Tech /mnt/dve-tech

    echo "Done"
}

function play() {
    echo "Unmounting share drives"
    sudo umount /mnt/dv-energy
    sudo umount /mnt/dve-ops
    sudo umount /mnt/dve-tech

    echo "Disconnecting from VPN"
    globalprotect disconnect
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/michael/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/michael/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/michael/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/michael/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

