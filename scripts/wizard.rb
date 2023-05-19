require_relative "libraries/libraries"

if Arguments.is_to_print_help_instructions?()
	Help.print_instructions()
	exit(0)
elsif Arguments.is_to_preview_colors?()
	TerminalEmulator.preview_colors()
	exit(0)
end
flamerial = Palette.new([
	Color.new("black", 0, "#080000"),
	Color.new("black variant 0", "0v0", "#260b0b"),
	Color.new("black variant 1", "0v1", "#661f1f"),
	Color.new("red", 1, "#911317"),
	Color.new("green", 2, "#755717"),
	Color.new("yellow", 3, "#a83816"),
	Color.new("blue", 4, "#665f39"),
	Color.new("magenta", 5, "#59303d"),
	Color.new("cyan", 6, "#75280e"),
	Color.new("white", 7, "#bf7f36"),
	Color.new("light_black", 8, "#916634")
])
if Arguments.is_to_create_table?()
	puts(PaletteHTMLTable.new(flamerial).as_string())
elsif Arguments.is_to_create_images?()
	PaletteImagesCreator.new(flamerial).create_images()
else
	Error.new("no command given.", "read the help instructions using the flag --help.").throw()
end

