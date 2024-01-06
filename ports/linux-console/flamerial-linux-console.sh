#!/bin/sh

function setclr
{
	echo -ne "\\e]P${1}${2}";
}

if [[ ${TERM} != "linux" ]];
then
	echo "flamerial-linux-console.sh: the linux-console is not being used.";
	exit 1;
fi

setclr "0" "1c1108";
setclr "1" "b31c13";
setclr "2" "94711f";
setclr "3" "c76800";
setclr "4" "b08548";
setclr "5" "ad5b30";
setclr "6" "9c3900";
setclr "7" "e8d08e";
setclr "8" "b08548";
setclr "9" "e62319";
setclr "a" "c7982a";
setclr "b" "fa8100";
setclr "c" "e3ab5d";
setclr "d" "e0773f";
setclr "e" "cf4c00";
setclr "f" "e8d08e";
