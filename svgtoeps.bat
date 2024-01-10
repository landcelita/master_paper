@echo off
for /f "usebackq delims=" %%a in ( `dir *.svg /b /s` ) do (
    if not exist %%a.eps (
        inkscape -p %%a -o %%a.eps
    )
)