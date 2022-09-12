Actualizar mirrors: 

sudo pacman -Syy 
 
 
Instalar algunas Apps: 

sudo pacman --noconfirm -S git stow lsd bat go neovim p7zip fzf xclip nerd-fonts 
 
 
Instalar Powerlevel10k: 

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k 


.Dotfiles / STOW: 

cd ~/ 

git clone https://github.com/Conkernel/.dotfiles 

cd .dotfiles 

stow -v .config -t ~/.config 


Para Zsh, es importante añadir estas líneas al /etc/zsh/zshenv, de manera que delegue la lectura de ficheros de configuración al directorio .config/zsh local del usuario. Algo así nos valdría: 


ZDOTDIR=$HOME/.config/zsh/

A partir de ahora, la config de zsh la leerá desde ese directorio local.



Si no queremos tocar etc, podemos hacerlo de esta manera, modificando el fichero de config de zsh del usuario para que redireccione a $HOME/.config/zsh/

 
touch $HOME/.zshrc 
 
Y ahora redirigimos fichero de configuración .zshrc a .config  
 
nano $HOME/.zshrc 
 
if [[ -e $HOME/.config/zsh/.zshrc ]]; then 

source $HOME/.config/zsh/.zshrc 

fi 

 
Copiamos dotfiles de .config a /etc/skel de manera que nuevos usuarios "nazcan" con esa configuración incorporada 
 
sudo cp -r $HOME/.dotfiles/.config/ /etc/skel/ 

sudo cp $HOME/.zshrc /etc/skel 
 
