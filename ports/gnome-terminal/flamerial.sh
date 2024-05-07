#!/bin/bash

uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

set_attribute() {
  gsettings set \
    org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid_g}/ \
    ${1} ${2};
}

set_attribute use-theme-colors false;
set_attribute background-color \#24130e;
set_attribute foreground-color \#e8cf89;
set_attribute cursor-background-color \#e8cf89;
set_attribute cursor-foreground-color \#24130e;
set_attribute highlight-background-color \#e8cf89;
set_attribute highlight-foreground-color \#24130e;
set_attribute palette [\"#24130e\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\
\"#c48d49\",\"#9e4711\",\"#c74216\",\"#e8cf89\",\"#c48d49\",\"#b8150d\",\
\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#c74216\",\"#e8cf89\"];
