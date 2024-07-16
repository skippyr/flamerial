palette = [
    ["black", "#150d06"],
    ["red", "#b31c13"],
    ["green", "#990101"],
    ["yellow", "#c76800"],
    ["blue", "#b08548"],
    ["magenta", "#8a3820"],
    ["cyan", "#9c3900"],
    ["white", "#e9d397"]
]
for color in palette do
    size = 20
    file = "#{File.join(File.dirname(File.dirname(File.expand_path(__FILE__))), "assets", "colors", "#{color[0]}.png")}"
    `magick -size #{size}x#{size} xc:#{color[1]} #{file}`
    puts("Created #{size}x#{size} image \"#{file}\" [#{color[1]}].")
end
