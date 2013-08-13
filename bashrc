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

# ssh aliases
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

# add Ruby to path
PATH="${PATH}:/home/rho/.gem/ruby/2.0.0/bin"

# set UTF-8
export TERM=xterm
export LANG=en_US.UTF-8
export LC_MESSAGES="C"

# make vim a default
export VISUAL="/usr/bin/vim -p -X"

# alias for screen backlight fix
alias "backlight"="/bin/bash /usr/bin/asus-screen-brightness"

# alias for sudo to carry environment variables over
alias sudo="sudo -E "

# alias terminal vim to gvim
alias vim="gvim"
alias vi="gvim"

# alias for todo.sh to t
export TODOTXT_DEFAULT_ACTION=ls
alias t="todo.sh"
alias punch="python2 /home/rho/src/punch-time-tracking-plus/Punch.py"

# local mysql alias
alias mysql='mysql -uroot -proot'

# restart awesome
alias awesomerestart='echo "awesome.restart()" | awesome-client'

# devkitpro
export DEVKITPRO=/opt/devkitpro
export DEVKITPPC=$DEVKITPRO/devkitPPC

# NVM
source ~/.nvm/nvm.sh
