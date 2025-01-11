echo -e "max_parallel_downloads=10\nfastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf upgrade --refresh -y
sudo dnf group install core -y
sudo dnf install gnome-tweak-tool -y
flatpak remote-modify --enable flathub
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install spotify -y
flatpak install app/com.discordapp.Discord/x86_64/stable -y
sudo hostnamectl set-hostname grid00
sudo dnf group install sound-and-video

git config --global user.email "simozuluaga@gmail.com"
git config --global user.name "Simon Zuluaga"
