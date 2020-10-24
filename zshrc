# Path to your oh-my-zsh installation.
export ZSH=/home/rho/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, archlinux, git-extras, vi-mode)

# User configuration

export PATH="/home/rho/.gem/ruby/2.7.0/bin:/home/rho/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/devkitpro/devkitPPC/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/android-sdk/build-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Try and load bashrc

# set internationalization on right alt
setxkbmap -layout us -variant altgr-intl -option nodeadkeys

# add Android SDK to path
PATH="${PATH}:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/opt/android-sdk/build-tools"

# adding paths for Go
export GOPATH=$HOME/src/go-school/goeg:$HOME/www/emed/trinity/import_preprocess

# adding composer dir to path
export PATH="$HOME/.composer/vendor/bin:$HOME/.local/bin:$PATH"
#
# adding composer dir to path
export PATH="$HOME/.nvm/versions/node/v8.9.1/bin:$PATH"

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
#alias vim="gvim"
#alias vi="gvim"

# alias for todo.sh to t
export TODOTXT_DEFAULT_ACTION=ls
alias td="todo.sh"
alias punch="python2 /home/rho/.todo/punch/Punch.py"

# local mysql alias
alias mysql='mysql -uroot -proot'

# restart awesome
alias awesomerestart='echo "awesome.restart()" | awesome-client'

# enable onlap monitor alias
alias onlap='xrandr --output HDMI-0 --mode 1366x768 --right-of DP-0'
alias hdmoff='xrandr --output HDMI-0 --off'

# nodejs as node
alias nodejs=node

# devkitpro
export DEVKITPRO=/opt/devkitpro
export DEVKITPPC=$DEVKITPRO/devkitPPC

# Bundler
#export GEM_HOME=~/.gem/ruby/2.3.0

# Alias for bd see https://github.com/vigneshwaranr/bd
alias bd=". bd -si"

alias alsi="alsi -a"

alias dirs="dirs -v"

alias phperr="tail -n25 /var/log/httpd/php_error.log"

alias terminus="/home/rho/www/emed/vendor/bin/terminus --colorize"
function prush { terminus drush "$*"}

eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa)
eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa_vol)

source "$HOME/.console/console.rc" 2>/dev/null

source /usr/share/nvm/init-nvm.sh
