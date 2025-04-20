require_relative 'lib.rb'

puts '<table align="center">'
puts '  <thead>'
puts '    <tr>'
puts '      <th>Preview</th>'
puts '      <th>Name</th>'
puts '      <th>HEX</th>'
puts '      <th>RGB</th>'
puts '    </tr>'
puts '  </thead>'
puts '  <tbody>'
for key, color in $colors
  puts '    <tr>'
  puts "      <td><img alt=\"\" src=\"assets/#{key}.png\" /></td>"
  puts "      <td>#{key.to_s.split.map(&:capitalize).join ' '}</td>"
  puts "      <td><code>#{color.hex_string}</code></td>"
  puts "      <td><code>#{color.rgb_string}</code></td>"
  puts '    </tr>'
end
puts '  </tbody>'
puts '</table>'
puts '<p align="center"><strong>Caption:</strong> the colors that compose the theme palette.</p>'
