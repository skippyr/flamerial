<h1 align="center">flamerial</h1>
<p align="center">wezterm</p>

## Install

1. Copy the theme file flamerial.toml to ~/.config/wezterm/colors:

```sh
mkdir -p ~/.config/wezterm/colors;
cp flamerial.toml ~/.config/wezterm/colors;
```

2. Apply the theme in your ~/.config/wezterm/wezterm.lua configuration file:

```lua
return {
  color_scheme = "flamerial"
}
```

3. Reopen wezterm.
