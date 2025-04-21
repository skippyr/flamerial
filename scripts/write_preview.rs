//! ```cargo
//! [dependencies]
//! anyhow = "1.0.98"
//! crossterm = "0.29.0"
//! heck = "0.5.0"
//! ```

use anyhow::Result;
use crossterm::{
    execute,
    style::{Print, ResetColor, SetBackgroundColor, SetForegroundColor},
};
use std::io::{stdout, Stdout};

include!("lib.rs");

fn write_blank_spacing(stdout: &mut Stdout) -> Result<()> {
    for _ in 0..2 {
        execute!(
            stdout,
            SetBackgroundColor(PALETTE.black().as_crossterm_color()),
        )?;
        for _ in 0..42 {
            execute!(stdout, Print(" "))?;
        }
        execute!(stdout, ResetColor, Print("\n"))?;
    }
    Ok(())
}

fn write_tribal_decoration(stdout: &mut Stdout, length: usize) -> Result<()> {
    for column in 0..length {
        let is_even = column % 2 == 0;
        execute!(
            stdout,
            SetForegroundColor(
                if is_even {
                    PALETTE.yellow()
                } else {
                    PALETTE.red()
                }
                .as_crossterm_color()
            ),
            Print(if is_even { "≥" } else { "v" })
        )?;
    }
    Ok(())
}

fn write_header(stdout: &mut Stdout) -> Result<()> {
    execute!(
        stdout,
        SetBackgroundColor(PALETTE.black().as_crossterm_color()),
        Print("     ")
    )?;
    write_tribal_decoration(stdout, 10)?;
    execute!(
        stdout,
        SetForegroundColor(PALETTE.white().as_crossterm_color()),
        Print(" Flamerial ")
    )?;
    write_tribal_decoration(stdout, 11)?;
    execute!(stdout, Print("     "), ResetColor, Print("\n"))?;
    Ok(())
}

fn write_palette(stdout: &mut Stdout, layer: Layer) -> Result<()> {
    execute!(
        stdout,
        SetBackgroundColor(PALETTE.black().as_crossterm_color()),
        SetForegroundColor(PALETTE.white().as_crossterm_color()),
        Print(format!(
            "     {} ",
            if layer == Layer::Background {
                "¦/:"
            } else {
                "¦\\:"
            }
        ))
    )?;
    for color in PALETTE.preview_colors() {
        if layer == Layer::Background {
            execute!(
                stdout,
                SetBackgroundColor(color.as_crossterm_color()),
                Print("   ")
            )?;
        } else {
            execute!(
                stdout,
                SetForegroundColor(color.as_crossterm_color()),
                Print("Fla")
            )?;
        }
    }
    execute!(
        stdout,
        SetBackgroundColor(PALETTE.black().as_crossterm_color()),
        SetForegroundColor(PALETTE.white().as_crossterm_color()),
        Print(format!(
            " {}     ",
            if layer == Layer::Background {
                ":\\¦"
            } else {
                ":/¦"
            }
        )),
        ResetColor,
        Print("\n")
    )?;
    Ok(())
}

fn write_footer(stdout: &mut Stdout) -> Result<()> {
    execute!(
        stdout,
        SetBackgroundColor(PALETTE.black().as_crossterm_color()),
        Print("     ")
    )?;
    write_tribal_decoration(stdout, 32)?;
    execute!(stdout, Print("     "), ResetColor, Print("\n"))?;
    Ok(())
}

fn main() -> Result<()> {
    let mut stdout = stdout();
    write_blank_spacing(&mut stdout)?;
    write_header(&mut stdout)?;
    write_palette(&mut stdout, Layer::Background)?;
    write_palette(&mut stdout, Layer::Foreground)?;
    write_footer(&mut stdout)?;
    write_blank_spacing(&mut stdout)?;
    Ok(())
}
