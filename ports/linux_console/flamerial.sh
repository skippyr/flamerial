#!/usr/bin/env bash

set_color() {
	echo -ne \\e]P${1}${2};
}

if [[ ${TERM} != linux ]];
then
	exit 0;
fi
set_color 0 150d06;
set_color 1 b31c13;
set_color 2 855814;
set_color 3 c76800;
set_color 4 b08548;
set_color 5 8a3820;
set_color 6 a83e00;
set_color 7 e9d397;
set_color 8 695f44;
set_color 9 b31c13;
set_color a 855814;
set_color b c76800;
set_color c b08548;
set_color d 8a3820;
set_color e a83e00;
set_color f e9d397;
