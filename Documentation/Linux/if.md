```cli
#! /usr/bin/bash

var=10

if (( $var == 5 ))
then
	do
else
	do
fi

--	if (( ? >= ? ))
	&&	AND
	||	OR


if (( 5 == 5 ))
then
	do
elif (( 4 == 4 ))
then
	do

--------------------------------

compelete:

count=10
:'
-eq		equal
-ne		not equal
-gt		greateer than
-lt		less than
-le		less or equal

OR		if (( $count <= 10 ))
'

if [ $count -eq 10 ]
then
		echo 'it is 10'
else
		echo 'its not 10'
fi

:"Nested if
if [ $count -eq 10 ]
then
		echo 'it is 10'
elif ((10 = 10))
then
		echo 'its not 10'
else
		echo 'else else'
fi
"

:'AND / OR
if [[cond && cond]] (or ||)
if [cond -a cond] (or -o)
then...
```