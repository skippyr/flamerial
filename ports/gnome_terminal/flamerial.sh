#!/usr/bin/env bash

uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

set_attribute() {
  gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid}/ ${1} ${2};
}

set_attribute use-theme-colors false;
set_attribute background-color \#030101;
set_attribute foreground-color \#e8cc7d;
set_attribute cursor-background-color \#e8cc7d;
set_attribute cursor-foreground-color \#030101;
set_attribute highlight-background-color \#e8cc7d;
set_attribute highlight-foreground-color \#030101;
set_attribute palette [\"#030101\",\"#991f06\",\"#7d0800\",\"#c76800\",\"#b08548\",\"#8a3820\",\"#a83e00\",\"#e8cc7d\",\"#695f44\",\"#991f06\",\"#7d0800\",\"#c76800\",\"#b08548\",\"#8a3820\",\"#a83e00\",\"#e8cc7d\"];
