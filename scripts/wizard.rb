require_relative "libraries/libraries"

if Arguments.is_to_print_help_instructions?()
	Help.print_instructions()
	exit(0)
elsif Arguments.is_to_preview_colors?()
	TerminalEmulator.preview_colors()
	exit(0)
end
flamerial = Palette.new([
	Color.new("black", 0, "#0d0600"),
	Color.new("black variant 0", "0v0", "#261200"),
	Color.new("red", 1, "#a62126"),
	Color.new("green", 2, "#755717"),
	Color.new("yellow", 3, "#a86419"),
	Color.new("blue", 4, "#8c6f46"),
	Color.new("magenta", 5, "#754636"),
	Color.new("cyan", 6, "#852d10"),
	Color.new("white", 7, "#f5cc7a"),
	Color.new("light black", 8, "#916634")
])
if Arguments.is_to_create_table?()
	puts(PaletteHTMLTable.new(flamerial).as_string())
elsif Arguments.is_to_create_images?()
	PaletteImagesCreator.new(flamerial).create_images()
else
	Error.new("no command given.", "read the help instructions using the flag --help.").throw()
end

