#!/bin/bash

sudo pacman -Syu git
git clone https://github.com/Hzqkii/arch-post-install-scripts
cd arch-post-install-scripts
chmod +x postinstall.sh
./postinstall.sh