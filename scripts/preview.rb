def to_rgb(hex)
  {
    :red => hex >> 16 & 0xff,
    :green => hex >> 8 & 0xff,
    :blue => hex & 0xff
  }
end

def set_color(color, layer)
  color = $colors[color]
  print("\e[#{$layers[layer]}8;2;#{color[:red]};#{color[:green]};#{color[:blue]}m")
end

def reset_color(layer)
  print("\e[#{$layers[layer]}9m")
end

def write_blank
  2.times {
    set_color(:black, :background)
    42.times {
      print(' ')
    }
    reset_color(:background)
    puts
  }
end

def write_tribal_decoration(length)
  for column in 1..length
    is_even = column % 2 == 0
    set_color(is_even ? :red : :yellow, :foreground)
    print(is_even ? 'v' : '≥')
  end
end

def write_palette(layer)
  for color, _ in $colors
    next if color == :black
    set_color(color, layer)
    print(layer == :foreground ? 'Fla' : '   ')
  end
end

$colors = {
  :black => to_rgb(0x030101),
  :red => to_rgb(0x991f06),
  :green => to_rgb(0x7d0800),
  :yellow => to_rgb(0xc76800),
  :blue => to_rgb(0xb08548),
  :magenta => to_rgb(0x8a3820),
  :cyan => to_rgb(0xa83e00),
  :white => to_rgb(0xe8cc7d),
  :grey => to_rgb(0x695f44)
}
$layers = {
  :foreground => 3,
  :background => 4
}

write_blank
set_color(:black, :background)
print('     ')
write_tribal_decoration(10)
set_color(:white, :foreground)
print(' Flamerial ')
write_tribal_decoration(11)
set_color(:white, :foreground)
print('     ')
reset_color(:background)
puts
set_color(:black, :background)
print('     ¦/: ')
write_palette(:background)
set_color(:black, :background)
print(' :\\¦     ')
reset_color(:background)
puts
set_color(:black, :background)
print('     ¦\\: ')
write_palette(:foreground)
set_color(:white, :foreground)
print(' :/¦     ')
reset_color(:background)
puts
set_color(:black, :background)
print('     ')
write_tribal_decoration(32)
print('     ')
reset_color(:background)
puts
write_blank
reset_color(:foreground)
