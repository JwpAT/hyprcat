#!/bin/sh

echo "yay and sddm are not installed. Installing..."
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S --needed - < packages

#add config copy  below

systemctl enable sddm
systemctl enable bluetooth.service
systemctl start bluetooth.service

chmod +x ~/.config/scripts/wireless-menu.sh
