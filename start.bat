git pull
start /W C:\WINDOWS\system32\mspaint.exe
type "%DATE:/=-%@%TIME::=-%" > date.txt
git commit -am "%DATE:/=-%@%TIME::=-%"
