# set the amazing ZDOTDIR variable

PATH=/home/oloco/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin:$PATH
#export ZDOTDIR="~/.config/zsh"


export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export EDITOR="nvim"
export VISUAL="nvim"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Locales
export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=es_ES.UTF-8

#[[ -d $HOME/.zhistory ]] && mkdir $HOME/tmp && mv $HOME/.zhistory  $HOME/tmp/.zhistory && export HISTFILE="$HOME/tmp/.zhistory"


if  [[ -f $HOME/.zhistory ]]; then
    mkdir $HOME/.tmp
    mv $HOME/.zhistory $HOME/.tmp/.zhistory
    export HISTFILE="$HOME/.tmp/.zhistory"
else
    export HISTFILE="$HOME/.tmp/.zhistory"
fi


# export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export TERM='rxvt-256color'
export DOTFILES="$HOME/.dotfiles"

export MANPAGER='nvim +Man!'
