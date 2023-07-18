## Installation

-	Use `xrdb` to merge the configuration that is inside the file
	`flamerial.xrdb`.

```bash
xrdb -merge flamerial.xrdb
```
To make your changes persistent through sessions, add the execution command
in a script that is executed every time you enter the X11 graphical
environment. Remember to use the full path to the script.
