#!/bin/bash

function i () {
    cd "$1" &&
        makepkg -i
}

sudo pacman -Sy --noconfirm --asdeps jre11-openjdk webkit2gtk-4.1 gnome-keyring
sudo pacman -Sy --noconfirm seahorse
( i libsdbus-c++0 )
( i microsoft-identity-broker )
( i msalsdk-dbusclient )

