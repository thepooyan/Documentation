reference: Bash scripting / [[If statements]]

```bash
if [ -r "file.txt" ]; then
    echo "file.txt is readable"
else
    echo "file.txt is not readable"
fi
if [ -w "file.txt" ]; then
    echo "file.txt is writable"
else
    echo "file.txt is not writable"
fi
if [ -x "file.txt" ]; then
    echo "file.txt is executable"
else
    echo "file.txt is not executable"
fi
if [ -L "symlink" ]; then
    echo "symlink is a symbolic link"
else
    echo "symlink is not a symbolic link"
fi
if [ -s "file.txt" ]; then
    echo "file.txt has a size greater than zero"
else
    echo "file.txt is empty"
fi
if ps -p $PID > /dev/null; then
    echo "Process $PID is running"
else
    echo "Process $PID is not running"
fi
if id "username" &>/dev/null; then
    echo "User username exists"
else
    echo "User username does not exist"
fi
if [ -n "${VAR}" ]; then
    echo "VAR is set to '$VAR'"
else
    echo "VAR is not set"
fi
```