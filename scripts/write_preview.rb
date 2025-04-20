require_relative 'lib.rb'

def write_vertical_spacing
  for _ in 0..1
    set_color :background, :black
    for _ in 0..41
      print ' '
    end
    reset_colors
    puts
  end
end

def write_tribal_decoration(length)
  for column in 0..length - 1
    is_even = column % 2 == 0
    set_color :foreground, is_even ? :yellow : :red
    print is_even ? '≥' : 'v'
  end
end

def write_header
  set_color :background, :black
  print '     '
  write_tribal_decoration 10
  set_color :foreground, :white
  print ' Flamerial '
  write_tribal_decoration 11
  print '     '
  reset_colors
  puts
end

def write_palette(layer)
  set_color :background, :black
  set_color :foreground, :white
  print "     #{layer == :foreground ? '¦\\:' : '¦/:'} "
  for key, _ in $colors.to_a[2..].to_h
    set_color layer, key
    print layer == :foreground ? 'Fla' : '   '
  end
  set_color :background, :black
  set_color :foreground, :white
  print " #{layer == :foreground ? ':/¦' : ':\\¦'}     "
  reset_colors
  puts
end

def write_footer()
  set_color :background, :black
  print '     '
  write_tribal_decoration 32
  print '     '
  reset_colors
  puts
end

write_vertical_spacing
write_header
write_palette :background
write_palette :foreground
write_footer
write_vertical_spacing
