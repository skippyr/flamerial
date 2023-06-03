class ImagesCreator
	def initialize(palette, colors_directory)
		@palette = palette
		@colors_directory = colors_directory
	end

	def create()
		@colors_directory.replace()
		size = 20
		for color in @palette.get_colors()
			image_path = "#{File.join(
				@colors_directory.get_path(),
				color.get_image_name()
			)}.png"
			ImageMagick.create_image(size, color.get_hex(), image_path)
		end
	end
end

