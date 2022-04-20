#!/bin/bash

function add_pacman_colors {
    # Get sudo rights
    [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
    # Add colors to pacman
    sed -i 's/#Color/Color/' /etc/pacman.conf
}

add_pacman_colors