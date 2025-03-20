class Color
  attr_reader :name, :red, :green, :blue

  def initialize(name, hex)
    @name = name
    @red = hex >> 16 & 0xff
    @green = hex >> 8 & 0xff
    @blue = hex & 0xff
  end
end

class Palette
  attr_reader :black, :red, :yellow, :white

  def initialize(
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    gray
  )
    @black = black
    @red = red
    @green = green
    @yellow = yellow
    @blue = blue
    @magenta = magenta
    @cyan = cyan
    @white = white
    @gray = gray
  end

  def preview_colors
    [@red, @green, @yellow, @blue, @magenta, @cyan, @white, @gray]
  end
end

def set_color(color, layer)
  print("\x1b[#{$layers[layer]}8;2;#{color.red};#{color.green};#{color.blue}m")
end

def reset_color(layer)
  print("\x1b[#{$layers[layer]}9m")
end

def write_vertical_spacing
  2.times {
    set_color($palette.black, :background)
    42.times {
      print(' ')
    }
    reset_color(:background)
    puts
  }
end

$layers = {
  :foreground => 3,
  :background => 4
}
$palette = Palette.new(
  Color.new('Black', 0x030101),
  Color.new('Red', 0x991f06),
  Color.new('Green', 0x7d0800),
  Color.new('Yellow', 0xc76800),
  Color.new('Blue', 0xb08548),
  Color.new('Magenta', 0x8a3820),
  Color.new('Cyan', 0xa83e00),
  Color.new('White', 0xe8cc7d),
  Color.new('Gray', 0x695f44)
)

def write_tribal_decoration(length)
  for column in 1...length + 1
    is_even = column % 2 == 0
    set_color(is_even ? $palette.red : $palette.yellow, :foreground)
    print(is_even ? 'v' : '≥')
  end
end

def write_header
  set_color($palette.black, :background)
  print('     ')
  write_tribal_decoration(10)
  set_color($palette.white, :foreground)
  print(' Flamerial ')
  write_tribal_decoration(11)
  print('     ')
  reset_color(:background)
  puts
end

def write_palette(layer)
  set_color($palette.black, :background)
  set_color($palette.white, :foreground)
  print("     #{layer == :background ? '¦/:' : '¦\\:'} ")
  for color in $palette.preview_colors
    set_color(color, layer)
    print(layer == :foreground ? "Fla" : "   ")
  end
  set_color($palette.black, :background)
  set_color($palette.white, :foreground)
  print(" #{layer == :background ? ':\\¦' : ':/¦'}     ")
  reset_color(:background)
  puts
end

def write_footer
  set_color($palette.black, :background)
  print('     ')
  write_tribal_decoration(32)
  print('     ')
  reset_color(:background)
  reset_color(:foreground)
  puts
end

write_vertical_spacing
write_header
write_palette(:background)
write_palette(:foreground)
write_footer
write_vertical_spacing
