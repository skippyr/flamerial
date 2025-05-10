//! ```cargo
//! [dependencies]
//! anyhow = "1.0.98"
//! crossterm = "0.29.0"
//! heck = "0.5.0"
//! magick_rust = "1.0.0"
//! ```

#![allow(dead_code)]

use anyhow::Result;
use magick_rust::{magick_wand_genesis, magick_wand_terminus, MagickWand, PixelWand};
use std::io::{self, Write as _};
use std::path::PathBuf;

include!("lib.rs");

fn main() -> Result<()> {
    const SIZE: usize = 20;
    let assets_directory = PathBuf::from(file!())
        .ancestors()
        .nth(2)
        .unwrap()
        .join("assets");
    let mut stdout = io::stdout().lock();
    magick_wand_genesis();
    for color in PALETTE.all_colors() {
        let hex_string = color.hex_string();
        let magick_wand = MagickWand::new();
        let mut pixel_wand = PixelWand::new();
        let image_file = assets_directory.join(format!("{}.png", color.snake_case_name()));
        pixel_wand.set_color(&hex_string)?;
        magick_wand.new_image(SIZE, SIZE, &pixel_wand)?;
        magick_wand.write_image(image_file.to_str().unwrap())?;
        writeln!(
            stdout,
            "Created image {} ({hex_string}).",
            image_file.display()
        )
        .unwrap();
    }
    magick_wand_terminus();
    Ok(())
}
