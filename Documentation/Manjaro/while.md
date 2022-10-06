```cli
#! /usr/bin/bash
number=1
while [ $number -lt 10 ]
do
    echo $number
    number=$((number + 1))
done

# "OR
# until [ cond ]"

for i in 1 2 3 4 5
do
    echo $i
done

for i in {1..10..3}
do
    echo $i
done

for ((i=0; i<10; i++))
do
    break
done
#continue to break the loop and go back to THE START!

```