#!/usr/bin/env python3

red = 1
yellow = 3
magenta = 5

def write_symbol(symbol, color):
    print(f'\x1b[38;5;{color}m{symbol}\x1b[39m', end='')

def write_tribal_decoration(length):
    for column in range(0, length):
        is_even = column % 2 == 0
        write_symbol('≥' if is_even else 'v', yellow if is_even else red)

def write_palette_background():
    for color in range(1, 9):
        print(f'\x1b[48;5;{color}m   \x1b[49m', end='')

def write_palette_foreground():
    for color in range(1, 9):
        print(f'\x1b[38;5;{color}mFla\x1b[39m', end='')

print()
print('   ', end='')
write_tribal_decoration(10)
print(' Flamerial ', end='')
write_tribal_decoration(11)
print()
write_symbol('   ¦/: ', magenta)
write_palette_background()
write_symbol(' :\\¦', magenta)
print()
write_symbol('   ¦\\: ', magenta)
write_palette_foreground()
write_symbol(' :/¦ ', magenta)
print()
print('   ', end='')
write_tribal_decoration(32)
print()
print()
