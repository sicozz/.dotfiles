# Programs
arandr
autoconf, automake??
bat
  bat config
bleachbit
brave-browser
brightnessctl
bzip2
cmake
curl
dbus??
dhcpd??
discord
dmenu
dunst
  dunst config
feh
flameshot
gcc
gimp
git
gtk
gzip
htop
i3-gaps
i3-scrot
i3bar
jack??
kitty
  kitty conf
lxappearance
make
mesa??
mpv
neovim
netctl??
networkmanager
networkmanager-openconnect
networkmanager-openvpn
networkmanager-openvpn
netwarkmanager-pptp
netwarkmanager-vpnc
network-manager-applet
nm-applet
node
notes-up
noto-fonts??
npm
obs
doas
  doas conf
openssh
openvpn
openssl
pa-applet
pavucontrol
pcmanfm
picom
  picom conf
pipewire
powerline-fonts
pulseaudio
pulseaudio-alsa
pulseaudio-jack
pulseaudio-lirc
pulseaudio-rtp
pulseaudio-zeroconf
python
qt5ct
-- how to install rust
scrot
sed
spotify
stow
sudo
tar
tmux
transmission-gtk
tree
unzip
xclip
yarn
zathura
  zathura conf
zathura-pdf-poppler
zoom
zsh
zsh-autosuggestions
zsh-completions
zsh-history-substring-search
zsh-syntax-highlighting

# Import dotfiles

# GTK
Widget: Flat-Remix-GTK-Blue-Dark-Solid | Solarized-Dark-Cyan-3.36
Icon: Flat-Remix-Dark-Princess-Blue

# Brave
sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

------------------------------

Solarized Dark
