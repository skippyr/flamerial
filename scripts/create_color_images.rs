//! ```cargo
//! [dependencies]
//! anyhow = "1.0.98"
//! crossterm = "0.29.0"
//! heck = "0.5.0"
//! magick_rust = "1.0.0"
//! ```

use anyhow::Result;
use magick_rust::{magick_wand_genesis, magick_wand_terminus, MagickWand, PixelWand};
use std::path::PathBuf;

include!("lib.rs");

const SIZE: usize = 20;

fn main() -> Result<()> {
    let assets_directory = PathBuf::from(file!())
        .ancestors()
        .nth(2)
        .unwrap()
        .join("assets");
    magick_wand_genesis();
    println!(
        "{} directory {}.",
        if assets_directory.exists() {
            "Recreated"
        } else {
            "Created"
        },
        assets_directory.display()
    );
    for color in PALETTE.all_colors() {
        let magick_wand = MagickWand::new();
        let mut pixel_wand = PixelWand::new();
        let image_file = assets_directory.join(format!("{}.png", color.snake_case_name()));
        pixel_wand.set_color(&color.hex_string())?;
        magick_wand.new_image(SIZE, SIZE, &pixel_wand)?;
        magick_wand.write_image(image_file.to_str().unwrap())?;
        println!("Created image {}.", image_file.display());
    }
    magick_wand_terminus();
    Ok(())
}
