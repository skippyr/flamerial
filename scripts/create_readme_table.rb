require_relative('libs/meta')
require_relative('libs/repo')

puts('| Name | Syntax Highlight | Ansi | Hex | Preview |
| - | - | - | - | - |')

$flamerial.get_colors().each do |color|
  puts(
    "| #{color[0]} | #{color[1].get_syntax_highlight()} | #{color[1].get_ansi()} | #{color[1].get_hex()} | ![](#{File.join(
      $colors_directory.sub($repo_directory, '')[1..],
      color[0].to_s()
    )}.png)"
  )
end
