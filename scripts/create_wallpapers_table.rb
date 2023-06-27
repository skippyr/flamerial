class Wallpaper
  def initialize(description, author, url)
    @description = description
    @author = author
    @url = url
  end

  def as_table_element()
    return "| [#{@description}](#{@url}) | #{@author} |"
  end
end

wallpapers = [
  Wallpaper.new(
    'A building with a dragon roof',
    'Benson Low',
    'https://unsplash.com/photos/jh6V4Y2s6OU'
  ),
  Wallpaper.new(
    'Gray rock mountain illustration',
    'Felix Bacher',
    'https://unsplash.com/photos/-jEEnRx38wo'
  ),
  Wallpaper.new(
    'Brown wooden dock near mountain during daytime',
    'Mar Bustos',
    'https://unsplash.com/photos/HsEz1XZ1TO8'
  ),
  Wallpaper.new(
    'A theater marquee with a large building in the background',
    'Alexander Abero',
    'https://unsplash.com/photos/2zhWNOQFlf4'
  ),
  Wallpaper.new(
    'Brown concrete building during daytime',
    'Maria Garza',
    'https://unsplash.com/photos/w0zyJ9BmtFY'
  )
]

puts('# Wallpapers
| Description | Author |
| - | - |')
wallpapers.each do |wallpaper|
  puts(wallpaper.as_table_element)
end

