## Installation

-   Copy the file `flamerial.yml` to `~/.config/alacritty/themes`.

```bash
mkdir -p ~/.config/alacritty/themes
cp flamerial.yml ~/.config/alacritty/themes
```

-   Add the following import rule in the `~/.config/alacritty/alacritty.yml`
    file. Ensure that you are not importing any other theme to not cause
    conflicts.

```bash
import:
  -  ~/.config/alacritty/themes/flamerial.yml
```

> **Note**
>
> This file must be indented with 2 spaces.

-   Reopen Alacritty to load the theme.
