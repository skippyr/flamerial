#!/usr/bin/env bash

function apply_color {
	typeset -r ansi_as_hex="${1}"
	typeset -r color_hex="${2}"
	echo -en "\\e]P${ansi_as_hex}${color_hex}"
}

if [[ ${TERM} == "linux" ]]; then
	# Black
	apply_color "0" "332720"
	apply_color "8" "aaab90"

	# Red
	apply_color "1" "cc2623"
	apply_color "9" "cc2623"

	# Green
	apply_color "2" "c99510"
	apply_color "a" "c99510"

	# Yellow
	apply_color "3" "de7c04"
	apply_color "b" "de7c04"
	
	# Blue
	apply_color "4" "aaab90"
	apply_color "c" "aaab90"

	# Magenta
	apply_color "5" "b35f6c"
	apply_color "d" "b35f6c"

	# Cyan
	apply_color "6" "d1441d"
	apply_color "e" "d1441d"

	# White
	apply_color "7" "ebcba9"
	apply_color "f" "ebcba9"
fi

