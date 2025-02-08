from os import path
from enum import Enum

class Color:
    def __init__(self, name, hex):
        self._name = name
        self._red = hex >> 16 & 0xff
        self._green = hex >> 8 & 0xff
        self._blue = hex & 0xff

    @property
    def name(self):
        return self._name

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
    def image_file_name(self):
        return f'{self._name.lower().replace(" ", "_")}.png'

    @property
    def rgb_string(self):
        return f'(r: {self._red}, g: {self._green}, b: {self._blue})'

    @property
    def hex_string(self):
        return f'#{self._red:02x}{self._green:02x}{self._blue:02x}'

class Palette:
    def __init__(
        self,
        black,
        red,
        green,
        yellow,
        blue,
        magenta,
        cyan,
        white,
        gray,
        alternate_background_0,
        alternate_background_1,
        selection_background,
        cursor_selection,
        matching_items
    ):
        self._black = black
        self._red = red
        self._green = green
        self._yellow = yellow
        self._blue = blue
        self._magenta = magenta
        self._cyan = cyan
        self._white = white
        self._gray = gray
        self._alternate_background_0 = alternate_background_0
        self._alternate_background_1 = alternate_background_1
        self._selection_background = selection_background
        self._cursor_selection = cursor_selection
        self._matching_items = matching_items

    @property
    def black(self):
        return self._black

    @property
    def red(self):
        return self._red

    @property
    def yellow(self):
        return self._yellow

    @property
    def white(self):
        return self._white

    @property
    def preview_colors(self):
        return [
            self._red,
            self._green,
            self._yellow,
            self._blue,
            self._magenta,
            self._cyan,
            self._white,
            self._gray
        ]

    @property
    def all_colors(self):
        return [
            self._black,
            self._red,
            self._green,
            self._yellow,
            self._blue,
            self._magenta,
            self._cyan,
            self._white,
            self._gray,
            self._alternate_background_0,
            self._alternate_background_1,
            self._selection_background,
            self._cursor_selection,
            self._matching_items
        ]

class Terminal:
    @staticmethod
    def set_color(color, layer):
        print(f'\x1b[{layer.value}8;2;{color.red};{color.green};{color.blue}m',
              end='')

    @staticmethod
    def reset_color(layer):
        print(f'\x1b[{layer.value}9m', end='')

class Layer(Enum):
    FOREGROUND = 3
    BACKGROUND = 4

relative_colors_directory = path.join('assets', 'images', 'colors')
absolute_colors_directory = path.join(path.dirname(path.dirname(__file__)), relative_colors_directory)
palette = Palette(
    Color('Black', 0x030101),
    Color('Red', 0x991f06),
    Color('Green', 0x7d0800),
    Color('Yellow', 0xc76800),
    Color('Blue', 0xb08548),
    Color('Magenta', 0x8a3820),
    Color('Cyan', 0xa83e00),
    Color('White', 0xe8cc7d),
    Color('Gray', 0x695f44),
    Color('Alternate Background 0', 0x140707),
    Color('Alternate Background 1', 0x1f0a0a),
    Color('Selection Background', 0x571d1d),
    Color('Cursor Selection', 0x968451),
    Color('Matching Items', 0xffff00)
)
