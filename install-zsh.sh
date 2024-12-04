#!/bin/bash
# This script will install and configure the zsh shell for the current user profile and apply the Kali zsh profile with minor tweaks

# Install zsh
sudo apt update
sudo apt install -y zsh zsh-doc zsh-syntax-highlighting zsh-autosuggestions fonts-firacode

# Copy the Kali .zshrc file to the user profile
wget "https://raw.githubusercontent.com/heaio9v2/kali-default-zshrc/refs/heads/main/.zshrc" -O $HOME/.zshrc

# Change the prompt to the one line alternative AND do not add a newline before the prompt
sed -i '0,/PROMPT_ALTERNATIVE=twoline/s//PROMPT_ALTERNATIVE=oneline/; 0,/NEWLINE_BEFORE_PROMPT=yes/s//NEWLINE_BEFORE_PROMPT=no/' "$HOME/.zshrc"

# Change the default shell
chsh -s $(which zsh)

echo "Installation and configuration complete. Please restart your terminal."