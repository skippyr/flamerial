#!/bin/sh

function setclr
{
	echo -ne \\e]P${1}${2};
}

if [[ ${TERM} != linux ]];
then
	echo "flamerial.sh: the linux-console is not being used.";
	exit 1;
fi

setclr 0 24130e
setclr 1 b8150d
setclr 2 9e7100
setclr 3 db7a00
setclr 4 c48d49
setclr 5 9c542d
setclr 6 80854b
setclr 7 e8cf89
setclr 8 c48d49
setclr 9 b8150d
setclr a 9e7100
setclr b db7a00
setclr c c48d49
setclr d 9c542d
setclr e 80854b
setclr f e8cf89
