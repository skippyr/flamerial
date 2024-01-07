# flamerial (wezterm)

# Install

- Copy the theme file `flamerial-wezterm.toml` to `~/.config/wezterm/colors`:

```sh
mkdir -p ~/.config/wezterm/colors;
cp flamerial-wezterm.toml ~/.config/wezterm/colors;
```

- Apply the theme in your `~/.config/wezterm/wezterm.lua` configuration file
  by adding these lines to it:

```lua
return {
  color_scheme = "flamerial"
}
```
