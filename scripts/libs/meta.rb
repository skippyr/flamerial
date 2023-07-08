require_relative('art')

$flamerial = Palette.new(
  'Sherman Rofeman',
  'MIT',
  'https://github.com/skippyr/flamerial',
  {
    black:           Color.new('Background', 0     , '#140f0f'),
    black_variant_0: Color.new('Background', 'None', '#261d1d'),
    black_variant_1: Color.new('Background', 'None', '#382a2a'),
    black_variant_2: Color.new('Background', 'None', '#4a3737'),
    red:             Color.new('Values'    , 1     , '#b32815'),
    green:           Color.new('Variables' , 2     , '#960c0c'),
    yellow:          Color.new('Functions' , 3     , '#c76e02'),
    blue:            Color.new('None'      , 4     , '#a88e6e'),
    magenta:         Color.new('Macros'    , 5     , '#899980'),
    cyan:            Color.new('Statements', 6     , '#ba3e00'),
    white:           Color.new('Foreground', 7     , '#e8dcbc'),
    light_black:     Color.new('Comments'  , 8     , '#a88e6e')
  }
)

