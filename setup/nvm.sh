#!/usr/bin/env bash

if [ -d "~/.nvm" ] 
then
  echo "Installing NVM"

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
else
  echo "NVM is already installed."
fi

exit 0
