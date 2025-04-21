#!/bin/bash

sudo dnf -y install ninja-build cmake gcc make unzip gettext curl glibc-gconv-extra luarocks

cd /usr/local/src &&
sudo git clone https://github.com/neovim/neovim
sudo chown -R $USER:$USER /usr/local/src/neovim

cd neovim
# git checkout stable
git checkout v0.11.0
make CMAKE_BUILD_TYPE=Release
sudo make install
sudo ln -s /usr/local/bin/nvim /usr/local/bin/vim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "[>] Update plugins"
