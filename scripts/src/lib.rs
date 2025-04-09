use heck::ToTitleCase;

const MAX_HEX_COLOR: u32 = 0xffffff;
pub const FLAMERIAL_PALETTE: Palette = Palette::new(
    "Flamerial",
    &[
        Color::from_hex("black", 0x030101),
        Color::from_hex("red", 0x991f06),
        Color::from_hex("green", 0x7d0800),
        Color::from_hex("yellow", 0xc76800),
        Color::from_hex("blue", 0xb08548),
        Color::from_hex("magenta", 0x8a3820),
        Color::from_hex("cyan", 0xa83e00),
        Color::from_hex("white", 0xe8cc7d),
        Color::from_hex("gray", 0x695f44),
        Color::from_hex("alternate_background_0", 0x140707),
        Color::from_hex("alternate_background_1", 0x1f0a0a),
        Color::from_hex("selection_background", 0x571d1d),
        Color::from_hex("cursor_selection", 0x968451),
        Color::from_hex("matching_items", 0xffff00),
    ],
);

#[derive(Copy, Clone, PartialEq)]
pub enum Layer {
    Foreground,
    Background,
}

pub struct Color {
    snake_case_name: &'static str,
    red: u8,
    green: u8,
    blue: u8,
}

impl Color {
    pub const fn from_hex(snake_case_name: &'static str, hex: u32) -> Self {
        let hex = if hex < MAX_HEX_COLOR {
            hex
        } else {
            MAX_HEX_COLOR
        };
        Self {
            snake_case_name,
            red: (hex >> 16 & 0xff) as u8,
            green: (hex >> 8 & 0xff) as u8,
            blue: (hex & 0xff) as u8,
        }
    }

    pub const fn snake_case_name(&self) -> &'static str {
        return self.snake_case_name;
    }

    pub fn title_case_name(&self) -> String {
        return self.snake_case_name.to_title_case();
    }

    pub fn hex_string(&self) -> String {
        format!("#{:02x}{:02x}{:02x}", self.red, self.green, self.blue)
    }

    pub fn rgb_string(&self) -> String {
        format!("(r: {}, g: {}, b: {})", self.red, self.green, self.blue)
    }

    pub const fn as_crossterm_color(&self) -> crossterm::style::Color {
        crossterm::style::Color::Rgb {
            r: self.red,
            g: self.green,
            b: self.blue,
        }
    }
}

pub struct Palette {
    name: &'static str,
    colors: &'static [Color],
}

impl Palette {
    pub const fn new(name: &'static str, colors: &'static [Color]) -> Self {
        Self { name, colors }
    }

    pub fn name(&self) -> &'static str {
        &self.name
    }

    pub const fn black(&self) -> &Color {
        &self.colors[0]
    }

    pub const fn red(&self) -> &Color {
        &self.colors[1]
    }

    pub const fn yellow(&self) -> &Color {
        &self.colors[3]
    }

    pub const fn white(&self) -> &Color {
        &self.colors[7]
    }

    pub const fn preview_colors(&self) -> [&Color; 8] {
        [
            &self.colors[1],
            &self.colors[2],
            &self.colors[3],
            &self.colors[4],
            &self.colors[5],
            &self.colors[6],
            &self.colors[7],
            &self.colors[8],
        ]
    }

    pub const fn all_colors(&self) -> [&Color; 13] {
        [
            &self.colors[1],
            &self.colors[2],
            &self.colors[3],
            &self.colors[4],
            &self.colors[5],
            &self.colors[6],
            &self.colors[7],
            &self.colors[8],
            &self.colors[9],
            &self.colors[10],
            &self.colors[11],
            &self.colors[12],
            &self.colors[13],
        ]
    }
}
