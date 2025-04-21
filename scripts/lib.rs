use crossterm::style::Color as CrosstermColor;
use heck::ToTitleCase;

const PALETTE: Palette = Palette::new(&[
    Color::from_hex("black", 0x030101),
    Color::from_hex("red", 0x991f06),
    Color::from_hex("green", 0x705c06),
    Color::from_hex("yellow", 0xc76800),
    Color::from_hex("blue", 0xb08548),
    Color::from_hex("magenta", 0x8a3820),
    Color::from_hex("cyan", 0xa83e00),
    Color::from_hex("white", 0xe8cc7d),
    Color::from_hex("gray", 0x695f44),
    Color::from_hex("special", 0xffff00),
]);

#[derive(PartialEq)]
enum Layer {
    Foreground,
    Background,
}

struct Color {
    snake_case_name: &'static str,
    red: u8,
    green: u8,
    blue: u8,
}

impl Color {
    const fn from_hex(snake_case_name: &'static str, hex: u32) -> Self {
        Self {
            snake_case_name,
            red: (hex >> 16 & 0xff) as u8,
            green: (hex >> 8 & 0xff) as u8,
            blue: (hex & 0xff) as u8,
        }
    }

    fn snake_case_name(&self) -> &'static str {
        self.snake_case_name
    }

    fn title_case_name(&self) -> String {
        self.snake_case_name.to_title_case()
    }

    fn hex_string(&self) -> String {
        format!("#{:02x}{:02x}{:02x}", self.red, self.green, self.blue)
    }

    fn rgb_string(&self) -> String {
        format!("(r: {}, g: {}, b: {})", self.red, self.green, self.blue)
    }

    fn as_crossterm_color(&self) -> CrosstermColor {
        CrosstermColor::Rgb {
            r: self.red,
            g: self.green,
            b: self.blue,
        }
    }
}

struct Palette {
    colors: &'static [Color],
}

impl Palette {
    const fn new(colors: &'static [Color]) -> Self {
        Self { colors }
    }

    fn black(&self) -> &Color {
        &self.colors[0]
    }

    fn red(&self) -> &Color {
        &self.colors[1]
    }

    fn yellow(&self) -> &Color {
        &self.colors[3]
    }

    fn white(&self) -> &Color {
        &self.colors[7]
    }

    fn all_colors(&self) -> &'static [Color] {
        self.colors
    }

    fn preview_colors(&self) -> &'static [Color] {
        &self.colors[1..self.colors.len() - 1]
    }
}
