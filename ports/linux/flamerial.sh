#!/bin/bash

set_color() {
  echo -ne \\033]P${1}${2};
}

if [[ ${TERM} != linux ]];
then
    echo "flamerial.sh: the linux terminal is not being used.";
    exit 1;
fi

set_color 0 221107;
set_color 1 990b3a;
set_color 2 cc561b;
set_color 3 e0a100;
set_color 4 b98361;
set_color 5 ae3a34;
set_color 6 a16205;
set_color 7 f5efcd;
set_color 8 b98361;
set_color 9 990b3a;
set_color a cc561b;
set_color b e0a100;
set_color c b98361;
set_color d ae3a34;
set_color e a16205;
set_color f f5efcd;
