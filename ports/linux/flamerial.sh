#!/bin/sh

function setColor
{
	printf "\033]P${1}${2}";
}

if [[ ${TERM} != linux ]];
then
	printf "flamerial.sh: the linux terminal is not being used.\n";
	exit 1;
fi

setColor 0 24130e;
setColor 1 b8150d;
setColor 2 a1650b;
setColor 3 db7a00;
setColor 4 c48d49;
setColor 5 9e4711;
setColor 6 948141;
setColor 7 e8cf89;
setColor 8 c48d49;
setColor 9 b8150d;
setColor a a1650b;
setColor b db7a00;
setColor c c48d49;
setColor d 9e4711;
setColor e 948141;
setColor f e8cf89;
