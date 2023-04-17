#!/usr/bin/env sh

echo
for color in $(seq 0 15); do
	printf "\x1b[48;5;${color}m   \x1b[0m"
done
echo -e "\n"


for color in $(seq 0 15); do
	printf "\x1b[38;5;${color}mFla\x1b[0m"
done
echo -e "\n"

