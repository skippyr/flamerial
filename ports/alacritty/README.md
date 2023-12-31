# flamerial (alacritty)

## Notes

alacritty has changed its configuration file and syntax on version `0.13.0` to
use TOML instead of YAML. This documentation will describe the installation for
both versions before and after that reference.

You can check your alacritty version by running:

```sh
alacritty --version
```

## Install (version `< 0.13.0`)

- Copy the theme file `flamerial-alacritty.yml` to `~/.config/alacritty/themes`:

```sh
mkdir -p ~/.config/alacritty/themes
cp flamerial-alacritty.yml ~/.config/alacritty/themes
```

- Import that theme file in your `~/.config/alacritty/alacritty.yml`
  configuration file by adding these lines to it:

```yml
import:
  - ~/.config/alacritty/themes/flamerial-alacritty.yml
```

- Reopen alacritty.

## Install (version `>= 0.13.0`)

- Copy the theme file `flamerial-alacritty.toml` to
  `~/.config/alacritty/themes`:

```sh
mkdir -p ~/.config/alacritty/themes
cp flamerial-alacritty.toml ~/.config/alacritty/themes
```

- Import that theme file in your `~/.config/alacritty/alacritty.toml`
  configuration file by adding these lines to it:

```toml
import = ["~/.config/alacritty/themes/flamerial-alacritty.toml"]
```

- Reopen alacritty.
