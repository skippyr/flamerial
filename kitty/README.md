## Installation

-   Copy the file `flamerial.conf` to `~/.config/kitty/themes`.

```bash
mkdir -p ~/.config/kitty/themes
cp flamerial.conf ~/.config/kitty/themes
```

-   Add the following include rule in the `~/.config/kitty/kitty.conf`. Ensure
    that you are not including any other theme to not cause conflicts.

```bash
include themes/flamerial.conf
```

-   Reopen Kitty to load the theme.
