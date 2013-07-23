@echo off
setlocal
set FILE_NAME=%1
if .%FILE_NAME%. == .. set FILE_NAME=a
::echo %FILE_NAME%
pdflatex -shell-escape %FILE_NAME%.tex
endlocal