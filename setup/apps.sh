#!/usr/bin/env bash

#
# Update yum repositories
#

echo "Updating yum repositories"

# VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Submile Text
sudo rpm --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

# Update package cache
sudo dnf check-update

apps=(
  code
  git
  sublime-text
  xclip
)

echo "Installing apps for Fedora"

sudo dnf install "${apps[@]}"

echo "Installing prettyping"
cd ~
curl -O https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
sudo mv prettyping /usr/local/bin
sudo chmod +x /usr/local/bin/prettyping

exit 0
