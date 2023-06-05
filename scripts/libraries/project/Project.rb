class Project
	def self.get_repository_directory()
		Directory.new(File.dirname(File.dirname(File.dirname(__dir__))))
	end

	def self.get_colors_directory()
		Directory.new(File.join(
			self.get_repository_directory().get_path(),
			"images",
			"colors"
		))
	end

	def self.get_palette()
		Palette.new([
			Color.new("Black", "black", 0, "#1f1307"),
			Color.new("Black Variant 0", "black_variant_0", "None", "#331f0b"),
			Color.new("Red", "red", 1, "#b3001b"),
			Color.new("Green", "green", 2, "#9c661f"),
			Color.new("Yellow", "yellow", 3, "#bf5b04"),
			Color.new("Blue", "blue", 4, "#857256"),
			Color.new("Magenta", "magenta", 5, "#8a5b3e"),
			Color.new("Cyan", "cyan", 6, "#9c3513"),
			Color.new("White", "white", 7, "#f5cc7a"),
			Color.new("Light Black", "light_black", 8, "#916634")
		])
	end
end
