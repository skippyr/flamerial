require_relative "libraries/libraries"

flamerial = Palette.new([
	Color.new("black", 0, "#080000"),
	Color.new("red", 1, "#911317"),
	Color.new("green", 2, "#755717"),
	Color.new("yellow", 3, "#c24119"),
	Color.new("blue", 4, "#665f39"),
	Color.new("magenta", 5, "#59303d"),
	Color.new("cyan", 6, "#75280e"),
	Color.new("white", 7, "#f5a245"),
	Color.new("light_white", 8, "#916634")
])
table = PaletteHTMLTable.new(flamerial)
images_creator = PaletteImagesCreator.new(flamerial)
puts(flamerial.preview())


