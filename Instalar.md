# Actualizar mirrors:
sudo pacman -Syy
# Apps
sudo pacman --noconfirm -S git stow lsd bat go neovim p7zip fzf xclip nerd-fonts
# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# Copiamos dotfiles de .config a /etc/skel
sudo cp -r $HOME/.dotfiles/.config/ /etc/skel/
sudo cp $HOME/.zshrc /etc/skel
# Horario
sudo ntpdate pool.ntp.org
# youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
