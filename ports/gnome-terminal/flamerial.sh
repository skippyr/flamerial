#!/bin/bash

g_uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

set_attribute() {
  gsettings set \
      org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${g_uuid}/ \
      ${1} ${2};
}

set_attribute use-theme-colors false;
set_attribute background-color \#221107;
set_attribute foreground-color \#f5efcd;
set_attribute cursor-background-color \#f5efcd;
set_attribute cursor-foreground-color \#221107;
set_attribute highlight-background-color \#f5efcd;
set_attribute highlight-foreground-color \#221107;
set_attribute palette [\"#221107\",\"#990b3a\",\"#cc561b\",\"#e0a100\",\
\"#b98361\",\"#ae3a34\",\"#a16205\",\"#f5efcd\",\"#b98361\",\"#990b3a\",\
\"#cc561b\",\"#e0a100\",\"#b98361\",\"#ae3a34\",\
\"#a16205\",\"#f5efcd\"];
