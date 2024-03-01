@echo off 

setlocal
REM usage masm.bat <filename>
set _filename=%~n1
set _extension=%~x1

REM if exist %_filename%.obj del %_filename%.obj
REM if exist %_filename%.exe del %_filename%.exe

if %errorlevel% neq 0 exit /b %errorlevel%

REM Assemble
ml /c /Zd /coff %1

if %errorlevel% neq 0 exit /b %errorlevel%

REM Link
link /SUBSYSTEM:CONSOLE %_filename%.obj

if %errorlevel% neq 0 exit /b %errorlevel%

REM Run
%_filename%.exe

endlocal  
