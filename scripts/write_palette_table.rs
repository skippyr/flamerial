//! ```cargo
//! [dependencies]
//! crossterm = "0.29.0"
//! heck = "0.5.0"
//! ```

#![allow(dead_code)]

include!("lib.rs");

fn main() {
    println!(r#"<table align="center">"#);
    println!("  <thead>");
    println!("    <tr>");
    println!("      <th>Preview</th>");
    println!("      <th>Name</th>");
    println!("      <th>HEX</th>");
    println!("      <th>RGB</th>");
    println!("    </tr>");
    println!("  </thead>");
    println!("  <tbody>");
    for color in PALETTE.all_colors() {
        println!("    <tr>");
        println!(
            r#"      <td><img alt="" src="assets/{}.png" /></td>"#,
            color.snake_case_name()
        );
        println!("      <td>{}</td>", color.title_case_name());
        println!("      <td><code>{}</code></td>", color.hex_string());
        println!("      <td><code>{}</code></td>", color.rgb_string());
        println!("    </tr>");
    }
    println!("  </tbody>");
    println!("</table>");
    println!(
        r#"<p align="center"><strong>Caption:</strong> the colors that compose the theme palette.</p>"#
    );
}
