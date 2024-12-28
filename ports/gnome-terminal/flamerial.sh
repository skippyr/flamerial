#!/bin/bash

uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

set_attr() {
  gsettings set \
      org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid}/ \
      ${1} ${2};
}

set_attr use-theme-colors false;
set_attr background-color \#150d06;
set_attr foreground-color \#e9d397;
set_attr cursor-background-color \#e9d397;
set_attr cursor-foreground-color \#150d06;
set_attr highlight-background-color \#e9d397;
set_attr highlight-foreground-color \#150d06;
set_attr palette [\"#150d06\",\"#b31c13\",\"#855814\",\"#c76800\",\
\"#b08548\",\"#8a3820\",\"#a83e00\",\"#e9d397\",\"#695f44\",\"#b31c13\",\
\"#855814\",\"#c76800\",\"#b08548\", \"#8a3820\",\"#a83e00\",\"#e9d397\"];
