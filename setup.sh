#!/bin/bash

cd ~/archsetup

while read -r package; do sudo pacman -S --noconfirm "$package"; done < requirements.txt

cd ~
mkdir .local/src
git clone https://github.com/wraient/dwm
git clone https://github.com/wraient/dmenu
git clone https://github.com/wraient/st

mv ~/dwm ~/.local/src
mv ~/dmenu ~/.local/src
mv ~/st ~/.local/src

cd ~/.local/src/dwm
sudo make clean install
cd ~/.local/src/dmenu
sudo make clean install
cd ~/.local/src/st
sudo make clean install

startx



