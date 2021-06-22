@echo off
for /D %%A in (*) do 7z.exe a "%%~fA.7z" "%%~fA" -mx=9
