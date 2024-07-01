#!/bin/bash

# This is my install script for fedora.

# Variables for URLs and paths
# Repo
GIT_REPO="https://github.com/desirerichard/setup.git"
# Ohmyzsh
OHMYZSH_INSTALL_URL="https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh"

# Function to print error messages
function error_exit {
    echo "$1" >&2
    exit 1
}

# Update package list
sudo dnf update || error_exit "Failed to update package list."

# Install apt packages
sudo dnf -y install curl git vlc fastfetch htop alacritty ranger java-21-openjdk-devel nodejs zsh vim flatpak pavucontrol redshift-gtk feh i3 polybar rofi lxappearance stow|| error_exit "Failed to install dnf packages."

# Clone Github configuration repository
git clone "$GIT_REPO" || error_exit "Failed to clone Github repository."

# Flathub
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo || error_exit "Failed to add flathub."

# Create work directory
mkdir -p "$HOME/work"

# Install ohmyzsh
sh -c "$(curl -fsSL $OHMYZSH_INSTALL_URL)" || error_exit "🎊 Installation script completed successfully, now reboot the system and launch the flatpak script."
