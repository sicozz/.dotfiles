#!/bin/bash

# Add programs
sudo dnf install -y \
gcc-c++ \
libstdc++-devel \
git \
delve \
protobuf-compiler \
grpcurl \
ncdu \
stow \
tmux \
zsh \
kitty \
fzf \
ranger \
dmenu \
bat \
eza \
curl \
hyprland \
jetbrains-mono-nl-fonts \
wl-clipboard \
swaybg \
waybar \
nodejs \
i3 \
feh \
pavucontrol \
xclip \
dunst \
openvpn \
wireshark \
tcpdump \
lxappearance \
mpv \
bluez \
flameshot \
zathura \
zathura-pdf-mupdf \
timeshift \
htop \
neofetch \
cmatrix

sudo dnf groupinstall -y "Development Tools"

# flatpak install
# spotify \
# discord \
# obsidian \

# Install docker \

# sudo ufw limit 22/tcp
# sudo ufw allow 80/tcp
# sudo ufw allow 443/tcp
# sudo ufw default deny incoming
# sudo ufw default allow outgoing
# sudo ufw enable
#
# echo "[DEFAULT]
# ignoreip = 127.0.0.1/8 ::1
# bantime = 3600
# findtime = 600
# maxretry = 5
#
# [sshd]
# enabled = true" | sudo tee /etc/fail2ban/jail.local
# sudo systemctl enable fail2ban
# sudo systemctl start fail2ban
#
# sudo usermod -aG docker $USER
# sudo systemctl enable docker
# sudo systemctl start docker
#
# sudo usermod -aG vboxusers $USER
# sudo modprobe vboxdrv vboxguest vboxvideo vboxsf
# sudo vboxreload
