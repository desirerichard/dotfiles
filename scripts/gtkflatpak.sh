#!/bin/bash

# Gtk theme to flatpak
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons

sudo flatpak override --env=GTK_THEME=Nordic
sudo flatpak override --env=ICON_THEME=Papirus-Dark