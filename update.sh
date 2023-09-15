#! /usr/bin/bash
#! /usr/bin/bash

git status -s
echo ____________________________files

read -p 'send? ' send
if [ $send == "y" ]
then
	git add .
	git commit -m "$(date +"%D %a %r")"
	{
		git push origin master && {
			echo  
			echo push successful!!
		}
	} || {
		echo  
	       echo push failed!!	
       }
fi
