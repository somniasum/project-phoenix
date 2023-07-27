#!/bin/bash
#author: Zv74D
#Stage 1 is the installtion process
#Installation of the important packages

echo "What is your username?"
read username
clear 
echo "Now running Stage 1"

#install yay
clear
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username yay-git
cd yay-git
clear
makepkg -si
clear
cd ~/
yay -Sy

#to install packages by using the aur manager
packages=('pavucontrol' 'polybar' 'ttf-firacode-nerd' 'brave-browser' 'ttf-cascadia-code')

for ((i=0;i<${#packages[@]};i++))
do
	yay -S ${packages[$i]}
done

#All needed packags using pacman
sudo pacman -S man ranger mpv neovim xwallpaper kitty starship feh git bluez bluez-utils nodejs rust firefox 


