#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# vi mode
set -o vi

# ssh aliases
if [ -f ~/.bash_ssh ]; then
  . ~/.bash_ssh
fi

# ssh aliases
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

# add Ruby to path
PATH="${PATH}:/home/rho/.gem/ruby/2.1.0/bin"

# set UTF-8
export TERM=xterm
export LANG=en_US.UTF-8
export LC_MESSAGES="C"

# make vim a default
export VISUAL="/usr/bin/vim -p -X"

# prompt customaizations
PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;34m\]\u@\h'; fi)\[\033[1;37m\])\$([[ \$? != 0 ]] && echo \"\342\224\200(\[\033[0;31m\]\342\234\227\[\033[1;37m\])\")\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\234\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\n\342\224\224\342\224\200$>> \[\033[0m\]"

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

# enable onlap monitor alias
alias onlap='xrandr --output HDMI1 --mode 1366x768 --right-of eDP1'

# devkitpro
export DEVKITPRO=/opt/devkitpro
export DEVKITPPC=$DEVKITPRO/devkitPPC

# NVM
source ~/.nvm/nvm.sh

# Bundler
export GEM_HOME=~/.gem/ruby/2.0.0

# Alias for bd see https://github.com/vigneshwaranr/bd
alias bd=". bd -si"
