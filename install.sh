#!/bin/env bash
set -e

sudo pacman -S nautilus
sudo pacman -S gnome-control-center
sudo pacman -S rofi
sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S jq
sudo pacman -S wf-recorder
sudo pacman -S swaylock
sudo pacman -S waybar
sudo pacman -S tesseract
sudo pacman -S tesseract-data-eng

yay -S python-pywal16
yay -S arrpc
yay -S fisher

fisher install IlanCosman/tide@v6
tide configure --auto --style=Rainbow --prompt_colors='True color' \
	--show_time=No --rainbow_prompt_separators=Slanted \
	--powerline_prompt_heads=Round --powerline_prompt_tails=Round \
	--powerline_prompt_style='Two lines, frame' --prompt_connection=Disconnected \
	--powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Darkest \
	--prompt_spacing=Compact --icons='Many icons' --transient=No

yay -S mpvpaper
yay -S mpvpaper-stop-git
yay -S waybar-cava

cp -vr .config ~/
