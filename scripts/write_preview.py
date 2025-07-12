"""
Writes the preview shown in the main screenshot of the project README.
"""

from enum import IntEnum

class RGBColor:
    """
    Represents an RGB color.

    Attributes:
        red (int): The red component of the color. It is a number between `0`
        and `255`.
        green (int): The green component of the color. It is a number between
        `0` and `255`.
        blue (int): The blue component of the color. It is a number between `0`
        and `255`.
    """
    def __init__(self, hex: int) -> None:
        """
        Creates a new instance of the Color class from a HEX color.

        Parameters:
            hex (int): The hex color to be used. It must be a number between
            `0x000000` and `0xffffff`.
        """
        self._red: int = hex >> 16 & 0x0000ff
        self._green: int = hex >> 8 & 0x0000ff
        self._blue: int = hex & 0x0000ff

    @property
    def red(self) -> int:
        """
        Gets the red component of the color.

        Returns:
            int: The red component of the color. It is a number between `0` and
            `255`.
        """
        return self._red

    @property
    def green(self) -> int:
        """
        Gets the green component of the color.

        Returns:
            int: The green component of the color. It is a number between `0`
            and `255`.
        """
        return self._green

    @property
    def blue(self) -> int:
        """
        Gets the blue component of the color.

        Returns:
            int: The blue component of the color. It is a number between `0`
            and `255`.
        """
        return self._blue

    @property
    def rgb_string(self) -> str:
        """
        Gets the RGB string representation of the color.

        Returns:
            str: The RGB string representation of the color
            (e.g: "(r: 255, g: 0, b: 0)").
        """
        return f'(r: {self._red}, g: {self._green}, b: {self._blue})'

    @property
    def hex_string(self) -> str:
        """
        Gets the HEX string representation of the color.

        Returns:
            str: The HEX string representation of the color (e.g.: `0xff00ff`).
        """
        return f'#{self._red:02x}{self._green:02x}{self._blue:02x}'

class TerminalLayer(IntEnum):
    """
    Contains the available terminal font layers.

    Attributes:
        FOREGROUND (int): Refers to the foreground layer.
        BACKGROUND (int): Refers to the background layer.
    """
    FOREGROUND = 3
    BACKGROUND = 4

def set_color(layer: int, color: RGBColor) -> None:
    """
    Sets an RGB color into a terminal font layer.

    Parameters:
        layer: the layer to be affected. It must be an enumerator of the
        TerminalLayer enum.
        color: the color to be applied.
    """
    print(f'\x1b[{layer.value}8;2;{color.red};{color.green};{color.blue}m',
          end='')

def reset_colors() -> None:
    """
    Resets the terminal font colors.
    """
    print('\x1b[39;49m', end='')

def write_vertical_spacing() -> None:
    """
    Writes a vertical spacing of two lines filled with the background filled
    with the black color of the palette.
    """
    for _ in range(0, 2):
        set_color(TerminalLayer.BACKGROUND, colors['black'])
        for _ in range(0, 42):
            print(' ', end='')
        reset_colors()
        print()

def write_tribal_decoration(length) -> None:
    """
    Writes a horizontal line containing tribal symbols until the specified
    length.

    Paratemers:
        length: the length to be written to.
    """
    for column in range(0, length):
        is_even = column % 2 == 0
        set_color(TerminalLayer.FOREGROUND,
                  colors['yellow'] if is_even else colors['red'])
        print('≥' if is_even else 'v', end='')

def write_header() -> None:
    """
    Writes the header of the preview.
    """
    set_color(TerminalLayer.BACKGROUND, colors['black'])
    print('     ', end='')
    write_tribal_decoration(10)
    set_color(TerminalLayer.FOREGROUND, colors['white'])
    print(' Flamerial ', end='')
    write_tribal_decoration(11)
    print('     ', end='')
    reset_colors()
    print()

def write_palette(layer) -> None:
    """
    Writes the preview of the palette targetting a terminal layer.

    Parameters:
        layer: the layer being targetted.
    """
    set_color(TerminalLayer.BACKGROUND, colors['black'])
    set_color(TerminalLayer.FOREGROUND, colors['white'])
    arrow: str = '¦/:' if layer == TerminalLayer.BACKGROUND else '¦\\:'
    print(f'     {arrow} ',end='')
    for color in list(colors)[1:]:
        set_color(layer, colors[color])
        print('   ' if layer == TerminalLayer.BACKGROUND else 'Fla', end='')
    set_color(TerminalLayer.BACKGROUND, colors['black'])
    set_color(TerminalLayer.FOREGROUND, colors['white'])
    arrow = ':\\¦' if layer == TerminalLayer.BACKGROUND else ':/¦'
    print(f' {arrow}     ', end='')
    reset_colors()
    print()

def write_footer() -> None:
    """
    Writes the footer of the preview.
    """
    set_color(TerminalLayer.BACKGROUND, colors['black'])
    print('     ', end='')
    write_tribal_decoration(32)
    print('     ', end='')
    reset_colors()
    print()

# The colors that compose the theme palette.
colors: dict[str, RGBColor] = {
    'black': RGBColor(0x030101),
    'red': RGBColor(0x991f06),
    'green': RGBColor(0x7d0800),
    'yellow': RGBColor(0xc76800),
    'blue': RGBColor(0xb08548),
    'magenta': RGBColor(0x8a3820),
    'cyan': RGBColor(0xa83e00),
    'white': RGBColor(0xe8cc7d),
    'gray': RGBColor(0x695f44)
}

write_vertical_spacing()
write_header()
write_palette(TerminalLayer.BACKGROUND)
write_palette(TerminalLayer.FOREGROUND)
write_footer()
write_vertical_spacing()
