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

colors = {
    'special': Color(0xffff00),
    'black': Color(0x030101),
    'red': Color(0x991f06),
    'green': Color(0x705c06),
    'yellow': Color(0xc76800),
    'blue': Color(0xb08548),
    'magenta': Color(0x8a3820),
    'cyan': Color(0xa83e00),
    'white': Color(0xe8cc7d),
    'gray': Color(0x695f44)
}
