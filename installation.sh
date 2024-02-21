#!/bin/bash
# run in ~

# bluetooth connection :
# systemctl enable bluetooth
# bluetoothctl
# power on
# default-agent
# scan on
# trust {device}
# pair {device}
# connect {device}

# connect to wifi :
# nmcli start
# systemctl status nmcli
# nmcli d wifi connect {wifi name without quotations} password {password without quotations} # connect to wifi

# if pacman isnt working :
# sudo rm -R /etc/pacman.d/gnupg
# sudo rm -R /root/.gnupg
# sudo pacman-key --init
# sudo pacman-key --populate archlinux
# sudo pacman-key --refresh-keys

# git push :
# git config --global init.defaultBranch main
# git init
# git add .
# git commit -m "init"
# git push https://{username}:{key}@github.com/{username}/{repository}.git main

USER="wraient"

git clone https://github.com/wraient/archsetup
cd archsetup
mv .xinitrc ~/.xinitrc
while read -r package; do sudo pacman -S --noconfirm "$package"; done < requirements.txt
cd ~
git clone https://github.com/wraient/bin
chmod +x /home/$USER/bin/*
mkdir /home/$USER/.local/
mv /home/$USER/bin /home/$USER/.local/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo systemctl start acpid
sudo systemctl enable acpid

# add ~/.local/bin to path
# download and add auto_git to path

git config --global user.name "$USER"
git config --global user.email "wraient.911@gmail.com"
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S zsh-syntax-highlighting
cd ~
git clone https://github.com/wraient/dwmblocks
cd dwmblocks
sudo make clean install
cd ~
paru -S python-pywalfox
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"
paru -S whatsapp-for-linux

