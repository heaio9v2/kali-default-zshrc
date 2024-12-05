# kali-zshrc

# Contains: 
#   Default Kali .zshrc file
#   Script to install and configure zsh using the Kali configuration file with a few tweaks of my own

cd /opt
wget "https://raw.githubusercontent.com/heaio9v2/kali-default-zshrc/refs/heads/main/install-zsh.sh" install-zsh.sh
chmod +x install-zsh.sh
./install-zsh.sh
