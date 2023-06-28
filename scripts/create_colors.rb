require('fileutils')
require_relative('libs/meta')
require_relative('libs/repo')

size = 20

FileUtils.rm_rf($colors_directory)
FileUtils.mkdir_p($colors_directory)

$flamerial.get_colors().each do |color|
  system(
    "convert -size #{size}x#{size} canvas:#{color[1].get_hex()} #{File.join(
      $colors_directory,
      color[0].to_s()
    )}.png"
  )
end
