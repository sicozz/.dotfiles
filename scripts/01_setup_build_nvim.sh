#!/bin/bash

sudo pacman -Rsu -y vim neovim
sudo pacman -Syu base-devel cmake unzip ninja curl

cd /usr/local/src &&
sudo git clone https://github.com/neovim/neovim
sudo chown -R $USER:$USER /usr/local/src/neovim

cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sudo ln -s /usr/local/bin/nvim /usr/local/bin/vim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "[>] Update plugins"
