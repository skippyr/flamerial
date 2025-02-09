require_relative "lib.rb"

def write_vertical_spacing
    2.times {
        Terminal.set_color($palette.black, :background)
        42.times {
            print(" ")
        }
        Terminal.reset_color(:background)
        puts
    }
end

def write_tribal_decoration(length)
    for column in 1...length + 1
        is_even = column % 2 == 0
        Terminal.set_color(is_even ? $palette.red : $palette.yellow, :foreground)
        print(is_even ? "v" : "≥")
    end
end

def write_header
    Terminal.set_color($palette.black, :background)
    print("     ")
    write_tribal_decoration(10)
    Terminal.set_color($palette.white, :foreground)
    print(" Flamerial ")
    write_tribal_decoration(11)
    print("     ")
    Terminal.reset_color(:background)
    puts
end

def write_palette(layer)
    Terminal.set_color($palette.black, :background)
    Terminal.set_color($palette.white, :foreground)
    print("     #{layer == :background ? "¦/:" : "¦\\:"} ")
    for color in $palette.preview_colors
        Terminal.set_color(color, layer)
        print(layer == :foreground ? "Fla" : "   ")
    end
    Terminal.set_color($palette.black, :background)
    Terminal.set_color($palette.white, :foreground)
    print(" #{layer == :background ? ":\\¦" : ":/¦"}     ")
    Terminal.reset_color(:background)
    puts
end

def write_footer
    Terminal.set_color($palette.black, :background)
    print("     ")
    write_tribal_decoration(32)
    print("     ")
    Terminal.reset_color(:background)
    Terminal.reset_color(:foreground)
    puts
end

write_vertical_spacing
write_header
write_palette(:background)
write_palette(:foreground)
write_footer
write_vertical_spacing
