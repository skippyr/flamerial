<h1 align="center">≥v≥v&ensp;Flamerial&ensp;≥v≥v</h1>
<p align="center">—&ensp;XResources&ensp;—</p>

## ❡ Install
### Procedures
- Copy the file `flamerial.xrdb` to `~/.config/x11/themes`:
```zsh
mkdir -p ~/.config/x11/themes;
cp flamerial.xrdb ~/.config/x11/themes;
```
- Use the X11 utility `xrdb` to apply the theme:
```zsh
xrdb -merge ~/.config/x11/themes/flamerial.xrdb;
```
- Add the previous command to your `~/.xinitrc` file to always apply the theme at X11 startup.
- Reopen your X11 apps.
