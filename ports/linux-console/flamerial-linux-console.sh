#!/bin/sh

#  //\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
#  MIT License
#  Copyright (c) 2023, Sherman Rofeman <skippyr.developer@gmail.com>
#
#  See the LICENSE file that comes in its source code for more details.
#  //\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//

function set_color {
  echo -ne "\\e]P${1}${2}"
}

if [[ ${TERM} != "linux" ]];
then
  echo "flamerial-linux-console.sh: the linux-console is not being used."
  exit 1
fi

set_color "0" "1c1108"
set_color "1" "b31c13"
set_color "2" "94711f"
set_color "3" "c76800"
set_color "4" "b08548"
set_color "5" "ad5b30"
set_color "6" "9c3900"
set_color "7" "e8d08e"
set_color "8" "b08548"
set_color "9" "e62319"
set_color "a" "c7982a"
set_color "b" "fa8100"
set_color "c" "e3ab5d"
set_color "d" "e0773f"
set_color "e" "cf4c00"
set_color "f" "e8d08e"
