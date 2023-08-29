#!/bin/bash

echo "Installation of build dependencies in progress..."
sudo pacman -S --needed git base-devel
sudo pacman -S git

echo "Directory deletion..."

rm -rf ~/.config/alacritty
rm -rf ~/.config/fish
rm -rf ~/.config/i3
rm -rf ~/.config/neofetch
rm -rf ~/.config/nvim
rm -rf ~/.config/picom
rm -rf ~/.config/polybar
rm -rf ~/.config/rofi
rm -rf ~/.config/tmux
rm -rf ~/.config/mpv

echo "Installation of dependencies in progress... (this can take a while)"
sudo pacman -S picom feh i3 fish neofetch i3lock polybar rofi alacritty tmux neovim xclip mpv flameshot

echo "Font installation in progress..."
git clone https://aur.archlinux.org/nerd-fonts-jetbrains-mono-160.git ~/.cache/vclemenzi-rice-fonts-setup-temp
sudo pacman -S fontconfig xorg-mkfontscale xorg-mkfontdir fontforge
cd ~/.cache/vclemenzi-rice-fonts-setup-temp && makepkg -si
cd ..

echo "Downloading the repo in progress..."
git clone https://github.com/vclemenzi/rice ~/.cache/vclemenzi-rice-temp/

cp -r ~/.cache/vclemenzi-rice-temp/alacritty/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/fish/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/i3/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/neofetch/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/nvim/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/picom/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/polybar/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/rofi/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/tmux/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/mpv/ ~/.config/

rm -rf ~/.cache/vclemenzi-rice-temp/
