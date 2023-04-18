#!/usr/bin/env lua

local function print_usage_instructions()
	print("\x1b[1;36mUsage Instructions\x1b[0m")
	print("\t\x1b[1;36mIntroduction\x1b[0m")
	print("\t\tThis is a script to manage the development of Flamerial.")
	print("\t\x1b[1;36mSyntax\x1b[0m")
	print("\t\tUse this script in the following format:")
	print("\t\t\t./\x1b[32mwizard.lua\x1b[0m <subcommand>")
	print("\t\tThe subcommands it can accept are:")
	print("\t\t\t\x1b[33m*\x1b[0m \x1b[31mcreate-palette-table\x1b[0m: creates the palette table for the README.md.")
	print("\t\t\t\x1b[33m*\x1b[0m \x1b[31mcreate-palette-images\x1b[0m: creates the preview images used in the palette table.")
end

local function create_palette_table(palette)
	print("<table>")
	print("\t<thead>")
	print("\t\t<tr>")
	print("\t\t\t<td>Name</td>")
	print("\t\t\t<td>Hex</td>")
	print("\t\t\t<td>Preview</td>")
	print("\t\t</tr>")
	print("\t</thead>")
	print("\t<tbody>")
	for 
		color_name,
		color_hex
	in pairs(palette.colors) do
		print("\t\t<tr>")
		print(
			"\t\t\t<td>" ..
			color_name ..
			"</td>"
		)
		print(
			"\t\t\t<td>" ..
			color_hex ..
			"</td>"
		)
		print(
			"\t\t\t<td><img href=\"./images/colors/" ..
			color_name ..
			".png\"/></td>"
		)
		print("\t\t</tr>")
	end
	print("\t</tbody>")
	print("</table>")
end

local function main()
	local palette = {
		name = "Flamerial",
		author = "Sherman Rofeman {skippyr}",
		license = "MIT License",
		colors = {
			black = "#0d0501",
			red = "#b01002",
			green = "#e6b800",
			yellow = "#bd6f00",
			blue = "#6ca69c",
			magenta = "#8f5187",
			cyan = "#91a761",
			white = "#faedac",
			light_black = "#8f8763"
		}
	}
	if (arg[1] == "create-palette-table") then
		create_palette_table(palette)
	else
		print_usage_instructions()
	end
end

main()

