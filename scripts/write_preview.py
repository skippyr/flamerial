from lib import *

def write_vertical_spacing():
    for _ in range(0, 2):
        set_color(Layer.BACKGROUND, colors['black'])
        for _ in range(0, 42):
            print(' ', end='')
        reset_colors()
        print()

def write_tribal_decoration(length):
    for column in range(0, length):
        is_even = column % 2 == 0
        set_color(Layer.FOREGROUND,
                  colors['yellow'] if is_even else colors['red'])
        print('≥' if is_even else 'v', end='')

def write_header():
    set_color(Layer.BACKGROUND, colors['black'])
    print('     ', end='')
    write_tribal_decoration(10)
    set_color(Layer.FOREGROUND, colors['white'])
    print(' Flamerial ', end='')
    write_tribal_decoration(11)
    print('     ', end='')
    reset_colors()
    print()

def write_palette(layer):
    set_color(Layer.BACKGROUND, colors['black'])
    set_color(Layer.FOREGROUND, colors['white'])
    print(f'     {'¦/:' if layer == Layer.BACKGROUND else '¦\\:'} ', end='')
    for color in list(colors)[2:]:
        set_color(layer, colors[color])
        print('   ' if layer == Layer.BACKGROUND else 'Fla', end='')
    set_color(Layer.BACKGROUND, colors['black'])
    set_color(Layer.FOREGROUND, colors['white'])
    print(f' {':\\¦' if layer == Layer.BACKGROUND else ':/¦'}     ', end='')
    reset_colors()
    print()

def write_footer():
    set_color(Layer.BACKGROUND, colors['black'])
    print('     ', end='')
    write_tribal_decoration(32)
    print('     ', end='')
    reset_colors()
    print()

write_vertical_spacing()
write_header()
write_palette(Layer.BACKGROUND)
write_palette(Layer.FOREGROUND)
write_footer()
write_vertical_spacing()
