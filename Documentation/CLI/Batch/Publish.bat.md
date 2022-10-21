```cmd

@echo off
cd Publish
git restore .gitignore
git st

set /p choise=push?

set _my_datetime=%date%_%time%

if %choise%==y (
git ad
git commit -m "%_my_datetime% by Pooyan"
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
) else (
color 04
echo Aborting.
pause>nul
exit
)
```