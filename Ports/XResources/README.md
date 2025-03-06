# Flamerial – XResources
## Install
### Procedures
- Copy `flamerial.xrdb` to `~/.config/x11/themes`:

```zsh
mkdir -p ~/.config/x11/themes;
cp flamerial.xrdb ~/.config/x11/themes;
```

- Use the X11 utility `xrdb` in `~/.xinitrc` to apply the theme:

```zsh
xrdb -merge ~/.config/x11/themes/flamerial.xrdb;
```

- Restart X11.
