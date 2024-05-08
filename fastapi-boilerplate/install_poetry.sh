#!/bin/bash

install_poetry() {
  echo "Installing Poetry..."
  curl -sSL https://install.python-poetry.org | python3 -
  echo "Poetry installed successfully."
}

if ! command -v poetry &> /dev/null; then
    install_poetry
else
    echo "Poetry is already installed."
fi