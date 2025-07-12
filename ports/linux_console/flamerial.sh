#!/usr/bin/env bash

# Applies the Flamerial theme in bspwm.
#
# This file must be executed while running Linux Console.

# Sets the value of a terminal theme color.
#
# Parameters:
#   ${1}: the ANSI value of the color in hexadecimal format.
#   ${2}: the hex value of the color not prefixed with "#" or "0x".
set_color() {
  echo -ne \\e]P${1}${2};
}

set_color 0 030101;
set_color 1 991f06;
set_color 2 7d0800;
set_color 3 c76800;
set_color 4 b08548;
set_color 5 8a3820;
set_color 6 a83e00;
set_color 7 e8cc7d;
set_color 8 695f44;
set_color 9 991f06;
set_color a 7d0800;
set_color b c76800;
set_color c b08548;
set_color d 8a3820;
set_color e a83e00;
set_color f e8cc7d;
