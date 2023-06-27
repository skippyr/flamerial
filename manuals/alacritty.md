# Alacritty

- Copy the file `flamerial.yml` to `~/.config/alacritty`.

```bash
mkdir -p ~/.config/alacritty
cp flamerial.yml ~/.config/alacritty
```

- Import the theme in the `~/.config/alacritty.yml` by using the following
  snippet:

```bash
import:
  - ~/.config/alacritty/flamerial.yml
```

Pay attention about the indentation: that file must be indented using two
spaces otherwise its contents will not be recognized.

- Reopen Alacritty to reload its configuration file.
