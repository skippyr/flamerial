require_relative "lib.rb"

for color in $palette.all_colors
    create_color_image_file(color)
end
