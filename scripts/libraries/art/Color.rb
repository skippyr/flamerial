class Color
	def initialize(name, image_name, ansi, hex)
		@name = name
		@image_name = image_name
		@ansi = ansi
		@hex = hex
	end

	def get_name()
		@name
	end

	def get_image_name()
		@image_name
	end

	def get_ansi()
		@ansi
	end

	def get_hex()
		@hex
	end
end

