<p align="center">
  <img alt="" src="../../assets/images/ornament.png" width=1020 />
</p>
<h1 align="center">≥v≥v&ensp;Flamerial&ensp;≥v≥v</h1>
<p align="center">— Wezterm —</p>

## ❡ Install
- Copy `flamerial.toml` to `~/.config/wezterm/colors`:

```zsh
mkdir -p ~/.config/wezterm/colors;
cp flamerial.toml ~/.config/wezterm/colors;
```

- Import it in `~/.config/wezterm/wezterm.lua`:

```lua
return {
  color_scheme = 'Flamerial'
}
```

- Reload Wezterm.
