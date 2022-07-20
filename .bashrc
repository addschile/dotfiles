# thanks apple
export BASH_SILENCE_DEPRECATION_WARNING=1

export DOTFILES="$HOME/dotfiles/"

# Expand the history size

HISTFILESIZE=100000000
HISTSIZE=100000

# Not everything in history is interesting

HISTIGNORE="cd:ls:clear:exit"

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# The next line allows me to share history between different screen terminals
# Thank you https://spin.atomicobject.com/2016/05/28/log-bash-history/
mkdir -p ~/.logs
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

# Git stuff
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

green=$(tput setaf 2)
blue=$(tput setaf 4)
yellow=$(tput setaf 3)
reset=$(tput sgr0)
bold=$(tput bold)

source $DOTFILES/.git_prompt.sh

PS1='\[$yellow$bold\]\W\[$reset\]\[$green$bold\]$(__git_ps1 " (%s)")\[$reset\]\$ '

# looks stuff
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# import aliases
source $DOTFILES/.aliases

# import functions
source $DOTFILES/.functions

# import functions
#source $DOTFILES/.schrobashrc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
