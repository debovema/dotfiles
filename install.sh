#!/bin/sh

# Script to install Chezmoi and apply the configuration from current directory

# Install ChezMoi
curl -sfL https://git.io/chezmoi | sudo sh -s -- -b /usr/local/bin

# Apply
chezmoi apply -S $PWD
