@echo off


git status -s

set /p choise=push?

set _my_datetime=%date%_%time%

if %choise%==y (
git add .
git commit -m "UPDATE: %_my_datetime%"
git push origin master
color 0a
echo Push Done!!!!!
pause>nul
exit
) else (
color 04
echo Aborting.
pause>nul
exit
)