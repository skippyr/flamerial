<h1 align="center">≥v≥v&ensp;Flamerial&ensp;≥v≥v</h1>
<p align="center">—&ensp;dmenu&ensp;—</p>

## ❡ Install

### Procedures

- In your dmenu copy, create a copy of the `config.def.h` backup configuration file named as `config.h`:

```zsh
cp config.def.h config.h;
```

- Replace the colors in your `config.h` configuration file by the ones present in the `flamerial.h` file.
- Recompile dmenu (use `sudo` if necessary):

```zsh
sudo make install clean;
```
