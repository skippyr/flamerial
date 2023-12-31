# flamerial (st)

## Install

- In your st copy, create a copy of the `config.def.h` backup configuration
  file named as `config.h`:

```sh
cp config.def.h config.h
```

- Replace the colors definitions in your `config.h` configuration file by the
  ones present in the `flamerial-st.h` file:
- Recompile st (use `sudo` if necessary):

```sh
sudo make install clean
```
