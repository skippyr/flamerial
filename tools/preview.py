red = 1
yellow = 3
magenta = 5

def write_sym(sym, clr):
    print(f'\x1b[38;5;{clr}m{sym}\x1b[39m', end='')

def write_sep(len):
    for i in range(0, len):
        is_even = i % 2 == 0
        write_sym("≥" if is_even else "v", yellow if is_even else red)

def write_pal_bg():
    for i in range(1, 9):
        print(f'\x1b[48;5;{i}m   \x1b[49m', end='')

def write_pal_fg():
    for i in range(1, 9):
        print(f'\x1b[38;5;{i}mFla\x1b[39m', end='')

print()
print('   ', end='')
write_sep(10)
print(' Flamerial ', end='')
write_sep(11)
print()
write_sym('   ¦/: ', magenta)
write_pal_bg()
write_sym(' :\\¦', magenta)
print()
write_sym('   ¦\\: ', magenta)
write_pal_fg()
write_sym(' :/¦ ', magenta)
print()
print('   ', end='')
write_sep(32)
print()
