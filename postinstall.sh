#!/bin/bash
execdir="$(pwd)"
if ! command -v smenu &> /dev/null; then
    sudo pacman -Syu --needed git base-devel
    git clone https://github.com/p-gen/smenu
    cd smenu
    chmod +x build.sh
    ./build.sh
    sudo make install
else
    echo "smenu is already installed."
fi

cd $execdir
sudo rm -rfd smenu
clear
echo -e "\e[34m  __                                                                __                \e[0m"
sleep 0.05
echo -e "\e[34m /  |           /              /           /         / /           /  |           /   \e[0m"
sleep 0.05
echo -e "\e[35m(___| ___  ___ (___           (  ___  ___ (___  ___ ( (           (___| ___  ___ (___ \e[0m"
sleep 0.05
echo -e "\e[35m|    |   )|___ |              | |   )|___ |    |   )| |           |   )|   )|    |   )\e[0m"
sleep 0.05
echo -e "\e[36m|    |__/  __/ |__            | |  /  __/ |__  |__/|| |           |  / |    |__  |  / \e[0m"
sleep 0.05
echo -e "\e[36m--------------------------------------------------------------------------------------\e[0m"
cd main
chmod +x *
chosenOption=$(echo $(\ls | smenu -c ))
./$chosenOption