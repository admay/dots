#
# ~/.bash_profile
#

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

[ -s "/home/michael/.jabba/jabba.sh" ] && source "/home/michael/.jabba/jabba.sh"

export PATH="$HOME/.cargo/bin:$PATH"
