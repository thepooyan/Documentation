```cli
#! /usr/bin/bash

ls -al > a.txt  #if command is successfull result will get redirected
ls -al 1>a.txt 2>b.txt  #error will be in b and success will in a

ls -al > a.txt 2>&1 #will redirect both outcomes to the same file
ls -al >& a.txt     #will do the above task
```