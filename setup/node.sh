#!/usr/bin/env bash

packages=(
  create-react-app
  gatsby-cli
  yarn
)

if test ! $(node -v)
then
  echo "Installing node with NVM"

  # Install node
  nvm install node
  nvm alias default node
  nvm use node

  # Install modules
  npm install -g "${packages[@]}"
else
  echo "Node is already installed. Installing npm packages"

  # Install modules
  npm install -g "${packages[@]}"
fi

exit 0
