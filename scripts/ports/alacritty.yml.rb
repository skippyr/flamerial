require_relative('../libs/meta')

def quote(color)
  return "\"#{$flamerial.get_color_hex(color)}\""
end

puts(
  "colors:
  primary:
    background: #{quote(:black)}
    foreground: #{quote(:white)}
  cursor:
    text: CellBackground
    cursor: CellForeground
  selection:
    text: CellBackground
    cursor: CellForeground
  normal:
    black: #{quote(:black)}
    red: #{quote(:red)}
    green: #{quote(:green)}
    yellow: #{quote(:yellow)}
    blue: #{quote(:blue)}
    magenta: #{quote(:magenta)}
    cyan: #{quote(:cyan)}
    white: #{quote(:white)}
  bright:
    black: #{quote(:light_black)}
    red: #{quote(:red)}
    green: #{quote(:green)}
    yellow: #{quote(:yellow)}
    blue: #{quote(:blue)}
    magenta: #{quote(:magenta)}
    cyan: #{quote(:cyan)}
    white: #{quote(:white)}
"
)
