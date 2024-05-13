#!/bin/bash

g_uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

function SetAttribute()
{
    gsettings set                                                                                  \
        org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${g_uuid}/         \
        ${1} ${2};
}

SetAttribute use-theme-colors false;
SetAttribute background-color \#221107;
SetAttribute foreground-color \#f5efcd;
SetAttribute cursor-background-color \#f5efcd;
SetAttribute cursor-foreground-color \#221107;
SetAttribute highlight-background-color \#f5efcd;
SetAttribute highlight-foreground-color \#221107;
SetAttribute palette [\"#221107\",\"#990b3a\",\"#cc561b\",\"#e0a100\",\"#b98361\",\"#ae3a34\",\
\"#a16205\",\"#f5efcd\",\"#b98361\",\"#990b3a\",\"#cc561b\",\"#e0a100\",\"#b98361\",\"#ae3a34\",\
\"#a16205\",\"#f5efcd\"];
