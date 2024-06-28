## output management
```bash
git push && (
color 0a
echo Push Done!!!!!
pause>nul
exit
) || (
color 0c
pause>nul
exit
)
```

## ERRORLEVEL
```bash
if errorlevel 1 goto errorHandle //0 means no error
if %errorlevel%==1 ()
```

## parallel commands
```
start /b command1 & start  /b command2     (\b prevents opening a new window)
```
[[Publish.bat]] 