#!/bin/bash

# Apps list
apps=(
    telegram-desktop
    rofi
    keepassxc
    antigen
    oh-my-zsh-git
    acpi
)

# Filter installed apps
for index in "${!apps[@]}" ; do 
    pacman -Qi ${apps[index]} >> /dev/null 2>&1
    status=$?
    if [ $status -eq 0 ]; then unset -v 'apps[$index]'; fi
done

# Install apps
yay -S --noconfirm ${apps[@]}

    