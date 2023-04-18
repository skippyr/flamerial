#!/usr/bin/env lua

local function print_usage_instructions()
	print("\x1b[1;36mUsage Instructions\x1b[0m")
	print("\t\x1b[1;36mIntroduction\x1b[0m")
	print("\t\tThis is a script to manage the development of Flamerial.")
	print("\t\tIt must be run from the root directory of the repository.")
	print("\t\tFor it to work, you must install these dependencies:")
	print("\t\t\t\x1b[33m*\x1b[31m imagemagick\x1b[0m.")
	print("\t\x1b[1;36mSyntax\x1b[0m")
	print("\t\tUse this script in the following format:")
	print(
		"\t\t\t" ..
		arg[0] ..
		" \x1b[31m<\x1b[0msubcommand\x1b[31m>\x1b[0m"
	)
	print("\t\tThe subcommands it can accept are:")
	print("\t\t\t\x1b[33m*\x1b[0m \x1b[31mcreate-palette-table\x1b[0m: creates the palette table for the README.md.")
	print("\t\t\t\x1b[33m*\x1b[0m \x1b[31mcreate-palette-images\x1b[0m: creates the preview images used in the palette table.")
	print("\t\t\t\x1b[33m*\x1b[0m \x1b[31mcreate-palette-preview\x1b[0m: creates the preview used in screenshots.")
	return
end

local function create_palette_table(palette_colors)
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
	in pairs(palette_colors) do
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
			"\t\t\t<td><img src=\"./images/colors/" ..
			color_name ..
			".png\"/></td>"
		)
		print("\t\t</tr>")
	end
	print("\t</tbody>")
	print("</table>")
	return
end

local function create_palette_images(palette_colors)
	local image_size_in_pixels = 32
	os.execute("mkdir -p ./images/colors")
	print("\x1b[1;33mCreating Palette Images\x1b[0m")
	for
		color_name,
		color_hex
	in pairs(palette.colors) do
		os.execute(
			"convert -size " ..
			image_size_in_pixels ..
			"x" ..
			image_size_in_pixels ..
			" canvas:\"" ..
			color_hex ..
			"\" ./images/colors/" ..
			color_name ..
			".png"
		)
		print(
			"\t\x1b[33m*\x1b[0m Created palette image for color \x1b[31m" ..
			color_name ..
			"\x1b[0m."
		)
	end
	return
end

local function create_palette_preview()
	local limit_color = 16
	for color =
		0,
		limit_color
	do
		io.write(
			"\x1b[48;5;" ..
			color ..
			"m   \x1b[0m"
		)
	end
	print()
	for color =
		0,
		limit_color
	do
		io.write(
			"\x1b[38;5;" ..
			color ..
			"mFla\x1b[0m"
		)
	end
	print()
	return
end

local function main()
	local palette_colors = {
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
	if (arg[1] == "create-palette-table") then
		create_palette_table(palette_colors)
	elseif (arg[1] == "create-palette-images") then
		create_palette_images(palette_colors)
	elseif (arg[1] == "create-palette-preview") then
		create_palette_preview()
	else
		print_usage_instructions()
	end
	return
end

main()

