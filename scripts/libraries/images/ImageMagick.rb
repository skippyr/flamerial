class ImageMagick
	def self.create_image(size, hex, image_path)
		system("convert -size #{size}x#{size} canvas:#{hex} #{image_path}")
	end
end
