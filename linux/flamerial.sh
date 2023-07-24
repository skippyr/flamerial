#!/usr/bin/env bash

[[ ${TERM} != "linux" ]] && exit

Apply_Color() {
    echo -en "\\e]P${1}${2}"
}

Apply_Color 0 140f0f
Apply_Color 1 b32815
Apply_Color 2 960c0c
Apply_Color 3 c76e02
Apply_Color 4 a88e6e
Apply_Color 5 9e6a4f
Apply_Color 6 ba3e00
Apply_Color 7 e8dcbc
Apply_Color 8 a88e6e
Apply_Color 9 b32815
Apply_Color a 960c0c
Apply_Color b c76e02
Apply_Color c a88e6e
Apply_Color d 899980
Apply_Color e ba3e00
Apply_Color f e8dcbc
