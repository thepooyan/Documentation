```bash
#! /usr/bin/bash

args=("$@")

echo ${args[0]}

echo .

echo to show all input to the file $@

echo .

echo index of input $#

read -a name        #stores the entered amoung of args in arry 'name'
```