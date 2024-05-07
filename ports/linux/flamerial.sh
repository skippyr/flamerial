#!/bin/bash

set_color() {
  echo -ne \\033]P${1}${2};
}

if [[ ${TERM} != linux ]];
then
  echo "flamerial.sh: the linux terminal is not being used.";
  exit 1;
fi

set_color 0 24130e;
set_color 1 b8150d;
set_color 2 a1650b;
set_color 3 db7a00;
set_color 4 c48d49;
set_color 5 9e4711;
set_color 6 c74216;
set_color 7 e8cf89;
set_color 8 c48d49;
set_color 9 b8150d;
set_color a a1650b;
set_color b db7a00;
set_color c c48d49;
set_color d 9e4711;
set_color e c74216;
set_color f e8cf89;
