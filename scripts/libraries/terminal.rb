class TerminalEmulator
	def self.preview_colors()
		puts
		for color in 0..15
			print " " * (3 - color.to_s.length)
			print color
		end
		puts
		for color in 0..15
			print "\x1b[48;5;#{color}m   \x1b[0m"
		end
		puts
		for color in 0..15
			print "\x1b[38;5;#{color}mFla\x1b[0m"
		end
		puts
		puts
	end
end

