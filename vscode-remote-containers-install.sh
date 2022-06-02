#!/bin/sh

# Script to install Chezmoi and apply the configuration from ~/dotfiles
# in VSCode settings.json add:
#    "dotfiles.repository": "<URL of dotfiles repository>",
#    "dotfiles.targetPath": "~/.local/share/chezmoi",
#    "dotfiles.installCommand": "~/.local/share/chezmoi/vscode-remote-containers-install.sh"

# Install ChezMoi
curl -sfL https://git.io/chezmoi | sudo sh -s -- -b /usr/local/bin

# Use "dotfiles.targetPath" from VSCode settings as source directory 
#mkdir -p ~/.config/chezmoi
#echo 'sourceDir: ~/dotfiles' > ~/.config/chezmoi/chezmoi.yaml

# Apply
chezmoi apply
