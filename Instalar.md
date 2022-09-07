# Actualizar mirrors:
sudo pacman -Syy
# Apps
sudo pacman --noconfirm -S git stow lsd bat go neovim p7zip fzf xclip nerd-fonts



==== .Dotfiles ====

Algunos de los ficheros de configuración de mis sistemas GNU/Lnux. Por el momento es tan solo un proyecto muy beta, así que no recomiendo sacar ninguna idea de aquí.

[ZSH]

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

Para Zsh, es importante añadir estas líneas al $HOME/.zshrc, de manera que delegue la lectura de ficheros de configuración al directorio .config/zsh local del usuario. Algo así nos valdría:

## Redirigimos fichero de configuración .zshrc a .config ##

if [[ -e $HOME/.config/zsh/.zshrc ]]; then

source $HOME/.config/zsh/.zshrc

fi

Stow
cd ~/

git clone https://github.com/Conkernel/.dotfiles

cd .dotfiles

stow -v .config -t ~/.config

# Copiamos dotfiles de .config a /etc/skel

sudo cp -r $HOME/.dotfiles/.config/ /etc/skel/

sudo cp $HOME/.zshrc /etc/skel
