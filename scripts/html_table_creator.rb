require_relative("libraries/libraries")

HtmlTableCreator.new(
	Project.get_palette(),
	Project.get_colors_directory(),
	Project.get_repository_directory()
).create()

