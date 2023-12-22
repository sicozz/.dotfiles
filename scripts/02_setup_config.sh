#!/bin/bash

conf_dirs=(wezterm tmux nvim zathura)
meslo_dir=~/.local/share/fonts/MesloLGS_NF

# Install Nerd Font
mkdir -p $meslo_dir
cd $meslo_dir
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -f -v

# Clone dotfiles
git clone git@github.com:sicozz/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Set configuration
for conf_dir in "${conf_dirs[@]}"
do
    stow $conf_dir
done
