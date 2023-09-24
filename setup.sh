#!/bin/bash

print_dots() {
  for i in {3..1}; do
    echo -n "."
    sleep 0.3
  done
}

echo " ______________________________________________"
echo "/ Welcome to vclemenzi's rice setup!          \\"
echo -e "| Remember this action is \033[0;31mirreversible\033[0m!        |"
echo "| Any problems can be reported at:             |"
echo -e "\\  \033[0;36mhttps://gh.vclemenzi.dev/rice\033[0m              /"
echo " ---------------------------------------------"
echo "        \\  ^__^"
echo -e "         \\ (\033[0;33moo\033[0m)\________"
echo -e "           (\033[0;31m__\033[0m)\        )\\/\\"
echo "                ||------w|"
echo "                ||      ||"

echo -n "The installation will start in: "

echo -n -e "\033[0;32m5\033[0m"
print_dots

echo -n -e "\033[0;33m4\033[0m"
print_dots

echo -n -e "\033[0;33m3\033[0m"
print_dots

echo -n -e "\033[0;33m2\033[0m"
print_dots

echo -n -e "\033[0;31m1\033[0m"
print_dots

echo -n -e "\033[0;31m0\033[0m"
print_dots

echo -n -e " \033[0;33mStarting...\033[0m\n"
sleep 1

if ! sudo echo -n -e ""; then
  exit 1
fi

# Step 1: Installation of prerequisites
echo -ne '[\033[0;90m---------------------------\033[0m] (0%)\r'
sudo pacman -S --noconfirm --needed git base-devel &> /dev/null
sudo pacman -S --noconfirm git &> /dev/null

# Step 2: Directory deletion
echo -ne '[\033[0;33m########\033[0m\033[0;90m-------------------\033[0m] (20%)\r'
rm -rf ~/.config/alacritty ~/.config/fish ~/.config/i3 ~/.config/neofetch ~/.config/nvim ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/tmux ~/.config/mpv &> /dev/null

# Step 3: Installation of dependencies
echo -ne '[\033[0;33m############\033[0m\033[0;90m---------------\033[0m] (40%)\r'
sudo pacman -S --noconfirm picom feh i3 zsh neofetch i3lock polybar rofi alacritty tmux neovim xclip mpv flameshot &> /dev/null

mkdir ~/.config/zsh/ &> /dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting/ &> /dev/null

# Step 4: Font installation
echo -ne '[\033[0;33m##############\033[0m\033[0;90m-------------\033[0m] (50%)\r'
git clone https://aur.archlinux.org/nerd-fonts-meta.git ~/.cache/vclemenzi-rice-fonts-setup-temp &> /dev/null
echo -ne '[\033[0;33m#################\033[0m\033[0;90m----------\033[0m] (60%)\r'
sudo pacman -S --noconfirm fontconfig xorg-mkfontscale xorg-mkfontdir fontforge &> /dev/null
echo -ne '[\033[0;33m####################\033[0m\033[0;90m-------\033[0m] (70%)\r'
cd ~/.cache/vclemenzi-rice-fonts-setup-temp && makepkg -si --noconfirm &> /dev/null
cd ..

# Step 5: Downloading the repo
echo -ne '[\033[0;33m######################\033[0m\033[0;90m-----\033[0m] (80%)\r'
git clone https://github.com/vclemenzi/rice ~/.cache/vclemenzi-rice-temp/ &> /dev/null

cp -r ~/.cache/vclemenzi-rice-temp/alacritty/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/i3/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/neofetch/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/nvim/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/picom/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/polybar/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/rofi/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/tmux/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/mpv/ ~/.config/
cp -r ~/.cache/vclemenzi-rice-temp/.zshrc ~/

echo -ne '[\033[0;33m########################\033[0m\033[0;90m---\033[0m] (90%)\r'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &> /dev/null
tmux source ~/.config/tmux/tmux.conf &> /dev/null

rm -rf ~/.cache/vclemenzi-rice-temp/ &> /dev/null

echo -ne '[\033[0;32m###########################\033[0m] (100%)\r'
sleep 1
echo -ne "\033[0;32mCongratulations! The rice has been successfully installed!\033[0m"
