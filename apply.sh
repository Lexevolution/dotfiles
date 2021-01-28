#!/bin/sh
DOTLS=/home/alex/Documents/dotfiles
cd $DOTLS
cp ./.bashrc ~/.bashrc
cp ./openbox/autostart ~/.config/openbox/autostart
cp ./tint2/dock ~/.config/tint2/dock
cp ./tint2/status ~/.config/tint2/status
cp ./picom/picom.conf ~/.config/picom/picom.conf
