#!/bin/sh

#test2

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xbindkeys &
/home/wraient/.hidden/archsetup/startup_git_sync.sh
auto_git 
spotify-launcher & # auto-open spotify
telegram-desktop & # auto-open telegram
firefox & # auto-open firefox
discord & # auto-open discord
# brightness_control & # control brightness 
# volume_control & # control volume
dwmblocks & # taskbar
newlook & # match terminal look with wallpaper
picom & # xcompmgr & # match terminal look with wallpaper
exec dwm
