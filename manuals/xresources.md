# Xresources

- Use `xrdb` to merge the file `flamerial.xrdb`.

```bash
xrdb -merge flamerial.xrdb
```

If you want to make these changes persist in other sessions, add that command
replacing the file name by its absolute path to a startup script, such as:
`~/.xinitrc`.
