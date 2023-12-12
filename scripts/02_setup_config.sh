#!/bin/bash

conf_dirs=(wezterm tmux nvim i3 dunst zathura)
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

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Configure zsh
rm ~/.zshrc
stow zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
