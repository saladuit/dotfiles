#!/bin/bash
# enable multilib for spotify and steam
pacman -Syu
pacman -S git calibre guake gnome-calculator nautilus gnome-system-monitor gnome-tweaks \
	noto-fonts-emoji gimp neofetch zsh nvidia nvidia-utils nvidia-prime nvidia-settings \
	lib32-nvidia-utils libvdpau libxnvctrl vulkan-icd-loader lib32-vulkan-icd-loader \
	keepassxc neovim gitkraken valgrind gdb lsd python-pynvim ruby xclip

cd
mkdir -p ~/repos/installation

cd ~/repos/installation
git clone https://aur.archlinux.org/libpamac-aur.git
git clone https://aur.archlinux.org/pamac-aur.git
git clone https://aur.archlinux.org/chrome-gnome-shell.git
git clone https://aur.archlinux.org/ferdium-bin.git

cd ~/repos/installation/libpamac-aur
makepkg -si
cd ~/repos/installation/pamac-aur
makepkg -si
cd ~/repos/installation/chrome-gnome-shell
makepkg -si
cd ~/repos/installation/ferdium-bin
makepkg -si

rm -rf ~/repos/installation

sudo pacman -S pacman-contrib

sensors-detect
systemctl enable bluetooth
gem install neovimm
sudo npm install -g neovim
sudo cpan install Neovim::Ext
pacman -Syyuu
pacman -Rnsc $(pacman -Qqdt)

@echo "Install cloned repos manually with \"makedpkg -si\""
@echo "Don't forget to enable aur support"
@echo "install brave-bin steam spoitfy-launcher"
@echo "change commnad for updating to pamac-manager --updates && opening pamac-manager"
@echo "enable multilib /etc/pacman.conf by commenting out multib tool, Don't uncomment testing"
