for clr in 1..7 do
	print("\x1b[4#{clr}m   \x1b[0m")
end
puts()
for clr in 1..7 do
	print("\x1b[3#{clr}mFla\x1b[0m")
end
puts()
for clr in 1..7 do
	print("[\x1b[3#{clr}m#{clr}\x1b[0m]")
end
puts()
