use flamerial_scripts::*;

fn main() {
    println!("<table align=\"center\">");
    println!("    <thead>");
    println!("        <tr>");
    for heading in ["Preview", "Name", "HEX", "RGB"] {
        println!("            <th>{heading}</th>");
    }
    println!("        </tr>");
    println!("    </thead>");
    println!("    <tbody>");
    for color in FLAMERIAL_PALETTE.all_colors() {
        println!("        <tr>");
        println!(
            "            <td align=\"center\"><img alt=\"\" src=\"assets/colors/{}.png\" /></td>",
            color.snake_case_name()
        );
        println!("            <td>{}</td>", color.title_case_name());
        println!("            <td><code>{}</code></td>", color.hex_string());
        println!("            <td><code>{}</code></td>", color.rgb_string());
        println!("        </tr>");
    }
    println!("    </tbody>");
    println!("</table>");
    println!(
        "<p align=\"center\"><strong>Caption:</strong> the colors that compose the theme palette.</p>"
    );
}
