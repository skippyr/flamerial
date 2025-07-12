#!/usr/bin/env bash

# Applies the Flamerial theme in bspwm.
#
# This file must be executed while running Gnome Terminal.

# The current profile UUID.
uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

# Sets the value of a Gnome Terminal attribute in the current profile.
#
# Parameters
#  ${1}: the name of the attribute to be modified.
#  ${2}: the value to be set.
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
