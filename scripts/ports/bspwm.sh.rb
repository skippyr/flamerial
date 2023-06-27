require_relative('../libs/metadata')

def print_config(option, color)
  puts("bspc config #{option} \"#{color}\"")
end

puts("#!/usr/bin/env bash\n\n")
print_config('focused_border_color', $flamerial[:colors][:red])
print_config('normal_border_color', $flamerial[:colors][:black])
print_config('presel_feedback_color', $flamerial[:colors][:magenta])
