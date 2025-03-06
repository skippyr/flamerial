# Flamerial – ST
## Install
### Procedures
- In your st copy, create a copy of `config.def.h` named as `config.h`:

```zsh
cp config.def.h config.h;
```

- Replace the colors in `config.h` by the ones in `flamerial.h`.
- Recompile st (use `sudo` if necessary):

```zsh
sudo make clean install;
```

- Restart st.
