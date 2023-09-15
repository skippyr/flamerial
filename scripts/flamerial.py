print("        🐉🔥")
print("      Flamerial")

max = 8

for ansi_code in range(1, max):
    print(f"\033[48;5;{ansi_code}m   \033[0m", end="")
print()
for ansi_code in range(1, max):
    print(f"\033[38;5;{ansi_code}m {ansi_code} \033[0m", end="")
print()