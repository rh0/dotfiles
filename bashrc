#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# ssh aliases
if [ -f ~/.bash_ssh ]; then
  . ~/.bash_ssh
fi

# add Ruby to path
PATH="${PATH}:/home/rho/.gem/ruby/1.9.1/bin"

# set UTF-8
export TERM=xterm
export LANG=en_US.UTF-8
export LC_MESSAGES="C"

# make vim a default
export VISUAL="/usr/bin/vim -p -X"

# alias for screen backlight fix
alias "backlight"="/bin/bash /usr/bin/asus-screen-brightness"

# alias for sudo to carry environment variables over
alias sudo="sudo -E"

# alias terminal vim to gvim
alias vim="gvim"
alias vi="gvim"

# alias for todo.sh to t
alias t="todo.sh"
