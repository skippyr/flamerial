# Flamerial – Alacritty
## Install
### Procedures
- Copy `flamerial.toml` to `~/.config/alacritty/themes`:

```zsh
mkdir -p ~/.config/alacritty/themes;
cp flamerial.toml ~/.config/alacritty/themes;
```

- Import it in `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/flamerial.toml"]
```

- Restart Alacritty.
