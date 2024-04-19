#!/bin/bash

setclr() {
	echo -ne "\033]P${1}${2}";
}

if [[ ${TERM} != "linux" ]];
then
	echo "flamerial.sh: the linux terminal is not being used.";
	exit 1;
fi

setclr 0 "24130e";
setclr 1 "b8150d";
setclr 2 "a1650b";
setclr 3 "db7a00";
setclr 4 "c48d49";
setclr 5 "9e4711";
setclr 6 "948141";
setclr 7 "e8cf89";
setclr 8 "c48d49";
setclr 9 "b8150d";
setclr a "a1650b";
setclr b "db7a00";
setclr c "c48d49";
setclr d "9e4711";
setclr e "948141";
setclr f "e8cf89";
