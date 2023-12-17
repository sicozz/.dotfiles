#!/bin/bash

# Configure mirrors
sudo pacman-mirrors --interactive --default && sudo pacman -Syu

sudo pacman -Syyu
sudo systemctl enable fstrim.timer


# Install yay
cd /usr/local/src/
sudo pacman -S --needed git base-devel
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:$USER yay
cd yay
makepkg -si

# Add programs
yay -Syu \
git \
stow \
tmux \
zsh \
ranger \
dmenu \
bat \
eza \
curl \
xh \
ufw \
fail2ban \
nodejs \
i3 \
feh \
xclip \
picom \
dunst \
openvpn \
wireshark-qt \
tcpdump \
lxappearance \
mpv \
bluez bluez-utils \
flameshot \
zathura \
zathura-pdf-mupdf \
wezterm \
spotify \
discord \
obsidian \
virtualbox linux65-virtualbox-host-modules virtualbox-ext-oracle \
docker docker-compose \
timeshift

sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

echo "[DEFAULT]
ignoreip = 127.0.0.1/8 ::1
bantime = 3600
findtime = 600
maxretry = 5

[sshd]
enabled = true" | sudo tee /etc/fail2ban/jail.local
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG vboxusers $USER
sudo modprobe vboxdrv vboxguest vboxvideo vboxsf
sudo vboxreload
