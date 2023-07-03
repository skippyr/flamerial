require_relative('../libs/meta')

def print_config(option, color)
  puts("bspc config #{option} \"#{color}\"")
end

puts("#!/usr/bin/env bash\n\n")
print_config('focused_border_color', $flamerial.get_color_hex(:red))
print_config('normal_border_color', $flamerial.get_color_hex(:black_variant_0))
print_config('presel_feedback_color', $flamerial.get_color_hex(:magenta))
