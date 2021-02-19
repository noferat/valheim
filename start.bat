rem Insert your specifics here
set world_name=Jebsworld
set save_folder=%USERPROFILE%\AppData\LocalLow\IronGate\Valheim\worlds

rem Get the newest world from git
git pull

rem Replace the world currently saved
@echo Copying files...
copy %World_name%.db %save_folder%\%world_name%.db
copy %World_name%.fwl %save_folder%\%world_name%.fwl

rem Start the game
start /b /W steam://rungameid/892970

rem Repeatedly check for game to stop
@echo off
:wait
timeout 5 >nul
tasklist | findstr /i /L "valheim.exe" > nul
if not errorlevel 1 goto wait
:QUIT

@echo on
@echo Saving files...
copy %save_folder%\%world_name%.db %World_name%.db 
copy %save_folder%\%world_name%.fwl %World_name%.fwl 

git add %world_name%.db
git add %world_name%.fwl

git commit -am "%DATE:/=-%@%TIME::=-%"
git push