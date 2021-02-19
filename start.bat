git pull
rem start /W C:\WINDOWS\system32\mspaint.exe

start /b /W steam://rungameid/892970

:wait
timeout 5 >nul
tasklist | findstr /i /L "valheim.exe" > nul
if not errorlevel 1 goto wait
:QUIT

git commit -am "%DATE:/=-%@%TIME::=-%"
git push