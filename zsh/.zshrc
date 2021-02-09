#!/bin/bash

# Path to your oh-my-zsh installation.
export ZSH=/home/phenry/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

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
# COMPLETION_WAITING_DOTS="true"

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
# plugins=(git vi-mode)
plugins=(git history-substring-search colorize colored-man-pages archlinux rust)


# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export EDITOR=/usr/bin/nvim

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

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

# prevent nested ranger instances: if the current shell is a child of a ranger
# instance and ranger is requested, exit the shell and return to the parent
# ranger.  if the current shell isn't a child of a ranger instance and ranger is
# requested, open a new ranger instance
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

# read that this was a good idea somewhere once
alias sudo='sudo '

# enable moving the mouse while using the keyboard
alias fixmouse='xinput set-prop "AlpsPS/2 ALPS GlidePoint" 309 0'

# Lumin QOL functions
alias tb="workon lumin3 && cd lumin-bot"
alias tbg="workon lumin3 && cd lumin-bot && smerge ."
alias th="workon lumin3 && cd lumin-hostdescs"
alias thg="workon lumin3 && cd lumin-hostdescs && smerge ."
alias tm="workon lumin3 && cd lumin-mettel-fci"
alias tmg="workon lumin3 && cd lumin-mettel-fci && smerge . && git gui &"
alias tn="workon lumin3 && cd lumin-nlp"
alias tng="workon lumin3 && cd lumin-nlp && smerge . && git gui &"

macpush () {
  LINUX_OUT='/home/phenry/lumin/lumin-bot/out-logic'
  MAC_OUT='/Users/phenry/lumin/lumin-bot/out-logic'
  ssh macbook "umount ${MAC_OUT}"
  rsync -avzz ~/lumin/ macbook:~/lumin/
  ssh macbook "mkdir -p ${MAC_OUT} && sshfs simone:${LINUX_OUT}/ ${MAC_OUT} -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=myVolName"
}

LUMIN_PROJECT_LINUX='/home/phenry/lumin'
LUMIN_PROJECT_MAC='/Users/phenry/lumin'
maclink () {
  ssh macbook "mkdir -p ${LUMIN_PROJECT_MAC} && sshfs simone:${LUMIN_PROJECT_LINUX}/ ${LUMIN_PROJECT_MAC} -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=myVolName"
}
macunlink () {
  # ssh macbook "umount ${LUMIN_PROJECT_MAC}"
  ssh macbook "diskutil umount ${LUMIN_PROJECT_MAC}"
}

# activate rbenv
eval "$(rbenv init -)"

# set virtualenvwrapper's folder and activate it
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# set cuda paths
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda/lib64"
export CUDA_HOME=/opt/cuda/

# add rust stuff to path
export PATH=$HOME/.cargo/bin:$PATH

# add ngrok stuff to path
export PATH=$HOME/.ngrok2:$PATH

# add yarn stuff to path
export PATH=$(yarn global bin):$PATH

# function to start ncmpcpp with stuff needed by the visualizer
nplayer () (nc -kluw 1 127.0.0.1 5555 > /tmp/mpd.fifo & trap "kill $!" EXIT; ncmpcpp)

# Ternimals
alias tern0='ternimal true_color=false height=100 width=$(tput cols) length=200 thickness=1,5,1,0 radius=20,24 gradient=0:#666600,0.5:#00ff00,1:#003300'
alias tern1='ternimal true_color=false height=100 width=$(tput cols) length=100 thickness=1,8,16,0,0,0,1 radius=6,12 gradient=0:#FF6600,1:#0033EE,1:#FF3300'
