@echo off

git diff
echo ________________________________files
git status -s

:q
set /p a=send?  
if %a% == n (exit)

git add .
git commit -m "%date%_%time%"
git push origin master

if not %ERRORLEVEL% == 0 (
	color 04
	goto q
)

color 0a
echo done!
pause>nul
