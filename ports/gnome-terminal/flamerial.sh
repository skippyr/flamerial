#!/bin/bash

profile_uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default |
               tr -d \');

apply_property() {
  gsettings set \
  "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile_uuid_g}/" \
  ${1} ${2};
}

apply_property use-theme-colors false;
apply_property background-color "#24130e";
apply_property foreground-color "#e8cf89";
apply_property cursor-background-color "#e8cf89";
apply_property cursor-foreground-color "#24130e";
apply_property highlight-background-color "#e8cf89";
apply_property highlight-foreground-color "#24130e";
apply_property palette "[\"#24130e\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\
\"#c48d49\",\"#9e4711\",\"#948141\",\"#e8cf89\",\"#c48d49\",\"#b8150d\",\
\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#948141\",\"#e8cf89\"]";
