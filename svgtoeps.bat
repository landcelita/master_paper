@echo off
dir *.svg /b /s > filelist.txt
for /f %%a in ( filelist.txt ) do (
    if exist "%%a.eps" (
        continue
    )
    inkscape -p %%a -o %%a.eps
)
del filelist.txt