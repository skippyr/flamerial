<h1 align="center">flamerial</h1>
<p align="center">dmenu</p>

## Install

1. In your dmenu copy, create a copy of the config.def.h file named as config.h:

```sh
cp config.def.h config.h;
```

2. Replace the color definitions in your config.h configuration file by the
   ones defined in the flamerial.h theme file.
3. Recompile dmenu:

```sh
sudo make install clean;
```
