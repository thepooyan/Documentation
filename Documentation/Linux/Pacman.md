[[Mirror download update]]
```cli
sudo pacman -S (sync)
sudo pacman -Sy compare with remote
sudo pacman -Su install what you have compared
sudo pacman -Syu full update
sudo pacman -Syy    update pcaman database
pacman -Sii     info about a package


sudo pacman -Ss search

sudo pacman -R Remove
sudo pacman -Rs Remove with dependencies
sudo pacman -Rn Remove with system config files

pacman -Q list installed packages
pacman -Qm list all AUR packages (and n for normal ones)
(lower case q used for showing only the name in the output)
pacman -Qi  info about installed package


pacman -Qdt show orphan packages
pacman -Sc  remove obsolite packages
sudo pacman -R $(pacman -Qdtq)
```