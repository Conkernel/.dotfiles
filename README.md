==== .Dotfiles ====

Algunos de los ficheros de configuración de mis sistemas GNU/Lnux.
Por el momento es tan solo un proyecto muy beta, así que no recomiendo sacar ninguna idea de aquí.



[ZSH]

Para Zsh, es importante añadir esta línea al $HOME/.zshrc, de manera que delegue la lectura de ficheros de configuración al directorio .config/zsh local del usuario. Algo así nos valdría:

`echo 'source ~/.config/zsh/.zshrc' >> $HOME/.zshrc`

