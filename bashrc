#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# make vim a default
export VISUAL="/usr/bin/vim -p -X"

# alias for screen backlight fix 
alias "backlight"="/bin/bash /usr/bin/asus-screen-brightness"
