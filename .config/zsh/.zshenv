
## Para copiar/pegar sin tener e cuenta los números de línea: seleccionar usando control + alt o usar :set invnumber. Tb se podría usar :set mouse=a pero es más incómodo

# PATH global para el usuario
PATH=~/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin:$PATH

# Para poder confirmar si este fichero ha sido leído a través de source o a través de .zshrc:
export zshenv="Procesado"

# Set the amazing ZDOTDIR variable and others:
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/.cache"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
export EDITOR="nvim"
export VISUAL="nvim"

# VIM #  Por el momento hay que setear el fichero de config de vim manualmente para que lo pueda leer en otro lugar que no sea ~/.vimrc
#export VIMINIT="source ~/.config/vim/.vimrc"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/.vimrc" | source $MYVIMRC'
export VIMDOTDIR="$XDG_CONFIG_HOME/vim"

export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
export TERM='rxvt-256color'
export DOTFILES="$HOME/.dotfiles"
export MANPAGER='nvim +Man!'

# Coloreamos salida de Less:
export LESS='-R --use-color -Dd+r$Du+b'

# Locales
export zshenv="Procesado"
export LC_ALL="es_ES.UTF-8"
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



