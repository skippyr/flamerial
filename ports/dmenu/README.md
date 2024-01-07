# flamerial (dmenu)

## Install

- In your dmenu copy, create a copy of the `config.def.h` backup configuration
  file named as `config.h`:

```sh
cp config.def.h config.h;
```

- Replace the colors definitions in your `config.h` configuration file by the
  ones present in the `flamerial-dmenu.h` file.
- Recompile dmenu (use `sudo` if necessary):

```sh
sudo make install clean;
```
