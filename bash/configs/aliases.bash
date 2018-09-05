#Modeline
# vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker=<!,!> foldlevel=0 foldmethod=marker spell:

# <! Alias

#ls color
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# some more ls aliases
alias ll='ls -alh --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CFlh --color=auto'
alias woo='fortune --color=auto'
alias lsd="ls -alF | grep /$"
alias lo="ls -o --color=auto"
alias lh="ls -lh --color=auto"
alias sl="ls --color=auto"
alias s="ls --color=auto"
alias ls="ls --color=auto"


#grep color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


#platform='unknown'
#unamestr=`uname`
#if [[ "$unamestr" == 'Linux' ]]; then
#    platform='linux'
#    # some more ls aliases
#    alias ll='ls -alh --color=auto'
#    alias la='ls -A --color=auto'
#    alias l='ls -CFlh --color=auto'
#    alias woo='fortune --color=auto'
#    alias lsd="ls -alF | grep /$"
#    alias lo="ls -o --color=auto"
#    alias lh="ls -lh --color=auto"
#    alias sl="ls --color=auto"
#    alias s="ls --color=auto"
#    alias ls="ls --color=auto"
#elif [[ "$unamestr" == 'Darwin' ]]; then
#    platform='Mac'
#    # some more ls aliases
#    export CLICOLOR=1
#    alias ll='ls -alh -G'
#    alias la='ls -A -G'
#    alias l='ls -CFlh -G'
#    alias woo='fortune -G'
#    alias lsd="ls -alF | grep /$"
#    alias lo="ls -o -G"
#    alias lh="ls -lh -G"
#    alias sl="ls -G"
#    alias s="ls -G"
#    alias ls="ls -G"
#fi


# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~="cd ~" #`cd` is probably faster
alias -- -="cd -"

#Temp for Python shortcut
alias py="python2.7"

# This is GOLD for finding out what is taking so much space on your drives!
alias diskspace="du -S | sort -n -r |more"

# Command line mplayer movie watching for the win.
alias mp="mplayer -fs"

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

# This will keep you sane when you're about to smash the keyboard again.
alias frak="fortune"

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'


# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"
alias gc=". /usr/local/bin/gitdate && git commit -v "
alias j="jobs"
alias cls='clear'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# copy file interactive
alias cp='cp -i'

# move file interactive
alias mv='mv -i'