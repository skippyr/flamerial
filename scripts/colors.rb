sample = "Here Are Dragons!"
for color in 0..15 do
	puts "\x1b[48;5;#{color}m   \x1b[0m   \x1b[38;5;#{color}m#{sample}\x1b[0m"
end

