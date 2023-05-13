class Color
	def initialize(name, ansi, hex)
		@name = name
		@ansi = ansi
		@hex
	end

	def get_name()
		@name
	end

	def get_ansi()
		@ansi
	end

	def get_hex()
		@hex
	end
end

class Palette
	def initialize(colors)
		@colors = colors
	end

	def get_colors()
		@colors
	end
end

class PaletteHTMLTable
	def initialize(palette)
		@palette = palette
	end

	def as_string()
		string = "<table>\n"
		string << "\t<thead>\n"
		string << "\t\t<td>Name</td>\n"
		string << "\t\t<td>Ansi</td>\n"
		string << "\t\t<td>Hex</td>\n"
		string << "\t\t<td>Preview</td>\n"
		string << "\t</thead>\n"
		string << "\t<tbody>\n"
		for color in @palette.get_colors()
			string << "\t\t<td>#{color.get_name()}</td>\n"
			string << "\t\t<td>#{color.get_ansi()}</td>\n"
			string << "\t\t<td>#{color.get_hex()}</td>\n"
			string << "\t\t<td><img src=\"./images/#{color.get_ansi()}.png\"/></td>\n"
		end
		string << "\t</tbody>\n"
		string << "</table>\n"
	end
end

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
puts(table.as_string())


