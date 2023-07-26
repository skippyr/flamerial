## Installation

-   Copy the file `flamerial.toml` to `~/.config/wezterm/colors`.

```bash
mkdir -p ~/.config/wezterm/colors
cp flamerial.toml ~/.config/wezterm/colors
```

-   Add the following key to either the file `~/.wezterm.lua` or
    `~/.config/wezterm/wezterm.lua` inside of the return of the Lua table.

```bash
color_scheme = "Flamerial"
```
