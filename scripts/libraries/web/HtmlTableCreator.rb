class HtmlTableCreator
	def initialize(palette, colors_directory, repository_directory)
		@palette = palette
		@colors_directory = colors_directory
		@repository_directory = repository_directory
	end

	def create()
		puts("<table>")
		puts("\t<thead>")
		puts("\t\t<tr>")
		puts("\t\t\t<td>Name</td>")
		puts("\t\t\t<td>Ansi</td>")
		puts("\t\t\t<td>Hex</td>")
		puts("\t\t\t<td>Preview</td>")
		puts("\t\t</tr>")
		puts("\t</thead>")
		puts("\t<tbody>")
		for color in @palette.get_colors()
			image_path = "#{File.join(
				@colors_directory.get_path().sub(
					@repository_directory.get_path(),
					"."
				),
				color.get_image_name()
			)}.png"
			puts("\t\t<tr>")
			puts("\t\t\t<td>#{color.get_name()}</td>")
			puts("\t\t\t<td><code>#{color.get_ansi()}</code></td>")
			puts("\t\t\t<td><code>#{color.get_hex()}</code></td>")
			puts("\t\t\t<td><img src=\"#{image_path}\" alt=\"\"/></td>")
			puts("\t\t</tr>")
		end
		puts("\t</tbody>")
		puts("</table>")
	end
end
