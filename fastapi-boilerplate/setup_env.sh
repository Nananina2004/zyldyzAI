#!/bin/bash

sudo apt-get update && sudo apt-get install -y curl software-properties-common

install_docker() {
  echo "Installing Docker..."
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  echo "Docker installed successfully."
}

install_node() {
  echo "Installing Node.js..."
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt-get install -y nodejs
  echo "Node.js installed successfully."
}

if ! command -v docker &> /dev/null; then
    echo "Docker not installed."
    install_docker
else
    echo "Docker is already installed."
fi

if ! command -v node &> /dev/null; then
    echo "Node.js not installed."
    install_node
else
    echo "Node.js is already installed."
fi

