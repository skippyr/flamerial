//! ```cargo
//! [dependencies]
//! crossterm = "0.29.0"
//! heck = "0.5.0"
//! ```

#![allow(dead_code)]

include!("lib.rs");

use std::io::{self, Write as _};

fn main() {
    let mut stdout = io::stdout().lock();
    writeln!(
        stdout,
        r#"<table align="center">
  <thead>
    <tr>
      <th>Preview</th>
      <th>Name</th>
      <th>HEX</th>
      <th>RGB</th>
    </tr>
  </thead>
  <tbody>"#
    )
    .unwrap();
    for color in PALETTE.all_colors() {
        writeln!(
            stdout,
            r#"    <tr>
      <td><img alt="" src="assets/{}.png" /></td>
      <td>{}</td>
      <td><code>{}</code></td>
      <td><code>{}</code></td>
    </tr>"#,
            color.snake_case_name(),
            color.title_case_name(),
            color.hex_string(),
            color.rgb_string()
        )
        .unwrap();
    }
    writeln!(
        stdout,
        r#"  </tbody>
</table>
<p align="center"><strong>Caption:</strong> the colors that compose the theme palette.</p>"#
    )
    .unwrap();
}
