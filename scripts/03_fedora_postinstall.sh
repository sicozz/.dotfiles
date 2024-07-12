sudo echo "max_parallel_downloads=10\nfastestmirror=True" >> /etc/dnf/dnf.conf

sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf upgrade --refresh
sudo dnf groupupdate core
sudo dnf install gnome-tweak-tool
flatpak remote-modify --enable flathub
flatpak install flathub com.mattjakeman.ExtensionManager
sudo hostnamectl set-hostname grid
sudo dnf groupupdate sound-and-video
