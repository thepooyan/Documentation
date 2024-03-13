1. copy all font files to a new sub directory under `/usr/share/fonts/`
```bash
sudo mkdir /usr/share/fonts/fira-code
sudo mv *.ttf /usr/share/fonts/fira-code/
```

2. refresh the font cache
```bash
sudo fc-cache -f -v
```

3. confirm 
```bash
fc-list | grep "Fira"
```