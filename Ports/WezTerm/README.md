# Flamerial – WezTerm
## Install
### Procedures
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

- Restart Wezterm.
