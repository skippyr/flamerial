class Color
  attr_reader :red, :green, :blue

  def initialize(hex)
    @red = hex >> 16 & 0xff
    @green = hex >> 8 & 0xff
    @blue = hex & 0xff
  end

  def rgb_string
    "(r: #{@red}, g: #{@green}, b: #{@blue})"
  end

  def hex_string
    sprintf "#%02X%02X%02X", @red, @green, @blue
  end
end

def set_color(layer, key)
  color = $colors[key]
  print "\x1b[#{layer == :foreground ? 3 : 4}8;2;#{color.red};#{color.green};#{color.blue}m"
end

def reset_colors
  print "\x1b[39;49m"
end

$colors = {
  :special => Color.new(0xffff00),
  :black => Color.new(0x030101),
  :red => Color.new(0x991f06),
  :green => Color.new(0x705c06),
  :yellow => Color.new(0xc76800),
  :blue => Color.new(0xb08548),
  :magenta => Color.new(0x8a3820),
  :cyan => Color.new(0xa83e00),
  :white => Color.new(0xe8cc7d),
  :gray => Color.new(0x695f44)
}
