```cli
CTRL + L	clear the screen
-------------------------------
pwd
ls (-a show hidden) (-l get details)
cd Downloads/    (change directory to ...)
cd                  (go to home) (also cd ~)
**this symbol is home (~)
**ESCAPE CHARACTER: '\' this is for names with space. i\ am\ you    =   'i am you'

pushd
popd

file    what kind of file is that?

locate name /locate files (installed as mlocate for some reason)
sudo updatedb    /update locate database

which name  /to see if name is installed (terminal commands are treated as applications)

history /history of commands

whatis  /short explnation of a commands
apropos /search for commands in backwards
man     /manual for commands

mkdir   /make directory
rmdir   /remoee directory

touch a.txt /if a.txt exists, updates the file modified date, if not will create it
cp          /copy
mv          /move or rename
rm          /remove (-r recursive removes directoris too and eveyting in them!)
rm file*    /remove eveyting whoes name start with *
rmdir       /remove directoris that are empry

cat         /prints out a file
cat >file   /gets input (ctrl + d for done) to put in file. input can but some other files (cat a.txt b.txt > c.txt)
cat >>file  /gets input and ADDS it to the contents of file

less     /read files with lots of feautuers
nano    /not my fav text editor
vim     /my fav text editor

watch	/runs a command every 2 sec and updates the result (watch free -h)

```

# More:

- [[switch-case]]
- [[file premissions]] 
- [[m locate]] 
- [[Creating links]]