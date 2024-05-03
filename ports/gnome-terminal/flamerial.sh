#!/bin/bash

uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

setAttribute()
{
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid_g}/\
                  ${1} ${2};
}

setAttribute use-theme-colors false;
setAttribute background-color \#24130e;
setAttribute foreground-color \#e8cf89;
setAttribute cursor-background-color \#e8cf89;
setAttribute cursor-foreground-color \#24130e;
setAttribute highlight-background-color \#e8cf89;
setAttribute highlight-foreground-color \#24130e;
setAttribute palette [\"#24130e\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#c74216\",\"#e8cf89\",\
\"#c48d49\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#c74216\",\"#e8cf89\"];
