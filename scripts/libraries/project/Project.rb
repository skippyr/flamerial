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
			Color.new("Black", "black", 0, "#332720"),
			Color.new("Red", "red", 1, "#cc2623"),
			Color.new("Green", "green", 2, "#c99510"),
			Color.new("Yellow", "yellow", 3, "#de7c04"),
			Color.new("Blue", "blue", 4, "#aaab90"),
			Color.new("Magenta", "magenta", 5, "#b35f6c"),
			Color.new("Cyan", "cyan", 6, "#d1441d"),
			Color.new("White", "white", 7, "#ebcba9"),
		])
	end
end
