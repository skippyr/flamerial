# flamerial (alacritty)

## Install (`< v0.13.0`)

- Copy the theme file `flamerial_alacritty.yml` to `~/.config/alacritty/themes`:

```sh
mkdir -p ~/.config/alacritty/themes;
cp flamerial_alacritty.yml ~/.config/alacritty/themes;
```

- Import that theme file in your `~/.config/alacritty/alacritty.yml`
  configuration file by adding these lines to it:

```yml
import:
  - ~/.config/alacritty/themes/flamerial_alacritty.yml
```

- Reopen `alacritty`.

## Install (`>= v0.13.0`)

- Copy the theme file `flamerial_alacritty.toml` to
  `~/.config/alacritty/themes`:

```sh
mkdir -p ~/.config/alacritty/themes;
cp flamerial_alacritty.toml ~/.config/alacritty/themes;
```

- Import that theme file in your `~/.config/alacritty/alacritty.toml`
  configuration file by adding these lines to it:

```toml
import = ["~/.config/alacritty/themes/flamerial_alacritty.toml"]
```

- Reopen `alacritty`.
