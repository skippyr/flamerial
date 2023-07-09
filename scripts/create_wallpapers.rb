def create_row(author, description, url)
  "| #{author} | [#{description}](#{url}) |"
end

wallpapers = [
  create_row(
    "Samuel Regan-Asante",
    "A wall with posters on it",
    "https://unsplash.com/photos/2UFsGAR_qNY"
  ),
  create_row(
    "Richard Lee",
    "Orange car parked between painted walls",
    "https://unsplash.com/photos/zvECJa2vXx0"
  )
]

puts("| Author | Description |
|-|-|")
wallpapers.each do |wallpaper|
  puts(wallpaper)
end
