#!/bin/bash

# Get Swayfx
sudo pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/scenefx0.4.git
cd scenefx0.4/
makepkg -si --noconfirm
cd ..
sudo rm -r scenefx0.4/
git clone https://aur.archlinux.org/swayfx.git
cd swayfx/
makepkg -si --noconfirm
cd ..
sudo rm -r swayfx/

# Get the username of the person running the script
USER_NAME=$(whoami)

set -e  # Exit on any error

echo "=== Swayfx Arch Rice Installer ==="
echo "This will install packages and copy configs. Run on a fresh Arch install."
echo

# Update system
sudo pacman -Syu --noconfirm

# Install core tools
yes | sudo pacman -S curl wget git

# Install packages from list
echo "Installing packages from manual_packages.txt..."
sudo pacman -S --needed --noconfirm - < packages.txt


# Copy configs to ~/.config/
echo "Installing config files..."
mkdir -p ~/.config
mkdir -p ~/.config/wal

WOFI_CSS_FILE="configs/wofi/style.css"
sed -i "s|/home/username/|/home/$USER_NAME/|g" "$WOFI_CSS_FILE"

mv configs/foot ~/.config/
mv configs/sway ~/.config/
mv configs/waybar ~/.config/
mv configs/wofi ~/.config/
mv configs/wal/templates ~/.config/wal

# Copy wallpapers
echo "Copying wallpapers..."
mkdir -p ~/Pictures
mv Wallpapers ~/Pictures
wal -i ~/Pictures/Wallpapers/satalite.jpg

# Optional: Set a default wallpaper (using swaybg)
# You can change this later with feh, swaybg, or your preferred tool
# Example: mkdir -p ~/.config/sway && echo "output * bg ~/Wallpapers/wallpaper1.jpg fill" >> ~/.config/sway/config

# Fonts cache (in case you have custom fonts later)
fc-cache -fv

echo
echo "========================================="
echo "Installation complete!"
echo "Log out and select 'Sway' at the login screen."
echo "If Sway isn't available, you may need to reboot."
echo "Wallpapers are in ~/Wallpapers"
echo "Enjoy your rice! 🚀"
echo "========================================="

sudo reboot
