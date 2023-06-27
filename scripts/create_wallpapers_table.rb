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
    'A sign on the side of a building that says rue du dragon',
    'Julia anseele',
    'https://unsplash.com/photos/2yTm3s0PqUA'
  ),
  Wallpaper.new(
    'A window with a sign on it',
    'Robert Katzki',
    'https://unsplash.com/photos/zzqw25Oa51A'
  ),
  Wallpaper.new(
    'Gray rock mountain illustration',
    'Felix Bacher',
    'https://unsplash.com/photos/-jEEnRx38wo'
  ),
  Wallpaper.new(
    'Waterfalls during daytime',
    'Ingi Haraldss',
    'https://unsplash.com/photos/XnkK88K2bao'
  ),
  Wallpaper.new(
    'Brown wooden dock near mountain during daytime',
    'Mar Bustos',
    'https://unsplash.com/photos/HsEz1XZ1TO8'
  )
]

puts('# Wallpapers
| Description | Author |
| - | - |')
wallpapers.each do |wallpaper|
  puts(wallpaper.as_table_element)
end
