class Project
	def self.get_palette()
		Palette.new(
			Color.new("Black", "black", 0, "#170e05"),
			Color.new("Red", "red", 1, "#b3001b"),
			Color.new("Green", "green", 2, "#9c661f"),
			Color.new("Yellow", "yellow", 3, "#bf5b04"),
			Color.new("Blue", "blue", 4, "#335c58"),
			Color.new("Magenta", "magenta", 5, "#744d34"),
			Color.new("Cyan", "cyan", 6, "#9c3513"),
			Color.new("White", "white", 7, "#f5cc7a"),
			Color.new("Light Black", "light_black", 8, "#916634")
		)
	end
end
