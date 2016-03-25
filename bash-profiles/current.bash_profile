#!/bin/bash

#ALIASES

#alias ll="ls -lah"
alias lll='ls -alF'
alias ll='ls -lahF'
alias la='ls -A'
alias l='ls -CF'
alias gg='git status -s'

#GIT COMPLETION git-flow-completion found here: https://github.com/bobthecow/git-flow-completion

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#COLORS

# Set CLICOLOR if you want Ansi Colors in iTerm2 
#export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
#export TERM=xterm-256color

export PATH="/usr/local/bin:$PATH"

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "
