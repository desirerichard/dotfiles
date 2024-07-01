#!/bin/bash

# This is my second part install script (after reboot).

# Variables for URLs and paths

# AppFlowy
FLATPAK_APPFLOWY="io.appflowy.AppFlowy"
# Boxes for VMs
FLATPAK_BOXES="org.gnome.Boxes"
# Brave browser
FLATPAK_BRAVE="com.brave.Browser"
# Dbeaver - DB Client
FLATPAK_DBEAVER="io.dbeaver.DBeaverCommunity"
# Decoder to create qrcodes
FLATPAK_DECODER="com.belmoussaoui.Decoder"
# Dev Toolbox, very useful for a developer
FLATPAK_DEVTOOLBOX="me.iepure.devtoolbox"
# Emblem to generate favicon easily
FLATPAK_EMBLEM="org.gnome.design.Emblem"
# Eyedropper to pick colors
FLATPAK_EYEDROPPER="com.github.finefindus.eyedropper"
# Insomnia - API client
FLATPAK_INSOMNIA="rest.insomnia.Insomnia"
# Librewolf browser
FLATPAK_LIBREWOLF="io.gitlab.librewolf-community"
# Newsflash for rss feed
FLATPAK_NEWSFLASH="io.gitlab.news_flash.NewsFlash"
# Obsidian for notes taking
FLATPAK_OBSIDIAN="md.obsidian.Obsidian"
# Signal
FLATPAK_SIGNAL="org.signal.Signal"
# Smile
FLATPAK_SMILE="it.mijorus.smile"
# Spotify for music
FLATPAK_SPOTIFY="com.spotify.Client"
# Zsh config file source
ZSH_CONF_SOURCE="$HOME/setup/.zshrc"
# Zsh config file destination
ZSH_CONF_DEST="$HOME/.zshrc"

# Function to print error messages
function error_exit {
    echo "$1" >&2
    exit 1
}

# Install flatpak packages
flatpak install -y flathub $FLATPAK_APPFLOWY $FLATPAK_BOXES $FLATPAK_BRAVE $FLATPAK_DBEAVER $FLATPAK_DECODER $FLATPAK_DEVTOOLBOX $FLATPAK_EMBLEM $FLATPAK_EXTENSION $FLATPAK_EYEDROPPER $FLATPAK_INSOMNIA $FLATPAK_LIBREWOLF $FLATPAK_NEWSFLASH $FLATPAK_OBSIDIAN $FLATPAK_SIGNAL $FLATPAK_SMILE $FLATPAK_SPOTIFY || error_exit "Failed to install flatpak packages."

# ZSH config
# Copy the zsh config file and replace the existing one
# sudo cp -f "$ZSH_CONF_SOURCE" "$ZSH_CONF_DEST" || error_exit "Failed to copy .zshrc."

# echo "zsh.rc has been copied and replaced successfully."

echo "🎊 Installation completed successfully, now reboot your system."
