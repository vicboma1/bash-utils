@echo off
for /r %%i in (*.cue) do chdman createcd -i "%%i" -o "%%~ni.chd"
echo "https://github.com/vicboma1/chdman-convert-iso-cue-to-chd-nec-turbografx-cd-for-mess"
pause
