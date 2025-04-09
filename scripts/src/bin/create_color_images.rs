use anyhow::Result;
use flamerial_scripts::FLAMERIAL_PALETTE;
use magick_rust::{MagickWand, PixelWand, magick_wand_genesis, magick_wand_terminus};
use std::{
    env::current_exe,
    fs::{create_dir_all, remove_dir_all},
};

const SIZE: usize = 20;

fn main() -> Result<()> {
    let colors_directory = current_exe()
        .unwrap()
        .ancestors()
        .nth(4)
        .unwrap()
        .join("assets")
        .join("colors");
    magick_wand_genesis();
    if colors_directory.exists() {
        remove_dir_all(&colors_directory)?;
    }
    create_dir_all(&colors_directory)?;
    println!(
        "{} directory {}.",
        if colors_directory.exists() {
            "Recreated"
        } else {
            "Created"
        },
        colors_directory.display()
    );
    for color in FLAMERIAL_PALETTE.all_colors() {
        let magick_wand = MagickWand::new();
        let mut pixel_wand = PixelWand::new();
        let image_file = colors_directory.join(format!("{}.png", color.snake_case_name()));
        pixel_wand.set_color(&color.hex_string())?;
        magick_wand.new_image(SIZE, SIZE, &pixel_wand)?;
        magick_wand.write_image(image_file.to_str().unwrap())?;
        println!("Created image {}.", image_file.display());
    }
    magick_wand_terminus();
    Ok(())
}
