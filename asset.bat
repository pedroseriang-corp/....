@echo off
echo Menghapus file 0 KB...
forfiles /S /M *.* /C "cmd /c if @fsize==0 del @path"

echo Menghapus folder kosong...
for /f "delims=" %%d in ('dir /ad /b /s ^| sort /r') do rd "%%d"

echo Menghapus semua file dari folder TEMP...
del /q/f/s %TEMP%\*
del /q/f/s C:\Windows\Temp\*

echo Sudah Selesai Tuan Pedro!
pause
