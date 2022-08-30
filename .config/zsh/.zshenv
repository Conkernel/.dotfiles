# PATH global para el usuario
PATH=/home/oloco/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin:$PATH

# Set the amazing ZDOTDIR variable and others:
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export EDITOR="nvim"
export VISUAL="nvim"

# Locales
export LANG="es_ES.UTF-8"
export LANGUAGE="es_ES.UTF-8"
export LC_ADDRESS="es_ES.UTF-8"
export LC_COLLATE="es_ES.UTF-8"
export LC_CTYPE="es_ES.UTF-8"
export LC_IDENTIFICATION="es_ES.UTF-8"
export LC_MEASUREMENT="es_ES.UTF-8"
export LC_MESSAGES="es_ES.UTF-8"
export LC_MONETARY="es_ES.UTF-8"
export LC_NAME="es_ES.UTF-8"
export LC_NUMERIC="es_ES.UTF-8"
export LC_PAPER="es_ES.UTF-8"
export LC_TELEPHONE="es_ES.UTF-8"
export LC_TIME="es_ES.UTF-8"



# Asignamos la ruta del zhist de ZSH a un directorio tmp del usuario: 
#[[ -f $HOME/.zhistory ]] && mkdir $HOME/.tmp && mv $HOME/.zhistory  $HOME/.tmp/.zhistory && export HISTFILE="$HOME/.tmp/.zhistory"


# Si no existe el directorio $HOME/.tmp, lo creamos
if  [[ ! -d $HOME/.tmp ]]; then
    mkdir $HOME/.tmp
fi


# Si ya existe un $HOME/.zhistory, lo movemos al nuevo directorio $HOME/.tmp
if  [[ -f $HOME/.zhistory ]]; then
    mv $HOME/.zhistory $HOME/.tmp/.zhistory
    export HISTFILE="$HOME/.tmp/.zhistory"
else
    touch $HOME/.tmp/.zhistory
    export HISTFILE="$HOME/.tmp/.zhistory"
fi

export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
export TERM='rxvt-256color'
export DOTFILES="$HOME/.dotfiles"
export MANPAGER='nvim +Man!'
