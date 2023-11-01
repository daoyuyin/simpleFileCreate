@echo off
echo aaa > %systemroot%\system32\a.txt
dir %systemroot%\system32\a.txt
start "" EXPLORER.EXE /n,/select,"%systemroot%\system32\a.txt"
pause