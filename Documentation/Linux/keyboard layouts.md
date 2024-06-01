```
setxkbmap -layout us,ir
setxkbmap -option 'grp:alt_shift_toggle'
setxkbmap -option 'grp:ctrl_alt_toggle'

# for i3
exec "setxkbmap -layout us,ir"
exec "setxkbmap -option 'grp:alt_shift_toggle'"
```

Query:
```
setxkbmap -query
```

List All Available Layouts:
```bash
localectl list-x11-keymap-layouts
```

List Variants for the Persian Layout:
```bash
localectl list-x11-keymap-variants ir
```

# OR
```
cd /usr/share/X11/xkb/symbols
ls
```
files correlate to different keyboard maps
