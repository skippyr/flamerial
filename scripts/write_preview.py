from enum import IntEnum

class Color:
    def __init__(self, hex):
        self._red = hex >> 16 & 0xff
        self._green = hex >> 8 & 0xff
        self._blue = hex & 0xff

    @property
    def red(self):
        return self._red

    @property
    def green(self):
        return self._green

    @property
    def blue(self):
        return self._blue

    @property
    def rgb_string(self):
        return f'(r: {self._red}, g: {self._green}, b: {self._blue})'

    @property
    def hex_string(self):
        return f'#{self._red:02x}{self._green:02x}{self._blue:02x}'

class Layer(IntEnum):
    FOREGROUND = 3
    BACKGROUND = 4

def set_color(layer, color):
    print(f'\x1b[{layer.value}8;2;{color.red};{color.green};{color.blue}m', end='')

def reset_colors():
    print('\x1b[39;49m', end='')

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
    for color in list(colors)[1:]:
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

colors = {
    'black': Color(0x030101),
    'red': Color(0x991f06),
    'green': Color(0x7d0800),
    'yellow': Color(0xc76800),
    'blue': Color(0xb08548),
    'magenta': Color(0x8a3820),
    'cyan': Color(0xa83e00),
    'white': Color(0xe8cc7d),
    'gray': Color(0x695f44)
}

write_vertical_spacing()
write_header()
write_palette(Layer.BACKGROUND)
write_palette(Layer.FOREGROUND)
write_footer()
write_vertical_spacing()
