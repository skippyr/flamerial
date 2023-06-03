require_relative("libraries/libraries")

ImagesCreator.new(
	Project.get_palette(),
	Project.get_colors_directory()
).create()

