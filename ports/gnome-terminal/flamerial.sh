#!/bin/bash

uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

function setAttribute() {
  gsettings set \
    org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid_g}/ \
    ${1} ${2};
}

setAttribute use-theme-colors false;
setAttribute background-color \#150d06;
setAttribute foreground-color \#e9d397;
setAttribute cursor-background-color \#e9d397;
setAttribute cursor-foreground-color \#150d06;
setAttribute highlight-background-color \#e9d397;
setAttribute highlight-foreground-color \#150d06;
setAttribute palette [\"#150d06\",\"#b31c13\",\"#855814\",\"#c76800\",\"#b08548\",\"#8a3820\",\"#a83e00\",\"#e9d397\",\"#695f44\",\"#b31c13\",\"#855814\",\"#c76800\",\"#b08548\",\
\"#8a3820\",\"#a83e00\",\"#e9d397\"];
