#!/bin/bash

function SetColor()
{
    echo -ne \\033]P${1}${2};
}

if [[ ${TERM} != linux ]];
then
    echo "flamerial.sh: the linux terminal is not being used.";
    exit 1;
fi

SetColor 0 221107;
SetColor 1 990b3a;
SetColor 2 cc561b;
SetColor 3 e0a100;
SetColor 4 b98361;
SetColor 5 ae3a34;
SetColor 6 a16205;
SetColor 7 f5efcd;
SetColor 8 b98361;
SetColor 9 990b3a;
SetColor a cc561b;
SetColor b e0a100;
SetColor c b98361;
SetColor d ae3a34;
SetColor e a16205;
SetColor f f5efcd;
