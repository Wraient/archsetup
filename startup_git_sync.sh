#!/bin/bash

# List of file paths and folder paths to copy
paths=(
    "/home/wraient/.bashrc"
    "/home/wraient/.zshrc"
    "/home/wraient/.xinitrc"
    "/home/wraient/.ssh/known_hosts"
    "/home/wraient/.ssh/config"
    "/home/wraient/.bash_profile"
    "/home/wraient/pix/wall"
    "/home/wraient/.config/picom.conf"
    "/home/wraient/.xbindkeysrc"
    "/home/wraient/.config/rofi/"
    "/home/wraient/.config/sxhkd/"
    "/home/wraient/.config/bspwm/"
    "/home/wraient/.config/polybar/"
    "/home/wraient/.batsignal"
    "/etc/X11/org.conf.d"


    # Add more file and folder paths as needed
)

# Copy files and folders to archsetup folder
for path in "${paths[@]}"; do
    if [ -f "$path" ]; then
        # If it's a file, copy it directly
        filename=$(basename "$path")
        cp "$path" ~/.hidden/archsetup/"$filename" 2>/dev/null
    elif [ -d "$path" ]; then
        # If it's a folder, copy its contents recursively
        dirname=$(basename "$path")
        cp -r "$path" ~/.hidden/archsetup/"$dirname" 2>/dev/null
    fi
done

