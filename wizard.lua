#!/usr/bin/env lua

local function print_title(
	left_indentation,
	text
)
	print(
		left_indentation ..
		"\x1b[1;32m" ..
		text ..
		"\x1b[0m"
	)
	return
end

local function print_topic(
	left_indentation,
	text
)
	print(
		left_indentation ..
		"\x1b[32m*\x1b[0m " ..
		text
	)
	return
end

local function highlight(text)
	return (
		"\x1b[31m" ..
		text ..
		"\x1b[0m"
	)
end

local function print_usage_instructions()
	print_title(
		"",
		"Usage Instructions"
	)
	print_title(
		"\t",
		"Starting Point"
	)
	print("\t\tThis is a script to manage the development of Flamerial.")
	print("\t\tIt must be run from the root directory of the repository.")
	print("\t\tFor it to work, you must install these dependencies:")
	local dependencies = {
		"imagemagick"
	}
	for iterator =
		1,
		#dependencies
	do
		print_topic(
			"\t\t\t",
			highlight(dependencies[iterator])
		)
	end
	print_title(
		"\t",
		"Syntax"
	)
	print("\t\tUse this script in the following format:")
	print(
		"\t\t\t" ..
		arg[0] ..
		" <subcommand>"
	)
	print("\t\tThe subcommands it can accept are:")
	local subcommands = {
		{
			name = "create-palette-table",
			description = "creates the palette table for the README.md."
		},
		{
			name = "create-palette-images",
			description = "creates the preview images used in the palette table."
		},
		{
			name = "create-palette-preview",
			description = "creates the preview used in screenshots."
		}
	}
	for iterator =
		1,
		#subcommands
	do
		print_topic(
			"\t\t\t",
			highlight(subcommands[iterator].name) ..
			": " ..
			subcommands[iterator].description
		)
	end
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
	for iterator =
		1,
		#palette_colors
	do
		print("\t\t<tr>")
		print(
			"\t\t\t<td>" ..
			palette_colors[iterator].name ..
			"</td>"
		)
		print(
			"\t\t\t<td>" ..
			palette_colors[iterator].hex ..
			"</td>"
		)
		print(
			"\t\t\t<td><img src=\"./images/colors/" ..
			palette_colors[iterator].name ..
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
	print_title(
		"",
		"Creating Palette Images"
	)
	for iterator =
		1,
		#palette_colors
	do
		os.execute(
			"convert -size " ..
			image_size_in_pixels ..
			"x" ..
			image_size_in_pixels ..
			" canvas:\"" ..
			palette_colors[iterator].hex ..
			"\" ./images/colors/" ..
			palette_colors[iterator].name ..
			".png"
		)
		print_topic(
			"\t",
			"Created palette image for color " ..
			highlight(palette_colors[iterator].name) ..
			"."
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
		{
			name = "black",
			hex = "#0d0501"
		},
		{
			name = "red",
			hex = "#b01002"
		},
		{
			name = "green",
			hex = "#e6b800"
		},
		{
			name = "yellow",
			hex = "#bd6f00"
		},
		{
			name = "blue",
			hex = "#6ca69c"
		},
		{
			name = "magenta",
			hex = "#8f5187"
		},
		{
			name = "cyan",
			hex = "#91a761"
		},
		{
			name = "white",
			hex = "#faedac"
		},
		{
			name = "light_black",
			hex = "#8f8763"
		}
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
