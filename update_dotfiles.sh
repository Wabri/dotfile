# Upgrade code config
cp -r ~/.config/Code/User/settings.json home/.config/Code/User/
code --list-extensions | xargs -L 1 echo code --install-extension > ./home/.config/Code/install_extension.sh

# Update i3
cp -r ~/.config/i3/ home/.config/

# Update i3
cp -r ~/.screenlayout/ home/

# Update albert
cp -r ~/.config/albert/albert.conf home/.config/albert/

# Update polybar
cp -r ~/.config/polybar/ home/.config/

# Update .Xresources + .urxvt
cp -r ~/.Xresources home/
cp -r ~/.urxvt home/

# Update shells
cp ~/.zshrc home/
cp ~/.bashrc home/

# Update .vimrc
cp ~/.vimrc home/

# Update vifmrc
cp -r ~/.config/vifm/vifmrc home/.config/vifm/
cp -r ~/.config/vifm/scripts home/.config/vifm/
cp -r ~/.config/vifm/colors home/.config/vifm/

