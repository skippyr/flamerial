require('fileutils')
require_relative('libs/metadata')
require_relative('libs/repo')

size = 20

FileUtils.rm_rf($colors_directory)
FileUtils.mkdir_p($colors_directory)

i = 0
$flamerial[:colors].each do |color|
  system(
    "convert -size #{size}x#{size} canvas:#{color[1]} #{File.join(
      $colors_directory,
      i.to_s
    )}.png"
  )
  i += 1
end
