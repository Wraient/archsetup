// run in ~

# nmcli start
# systemctl status nmcli

# nmcli d wifi connect {wifi name without quotations} password {password without quotations} # connect to wifi
# sudo pacman-key --init
# sudo pacman-key --populate archlinux
# sudo pacman-key --refresh-keys
USER="wraient"
git clone https://github.com/wraient/archsetup
cd archsetup
while read -r package; do sudo pacman -S --noconfirm "$package"; done < requirements.txt
cd ~
git clone https://github.com/wraient/bin
cd /home/$USER/bin/
chmod +x *
mkdir /home/$USER/.local/
mv ../bin /home/$USER/.local/
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo systemctl start acpid
sudo systemctl enable acpid
# add ~/.local/bin to path
# download and add auto_git to path
git config --global user.name "$USER"
git config --global user.email "wraient.911@gmail.com"



git clone https://github.com/wraient/dwm
git clone https://github.com/wraient/dmenu
git clone https://github.com/wraient/st






