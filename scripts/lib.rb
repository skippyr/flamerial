class Color
    attr_reader :name, :red, :green, :blue

    def initialize(name, hex)
        @name = name
        @red = hex >> 16 & 0xff
        @green = hex >> 8 & 0xff
        @blue = hex & 0xff
    end

    def image_file_name
        "#{@name.downcase().gsub(" ", "_")}.png"
    end

    def hex_string
        sprintf("#%02x%02x%02x", @red, @green, @blue)
    end

    def rgb_string
        "(r: #{@red}, g: #{@green}, b: #{@blue})"
    end
end

class Palette
    attr_reader :black, :red, :yellow, :white

    def initialize(
        black,
        red,
        green,
        yellow,
        blue,
        magenta,
        cyan,
        white,
        gray,
        alternate_background_0,
        alternate_background_1,
        selection_background,
        cursor_selection,
        matching_item
    )
        @black = black
        @red = red
        @green = green
        @yellow = yellow
        @blue = blue
        @magenta = magenta
        @cyan = cyan
        @white = white
        @gray = gray
        @alternate_background_0 = alternate_background_0
        @alternate_background_1 = alternate_background_1
        @selection_background = selection_background
        @cursor_selection = cursor_selection
        @matching_item = matching_item
    end

    def all_colors
        [
            @black, @red, @green, @yellow, @blue, @magenta, @cyan, @white, @gray,
            @alternate_background_0, @alternate_background_1, @selection_background,
            @cursor_selection, @matching_item
        ]
    end

    def preview_colors
        [@red, @green, @yellow, @blue, @magenta, @cyan, @white, @gray]
    end
end

class Terminal
    def self.set_color(color, layer)
        print("\x1b[#{$layers[layer]}8;2;#{color.red};#{color.green};#{color.blue}m")
    end

    def self.reset_color(layer)
        print("\x1b[#{$layers[layer]}9m")
    end
end

class ImageMagick
    def self.create_color_image_file(color)
        size = 20
        `magick -size #{size}x#{size} xc:#{color.hex_string} #{File.join($absolute_colors_directory, color.image_file_name)}`
        puts("Created image for color \"#{color.name}\".")
    end
end

$layers = {
    :foreground => 3,
    :background => 4
}
$relative_colors_directory = File.join("assets", "images", "colors")
$absolute_colors_directory = File.join(
    File.dirname(File.dirname(File.absolute_path(__FILE__))),
    $relative_colors_directory
)
$palette = Palette.new(
    Color.new("Black", 0x030101),
    Color.new("Red", 0x991f06),
    Color.new("Green", 0x7d0800),
    Color.new("Yellow", 0xc76800),
    Color.new("Blue", 0xb08548),
    Color.new("Magenta", 0x8a3820),
    Color.new("Cyan", 0xa83e00),
    Color.new("White", 0xe8cc7d),
    Color.new("Gray", 0x695f44),
    Color.new("Alternate Background 0", 0x140707),
    Color.new("Alternate Background 1", 0x1f0a0a),
    Color.new("Selection Background", 0x571d1d),
    Color.new("Cursor Selection", 0x968451),
    Color.new("Matching Items", 0xffff00)
)
