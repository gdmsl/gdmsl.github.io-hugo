#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to Localhost...\033[0m\n"

# Build the project.
hugo --baseURL="https://gdmsl.me" -d public-local

sudo rm -rf /usr/share/nginx/gdmsl
sudo cp -r public-local /usr/share/nginx/gdmsl

