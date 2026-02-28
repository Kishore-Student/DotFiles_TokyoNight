#!/bin/bash
set -e

# Update system
sudo apt update && sudo apt upgrade -y

# Install core programs
sudo apt install -y i3 i3blocks rofi picom git wget curl build-essential qt5-default

# Install fonts
mkdir -p ~/.local/share/fonts

# Awesome Fonts
git clone https://github.com/FortAwesome/Font-Awesome.git /tmp/awesome-fonts
cp /tmp/awesome-fonts/webfonts/*.ttf ~/.local/share/fonts/
rm -rf /tmp/awesome-fonts

# Noto Serif
sudo apt install -y fonts-noto-serif

# Refresh font cache
fc-cache -fv

# Copy DotFiles configs to ~/.config
mkdir -p ~/.config
cp -r ~/DotFiles/i3 ~/.config/i3
cp -r ~/DotFiles/rofi ~/.config/rofi
cp -r ~/DotFiles/picom ~/.config/picom

