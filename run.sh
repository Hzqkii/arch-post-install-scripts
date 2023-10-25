#!/bin/bash

if ! command -v git &> /dev/null; then
    sudo pacman -Syu git
else
    sleep 0.01
fi

git clone https://github.com/Hzqkii/arch-post-install-scripts
cd arch-post-install-scripts
chmod +x postinstall.sh
./postinstall.sh