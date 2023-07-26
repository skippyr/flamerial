#!/usr/bin/env bash

# name: Flamerial
# author: Sherman Rofeman
# license: MIT
# upstream: https://github.com/skippyr/flamerial

Write_Property() {
    profile_uuid=$(
        gsettings get org.gnome.Terminal.ProfilesList default | tr -d \'
    )
    gsettings\
        set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/\
profiles:/:${profile_uuid}/" "${1}" "${2}"
}

Write_Property use-theme-colors false
Write_Property background-color "#140f0f"
Write_Property foreground-color "#e8dcbc"
Write_Property cursor-background-color "#e8dcbc"
Write_Property cursor-foreground-color "#140f0f"
Write_Property highlight-background-color "#e8dcbc"
Write_Property highlight-foreground-color "#140f0f"
Write_Property palette "[\
    \"#140f0f\",\
    \"#b32815\",\
    \"#960c0c\",\
    \"#c76e02\",\
    \"#a88e6e\",\
    \"#9e6a4f\",\
    \"#ba3e00\",\
    \"#e8dcbc\",\
    \"#a88e6e\",\
    \"#b32815\",\
    \"#960c0c\",\
    \"#c76e02\",\
    \"#a88e6e\",\
    \"#9e6a4f\",\
    \"#ba3e00\",\
    \"#e8dcbc\"\
]"
