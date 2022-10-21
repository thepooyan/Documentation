## output management
```cli
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
```cli
if errorlevel 1 goto errorHandle //0 means no error
if %errorlevel%==1 ()
```

[[Publish.bat]] 