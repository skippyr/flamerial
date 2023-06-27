puts("Ansi   Preview     ")
for i in 1..8 do
  puts("#{i}      \x1b[48;5;#{i}m   \x1b[0m   \x1b[38;5;#{i}mFlamerial\x1b[0m ")
end
