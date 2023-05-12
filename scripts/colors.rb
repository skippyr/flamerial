def print_numbers
	for color in 0..15
		print " " * (3 - color.to_s.length)
		print color
	end
	puts
end

def print_background
	for color in 0..15
		print "\x1b[48;5;#{color}m   \x1b[0m"
	end
	puts
end

def print_foreground
	for color in 0..15
		print "\x1b[38;5;#{color}mFla\x1b[0m"
	end
	puts
end

def main
	puts
	print_numbers
	print_background
	print_foreground
	puts
end

main

