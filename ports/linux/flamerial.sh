#!/usr/bin/env bash
[[ ${TERM} != "linux" ]] && exit
apply_color() {
  echo -en "\\e]P${1}${2}"
}
apply_color 0 140f0f
apply_color 1 b32815
apply_color 2 960c0c
apply_color 3 c76e02
apply_color 4 a88e6e
apply_color 5 9e6a4f
apply_color 6 ba3e00
apply_color 7 e8dcbc
apply_color 8 a88e6e
apply_color 9 b32815
apply_color a 960c0c
apply_color b c76e02
apply_color c a88e6e
apply_color d 9e6a4f
apply_color e ba3e00
apply_color f e8dcbc
