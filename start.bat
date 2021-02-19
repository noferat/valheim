git pull
start /W C:\WINDOWS\system32\mspaint.exe
type %DATE > date.txt
git commit -am "%DATE:/=-%@%TIME::=-%"
