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

setclr 0 382210;
setclr 1 ba1d14;
setclr 2 5a8241;
setclr 3 d97000;
setclr 4 b08548;
setclr 5 b86a40;
setclr 6 bf4600;
setclr 7 e8d08e;
setclr 8 b08548;
setclr 9 ba1d14;
setclr a 5a8241;
setclr b d97000;
setclr c b08548;
setclr d b86a40;
setclr e bf4600;
setclr f e8d08e;
