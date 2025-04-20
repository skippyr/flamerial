require_relative 'lib.rb'

assets_directory = File.join(File.dirname(File.dirname(File.realpath(__FILE__))), 'assets')
size = 20
for key, color in $colors
  image = File.join(assets_directory, "#{key.to_s}.png")
  system "magick -size #{size}x#{size} xc:#{color.hex_string} #{image}"
  puts "Created color image #{image}."
end
