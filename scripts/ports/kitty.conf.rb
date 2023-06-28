require_relative('../libs/meta')

puts("## name: Flamerial
## author: #{$flamerial.get_author()}
## license: #{$flamerial.get_license()}
## upstream: #{$flamerial.get_upstream()}
cursor #{$flamerial.get_color_hex(:white)}
cursor_text_color #{$flamerial.get_color_hex(:black)}
selection_background #{$flamerial.get_color_hex(:white)}
selection_foreground #{$flamerial.get_color_hex(:black)}
active_tab_background #{$flamerial.get_color_hex(:white)}
active_tab_foreground #{$flamerial.get_color_hex(:black)}
inactive_tab_background #{$flamerial.get_color_hex(:black)}
inactive_tab_foreground #{$flamerial.get_color_hex(:white)}
active_border_color #{$flamerial.get_color_hex(:red)}
inactive_border_color #{$flamerial.get_color_hex(:black)}
url_color #{$flamerial.get_color_hex(:red)}
background #{$flamerial.get_color_hex(:black)}
foreground #{$flamerial.get_color_hex(:white)}
color0 #{$flamerial.get_color_hex(:black)}
color1 #{$flamerial.get_color_hex(:red)}
color2 #{$flamerial.get_color_hex(:green)}
color3 #{$flamerial.get_color_hex(:yellow)}
color4 #{$flamerial.get_color_hex(:blue)}
color5 #{$flamerial.get_color_hex(:magenta)}
color6 #{$flamerial.get_color_hex(:cyan)}
color7 #{$flamerial.get_color_hex(:white)}
color8 #{$flamerial.get_color_hex(:light_black)}
color9 #{$flamerial.get_color_hex(:red)}
color10 #{$flamerial.get_color_hex(:green)}
color11 #{$flamerial.get_color_hex(:yellow)}
color12 #{$flamerial.get_color_hex(:blue)}
color13 #{$flamerial.get_color_hex(:magenta)}
color14 #{$flamerial.get_color_hex(:cyan)}
color15 #{$flamerial.get_color_hex(:white)}
")
