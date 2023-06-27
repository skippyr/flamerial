require_relative("../libs/metadata")

puts("## name: Flamerial
## author: #{$flamerial[:author]}
## license: #{$flamerial[:license]}
## upstream: #{$flamerial[:upstream]}

background #{$flamerial[:colors][:black]}
foreground #{$flamerial[:colors][:white]}
color0 #{$flamerial[:colors][:black]}
color1 #{$flamerial[:colors][:red]}
color2 #{$flamerial[:colors][:green]}
color3 #{$flamerial[:colors][:yellow]}
color4 #{$flamerial[:colors][:blue]}
color5 #{$flamerial[:colors][:magenta]}
color6 #{$flamerial[:colors][:cyan]}
color7 #{$flamerial[:colors][:white]}
color8 #{$flamerial[:colors][:light_black]}
color9 #{$flamerial[:colors][:red]}
color10 #{$flamerial[:colors][:green]}
color11 #{$flamerial[:colors][:yellow]}
color12 #{$flamerial[:colors][:blue]}
color13 #{$flamerial[:colors][:magenta]}
color14 #{$flamerial[:colors][:cyan]}
color15 #{$flamerial[:colors][:white]}
")

