min = 1; max = 7
puts("           🔥🐉")
puts(
    "\x1b[33m%\x1b[31m~\x1b[34m-----\x1b[0m Flamerial \x1b[34m-----\x1b[31m~" +
    "\x1b[33m%\x1b[0m"
)
print("\x1b[34m¦\x1b[0m ")
for c in min..max do print("\x1b[4#{c}m   \x1b[0m") end
print(" \x1b[34m¦\n¦\x1b[0m ")
for c in min..max do print("\x1b[3#{c}mFla\x1b[0m") end
print(" \x1b[34m¦\n¦\x1b[0m ")
for c in min..max do print("[\x1b[3#{c}m#{c}\x1b[0m]") end
puts(
    " \x1b[34m¦\n\x1b[33m%\x1b[31m~\x1b[34m---------------------\x1b[31m~" +
    "\x1b[33m%\x1b[0m"
)
