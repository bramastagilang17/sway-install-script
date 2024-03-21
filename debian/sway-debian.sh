#!/bin/bash

# Dependencies
sudo apt install -y build-essential cmake cmake-extras curl gettext libnotify-bin light meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev

# Wayland protocols
sudo apt install -y wayland-protocols xdg-desktop-portal-wlr xwayland

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# Sway packages for debian
sudo apt install -y sway swaylock swayidle swaybg waybar wofi

# File manager
sudo apt install -y thunar thunar-archive-plugin thunar-volan gvfs file-roller

# Terminal
sudo apt install -y alacritty foot

# Multimedia
sudo apt install -y ffmpeg

# Brightness and audio control
sudo apt install -y brightnessctl pactl

# Screenshot
sudo apt install -y grim slurp

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Notification using mako
sudo apt install -y mako unzip xdotool libnotify-dev

# Theme changer
# nwg-look
# bash ./scripts/nwg-look
# lxappearance
sudo apt install -y lxappearance

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Bluetooth
sudo apt install -y bluez blueman
sudo systemctl enable bluetooth

# Other
sudo apt install -y curl tree neofetch dex wl-clipboard btop

# Install SDDM Console Display Manager
sudo apt install --no-install-recommends -y sddm
sudo systemctl enable sddm

# Cleanup
sudo apt autoremove

printf "Done!\n"