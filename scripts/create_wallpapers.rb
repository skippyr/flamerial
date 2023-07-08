def create_row(author, description, url)
  "| #{author} | [#{description}](#{url}) |"
end

wallpapers = [
  create_row(
    "Samuel Regan-Asante",
    "A wall with posters on it",
    "https://unsplash.com/photos/2UFsGAR_qNY"
  )
]

puts("| Author | Description |
|-|-|")
wallpapers.each do |wallpaper|
  puts(wallpaper)
end
