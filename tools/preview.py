from flamerial import *

def write_blank_space():
    for _ in range(0, 2):
        Terminal.set_color(palette.black, Layer.BACKGROUND)
        for _ in range(0, 42):
            print(' ', end='')
        Terminal.reset_color(Layer.BACKGROUND)
        print()

def write_tribal_decoration(length):
    for column in range(0, length):
        is_even = column % 2 == 0
        Terminal.set_color(palette.red if is_even else palette.yellow,
                           Layer.FOREGROUND)
        print('v' if is_even else '≥', end='')

def write_header():
    Terminal.set_color(palette.black, Layer.BACKGROUND)
    print('     ', end='')
    write_tribal_decoration(10)
    Terminal.set_color(palette.white, Layer.FOREGROUND)
    print(' Flamerial ', end='')
    write_tribal_decoration(11)
    print('     ', end='')
    Terminal.reset_color(Layer.BACKGROUND)
    print()

def write_footer():
    Terminal.set_color(palette.black, Layer.BACKGROUND)
    print('     ', end='')
    write_tribal_decoration(32)
    print('     ', end='')
    Terminal.reset_color(Layer.BACKGROUND)
    Terminal.reset_color(Layer.FOREGROUND)
    print()

def write_palette(layer):
    left_symbol = '¦/:' if layer == Layer.BACKGROUND else '¦\\:'
    right_symbol = ':\\¦' if layer == Layer.BACKGROUND else ':/¦'
    Terminal.set_color(palette.black, Layer.BACKGROUND)
    Terminal.set_color(palette.white, Layer.FOREGROUND)
    print(f'     {left_symbol} ', end='')
    for color in palette.preview_colors:
        Terminal.set_color(color, layer)
        print('Fla' if layer == Layer.FOREGROUND else '   ', end='')
    Terminal.set_color(palette.black, Layer.BACKGROUND)
    Terminal.set_color(palette.white, Layer.FOREGROUND)
    print(f' {right_symbol}     ', end='')
    Terminal.reset_color(Layer.BACKGROUND)
    print()

write_blank_space()
write_header()
write_palette(Layer.BACKGROUND)
write_palette(Layer.FOREGROUND)
write_footer()
write_blank_space()
