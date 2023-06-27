require_relative('../libs/metadata')

def quote(text)
  return "\"#{text}\""
end

puts(
  "colors:
  primary:
    background: #{quote(
    $flamerial[:colors][:black]
  )}
    foreground: #{quote(
    $flamerial[:colors][:white]
  )}
  cursor:
    text: CellBackground
    cursor: CellForeground
  selection:
    text: CellBackground
    cursor: CellForeground
  normal:
    black: #{quote(
    $flamerial[:colors][:black]
  )}
    red: #{quote($flamerial[:colors][:red])}
    green: #{quote(
    $flamerial[:colors][:green]
  )}
    yellow: #{quote($flamerial[:colors][:yellow])}
    blue: #{quote(
    $flamerial[:colors][:blue]
  )}
    magenta: #{quote($flamerial[:colors][:magenta])}
    cyan: #{quote(
    $flamerial[:colors][:cyan]
  )}
    white: #{quote($flamerial[:colors][:white])}
  bright:
    black: #{quote(
    $flamerial[:colors][:light_black]
  )}
    red: #{quote($flamerial[:colors][:red])}
    green: #{quote(
    $flamerial[:colors][:green]
  )}
    yellow: #{quote($flamerial[:colors][:yellow])}
    blue: #{quote(
    $flamerial[:colors][:blue]
  )}
    magenta: #{quote($flamerial[:colors][:magenta])}
    cyan: #{quote(
    $flamerial[:colors][:cyan]
  )}
    white: #{quote($flamerial[:colors][:white])}
"
)
