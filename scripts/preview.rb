def to_rgb(hex)
  {
    :r => hex >> 16 & 0xff,
    :g => hex >> 8 & 0xff,
    :b => hex & 0xff
  }
end

def set_clr(clr, lyr)
  clr = $clrs[clr]
  print("\e[#{$lyrs[lyr]}8;2;#{clr[:r]};#{clr[:g]};#{clr[:b]}m")
end

def reset_clr(lyr)
  print("\e[#{$lyrs[lyr]}9m")
end

def write_blank
  2.times {
    set_clr(:black, :bg)
    42.times {
      print(' ')
    }
    reset_clr(:bg)
    puts
  }
end

def write_tribal_decor(len)
  for col in 1..len
    is_even = col % 2 == 0
    set_clr(is_even ? :red : :yellow, :fg)
    print(is_even ? 'v' : '≥')
  end
end

def write_pal(lyr)
  for clr, _ in $clrs
    next if clr == :black
    set_clr(clr, lyr)
    print(lyr == :fg ? 'Fla' : '   ')
  end
end

$clrs = {
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
$lyrs = {
  :fg => 3,
  :bg => 4
}

write_blank
set_clr(:black, :bg)
print('     ')
write_tribal_decor(10)
set_clr(:white, :fg)
print(' Flamerial ')
write_tribal_decor(11)
set_clr(:white, :fg)
print('     ')
reset_clr(:bg)
puts
set_clr(:black, :bg)
print('     ¦/: ')
write_pal(:bg)
set_clr(:black, :bg)
print(' :\\¦     ')
reset_clr(:bg)
puts
set_clr(:black, :bg)
print('     ¦\\: ')
write_pal(:fg)
set_clr(:white, :fg)
print(' :/¦     ')
reset_clr(:bg)
puts
set_clr(:black, :bg)
print('     ')
write_tribal_decor(32)
print('     ')
reset_clr(:bg)
puts
write_blank
reset_clr(:fg)
