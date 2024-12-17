#!/bin/bash

function setColor {
	echo -ne "\\e]P${1}${2}";
}

if [[ ${TERM} != "linux" ]]; then
	exit 0;
fi

setColor 0 150d06;
setColor 1 b31c13;
setColor 2 855814;
setColor 3 c76800;
setColor 4 b08548;
setColor 5 8a3820;
setColor 6 a83e00;
setColor 7 e9d397;
setColor 8 695f44;
setColor 9 b31c13;
setColor a 855814;
setColor b c76800;
setColor c b08548;
setColor d 8a3820;
setColor e a83e00;
setColor f e9d397;
