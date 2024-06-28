# Compare numbers:
```bash
#! /usr/bin/bash
if (( var == 5 && var < 4 || var == "null" )); then
do
	echo hi
else
do
	echo hi
fi
```

# Compare strings and boolean
```bash
if [ $string = "folan" ] && [ $second = "true" ] || [ ...]
then
		echo ...
else
		echo ...
fi
```

# General checkings
```bash
if [ -z "$str" ]; then
    echo "str is empty"
fi

if [ -f "file.txt" ]; then
    echo "file.txt is a regular file"
fi

if [ -e "folan" ]; then
    echo "folan is a file or directory"
fi

if [ -d "mydir" ]; then
    echo "mydir exists"
fi

if command -v mycommand &> /dev/null; then
    echo "mycommand exists"
else
    echo "mycommand does not exist"
fi

if which mycommand &> /dev/null; then
    echo "mycommand exists"
else
    echo "mycommand does not exist"
fi
```

[[More checkings]]