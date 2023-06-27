require("fileutils")
require_relative("libs/metadata")
require_relative("libs/repo")

colors_directory = File.join(get_repo_directory(), "images", "colors")
size = 20

FileUtils.rm_rf(colors_directory)
FileUtils.mkdir_p(colors_directory)

i = 0
for color in $flamerial[:colors]
  system("convert -size #{size}x#{size} canvas:#{color[1]} #{File.join(colors_directory, i.to_s())}.png")
  i += 1
end
