require_relative('art')

NONE = 'NONE'
$flamerial = Palette.new(
  'Sherman Rofeman',
  'MIT',
  'https://github.com/skippyr/flamerial',
  {
    black:           Color.new('Background', 0     , '#140f0f'),
    black_variant_0: Color.new('Background', NONE, '#261d1d'),
    black_variant_1: Color.new('Background', NONE, '#382a2a'),
    black_variant_2: Color.new('Background', NONE, '#4a3737'),
    red:             Color.new('Values'    , 1     , '#b32815'),
    green:           Color.new('Statements', 2     , '#960c0c'),
    yellow:          Color.new('Variables' , 3     , '#c76e02'),
    blue:            Color.new('Functions' , 4     , '#a88e6e'),
    magenta:         Color.new(NONE        , 5     , '#899980'),
    cyan:            Color.new(NONE        , 6     , '#ba3e00'),
    white:           Color.new('Foreground', 7     , '#e8dcbc'),
    light_black:     Color.new('Comments'  , 8     , '#a88e6e')
  }
)

