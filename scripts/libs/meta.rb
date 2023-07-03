require_relative('art')

$flamerial = Palette.new(
  'Sherman Rofeman',
  'MIT',
  'https://github.com/skippyr/flamerial',
  {
    black:           Color.new('Background', 0     , '#0d0807'),
    black_variant_0: Color.new('Background', 'None', '#261815'),
    black_variant_1: Color.new('Background', 'None', '#402722'),
    black_variant_2: Color.new('Background', 'None', '#593730'),
    red:             Color.new('Values'    , 1     , '#8a4033'),
    green:           Color.new('Variables' , 2     , '#8f764f'),
    yellow:          Color.new('Functions' , 3     , '#85695d'),
    blue:            Color.new('None'      , 4     , '#918686'),
    magenta:         Color.new('Macros'    , 5     , '#85444c'),
    cyan:            Color.new('Statements', 6     , '#8f5519'),
    white:           Color.new('Foreground', 7     , '#c2bcb2'),
    light_black:     Color.new('Comments'  , 8     , '#918686')
  }
)

