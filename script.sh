#!/bin/bash

# Copy all files and directories from the local .config directory to the .config directory in the home directory
cp -R .config/* ~/.config/

# Copy the local .profile file to the .profile file in the home directory
cp .profile ~/.profile

# Copy the local .gtkrc-2.0 file to the .gtkrc-2.0 file in the home directory
cp .gtkrc-2.0 ~/.gtkrc-2.0

# Change permission of every files in ~/.config/sway/scripts 
chmod -R +x ~/.config/sway/scripts

# Add a line 'source ~/.profile' after the line that starts with 'SDDM_USER_SHELL' in the wayland-session script in the /usr/share/sddm/scripts directory
sudo sed -ie '/^SDDM_USER_SHELL/a source ~\/.profile' /usr/share/sddm/scripts/wayland-session

# Update all packages on the system, install new packages if needed, without confirmation, using a list of packages from the file packages-repository.txt
sudo pacman -Syu --needed --noconfirm - < packages-repository.txt