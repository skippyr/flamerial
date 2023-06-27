require_relative('libs/metadata')
require_relative('libs/repo')

puts('| Name | ANSI | Hex | Preview |
| ---- | ---- | --- | ------- |')

i = 0
$flamerial[:colors].each do |color|
  puts(
    "| #{color[0]} | #{i} | #{color[1]} | ![](#{File.join(
      $colors_directory.sub($repo_directory, '')[1..],
      i.to_s
    )}.png)"
  )
  i += 1
end
