class TerminalEmulator
	def self.preview_colors()
		minimum_color = 1
		maximum_color = 8
		self.preview_background_colors(minimum_color, maximum_color)
		self.preview_foreground_colors(minimum_color, maximum_color)
	end

	private

	def self.preview_foreground_colors(minimum_color, maximum_color)
		for color in minimum_color..maximum_color do
			print("\x1b[38;5;#{color}mFla\x1b[0m")
		end
		puts()
	end

	def self.preview_background_colors(minimum_color, maximum_color)
		for color in minimum_color..maximum_color do
			print("\x1b[48;5;#{color}m   \x1b[0m")
		end
		puts()
	end
end
