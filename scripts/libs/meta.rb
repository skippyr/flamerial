require_relative('art')

$flamerial = Palette.new(
  'Sherman Rofeman',
  'MIT',
  'https://github.com/skippyr/flamerial',
  {
    black:           Color.new('Background', 0     , '#241a12'),
    black_variant_0: Color.new('Background', 'None', '#33251a'),
    black_variant_1: Color.new('Background', 'None', '#543c2a'),
    black_variant_2: Color.new('Background', 'None', '#735239'),
    red:             Color.new('Values'    , 1     , '#a62929'),
    green:           Color.new('Variables' , 2     , '#9a6b1b'),
    yellow:          Color.new('Functions' , 3     , '#d97904'),
    blue:            Color.new('None'      , 4     , '#a59a78'),
    magenta:         Color.new('Macros'    , 5     , '#b3374a'),
    cyan:            Color.new('None'      , 6     , '#c2421f'),
    white:           Color.new('Foreground', 7     , '#e6d0bb'),
    light_black:     Color.new('Comments'  , 8     , '#c78e59')
  }
)

