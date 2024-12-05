#!/bin/bash
# This script will install and configure the zsh shell for the current user profile

# Install zsh
apt update
apt install -y zsh zsh-doc zsh-syntax-highlighting zsh-autosuggestions

# Copy the Kali .zshrc file to the user profile
wget "https://raw.githubusercontent.com/heaio9v2/kali-default-zshrc/refs/heads/main/.zshrc" -O $HOME/.zshrc

# Change the prompt to the one line alternative
sed -i '0,/PROMPT_ALTERNATIVE=twoline/s//PROMPT_ALTERNATIVE=oneline/; 0,/NEWLINE_BEFORE_PROMPT=yes/s//NEWLINE_BEFORE_PROMPT=no/' "$HOME/.zshrc"

# Change the default shell
chsh -s $(which zsh)

echo "Installation complete. Restart your terminal session."
