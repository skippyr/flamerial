#!/bin/bash

g_profileUUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \');

function applyProperty()
{
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${g_profileUUID}/" \
				  ${1} ${2};
}

applyProperty use-theme-colors false;
applyProperty background-color "#24130e";
applyProperty foreground-color "#e8cf89";
applyProperty cursor-background-color "#e8cf89";
applyProperty cursor-foreground-color "#24130e";
applyProperty highlight-background-color "#e8cf89";
applyProperty highlight-foreground-color "#24130e";
applyProperty palette "[\"#24130e\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#948141\",\
\"#e8cf89\",\"#c48d49\",\"#b8150d\",\"#a1650b\",\"#db7a00\",\"#c48d49\",\"#9e4711\",\"#948141\",\"#e8cf89\"]";
