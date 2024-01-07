# flamerial (xresources)

## Install

- Copy the theme file `flamerial-xresources.xrdb` to
  `~/.config/xresources/themes`:

```sh
mkdir -p ~/.config/xresources/themes;
cp flamerial-xresources.xrdb ~/.config/xresources/themes;
```

- Merge that theme file with your current X11 configuration by using the `xrdb`
  X11 utility:

```sh
xrdb -merge ~/.config/xresources/themes/flamerial-xresources.xrdb;
```

For it to be a permanent change, add that command to your `~/.xinitrc` X11
startup file.

- Reopen your X11 applications to reload the theme.
