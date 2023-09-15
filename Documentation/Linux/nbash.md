```cli
#! /usr/bin/bash
read -p 'new bash? ' bash
echo '#!' $(which bash) > $bash.sh
echo creating $bash...
chmod +x $bash.sh
echo making $bash.sh excutable...
kate ./$bash.sh
echo opening editor...
```