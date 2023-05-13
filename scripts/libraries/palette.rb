class Color
	def initialize(name, ansi, hex)
		@name = name
		@ansi = ansi
		@hex = hex
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

	def preview()
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
			string << "\t\t<td><img src=\"./images/colors/#{color.get_ansi()}.png\"/></td>\n"
		end
		string << "\t</tbody>\n"
		string << "</table>\n"
	end
end

class PaletteImagesCreator
	def initialize(palette)
		@palette = palette
		@images_directory_path = File.join(Project.get_images_directory_path(), "colors")
	end

	def create()
		FileUtils.mkdir_p(@images_directory_path)
		for color in @palette.get_colors()
			file_path = File.join(@images_directory_path, "#{color.get_ansi()}.png")
			system("convert -size 30x30 canvas:\"#{color.get_hex()}\" #{file_path}")
		end
	end
end

