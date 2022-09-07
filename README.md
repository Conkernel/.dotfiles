==== .Dotfiles ====

Algunos de los ficheros de configuración de mis sistemas GNU/Lnux.
Por el momento es tan solo un proyecto muy beta, así que no recomiendo sacar ninguna idea de aquí.



[ZSH]

Para Zsh, es importante añadir estas líneas al $HOME/.zshrc, de manera que delegue la lectura de ficheros de configuración al directorio .config/zsh local del usuario. Algo así nos valdría:


`## Redirigimos fichero de configuración .zshrc a .config ##`

`if [[ -e $HOME/.config/zsh/.zshrc ]]; then`

  `source $HOME/.config/zsh/.zshrc`
  
`fi`


# Stow #
cd ~/
git clone https://github.com/Conkernel/.dotfiles
cd .dotfiles
stow -v .config -t ~/.config

