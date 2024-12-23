#!/bin/bash

uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

set_attribute() {
	gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid_g}/ ${1} ${2};
}

set_attribute use-theme-colors false;
set_attribute background-color \#150d06;
set_attribute foreground-color \#e9d397;
set_attribute cursor-background-color \#e9d397;
set_attribute cursor-foreground-color \#150d06;
set_attribute highlight-background-color \#e9d397;
set_attribute highlight-foreground-color \#150d06;
set_attribute palette [\"#150d06\",\"#b31c13\",\"#855814\",\"#c76800\",\"#b08548\",\"#8a3820\",\"#a83e00\",\"#e9d397\",\"#695f44\",\"#b31c13\",\"#855814\",\"#c76800\",\"#b08548\", \"#8a3820\",\"#a83e00\",\"#e9d397\"];
