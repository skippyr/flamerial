#!/bin/bash

uuid_g=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

setattr() {
	gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid_g}/ \
				  ${1} ${2};
}

setattr use-theme-colors false;
setattr background-color \#24130e;
setattr foreground-color \#e8cf89;
setattr cursor-background-color \#e8cf89;
setattr cursor-foreground-color \#24130e;
setattr highlight-background-color \#e8cf89;
setattr highlight-foreground-color \#24130e;
setattr palette [\"#24130e\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\"#c48d49\",\
\"#9e4711\",\"#c74216\",\"#e8cf89\",\"#c48d49\",\"#b8150d\",\"#a1650b\",\
\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#c74216\",\"#e8cf89\"];
