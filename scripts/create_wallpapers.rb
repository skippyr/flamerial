def create_row(author, description, url)
  "| #{author} | [#{description}](#{url}) |"
end

wallpapers = [
  create_row(
    "Zhu Peng",
    "Closeup Photo of Brown and Black Wooden Houses",
    "https://www.pexels.com/photo/closeup-photo-of-brown-and-black-wooden-houses-digital-wallpaper-734102/"
  )
]

puts("| Author | Description |
|-|-|")
wallpapers.each do |wallpaper|
  puts(wallpaper)
end
