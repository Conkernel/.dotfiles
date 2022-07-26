# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.config/zsh/.zshrc'


# Para que al hacer cd .. + tab nos aparezca el directorio padre "../"
zstyle ':completion:*' special-dirs true
autoload -Uz compinit && compinit


ZSH_THEME="bira"

source ~/powerlevel10k/powerlevel10k.zsh-theme 

autoload -Uz compinit promptinit
compinit
promptinit
prompt walters


# End of lines added by compinstall

# Use powerline
USE_POWERLINE="true"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


#KEYS

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search


zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search



# Para el la cache de autocompletado de zsh, y que no nos llene el home de ficheros.

if ! [[ -d "${XDG_CACHE_HOME/zsh}" ]]; then
  mkdir "${XDG_CACHE_HOME/zsh}"
fi
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION




### FUNCIONES ###

function gitall() {
    if [ "$1" = "" ] # or better, if [ -n "$1" ] 
        then
		echo "Escribe un commit, anda..."
		return
    else
                git add .
                git commit -m "$*"
                git push
    fi
}

# Nos lleva al repo de Ansible
function cdrepos() {
    cd /mnt/repos/Ansible
}

 # Nos lleva al directorio de arch
function cdarch() {
    cd /mnt/repos/Ansible/Proyectos/arch
}






bindkey '^?'      backward-delete-char          # bs         delete one char backward
bindkey '^[[3~'   delete-char                   # delete     delete one char forward
bindkey '^[[H'    beginning-of-line             # home       go to the beginning of line
bindkey '^[[F'    end-of-line                   # end        go to the end of line
bindkey '^[[1;5C' forward-word                  # ctrl+right go forward one word
bindkey '^[[1;5D' backward-word                 # ctrl+left  go backward one word
bindkey '^H'      backward-kill-word            # ctrl+bs    delete previous word
bindkey '^[[3;5~' kill-word                     # ctrl+del   delete next word
bindkey '^J'      backward-kill-line            # ctrl+j     delete everything before cursor
bindkey '^[[D'    backward-char                 # left       move cursor one char backward
bindkey '^[[C'    forward-char                  # right      move cursor one char forward
#bindkey '^[[A'    up-line-or-beginning-search   # up         prev command in history
#bindkey '^[[B'    down-line-or-beginning-search # down       next command in history

(( ! ${+functions[p10k]} )) || p10k finalize

source $HOME/.config/zsh/.zshenv
source $HOME/.config/zsh/.zprofile
source $HOME/.config/zsh/.aliases
