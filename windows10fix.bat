@echo off
REM setlocal EnableExtensions
REM 
REM :: BatchGotAdmin
REM :-------------------------------------
REM  --> Check for permissions
REM     IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
REM >nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
REM ) ELSE (
REM >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM )
REM 
REM --> If error flag set, we do not have admin.
REM if '%errorlevel%' NEQ '0' (
REM     echo Requesting administrative privileges...
REM     goto UACPrompt
REM ) else ( goto gotAdmin )
REM 
REM :UACPrompt
REM     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
REM     set params= %*
REM     echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"
REM 
REM     "%temp%\getadmin.vbs"
REM     del "%temp%\getadmin.vbs"
REM     exit /B
REM 
REM :gotAdmin
REM     pushd "%CD%"
REM     CD /D "%~dp0"
REM :--------------------------------------

REM :: Customize Window
REM title Install Mobiclip Tool Error Fix
REM 
REM :: Menu Options
REM :: Specify as many as you want, but they must be sequential from 1 with no gaps
REM :: Step 1. List the Application Names
REM set "App[1]=Install"
REM set "App[2]=Uninstall"
REM 
REM :: Display the Menu
REM set "Message="
REM :Menu
REM cls
REM echo.%Message%
REM echo.
REM echo.  Install Mobiclip Tool Error Fix
REM echo.
REM set "x=0"
REM :MenuLoop
REM set /a "x+=1"
REM if defined App[%x%] (
REM     call echo   %x%. %%App[%x%]%%
REM     goto MenuLoop
REM )
REM echo.
REM 
REM :: Prompt User for Choice
REM :Prompt
REM set "Input="
REM set /p "Input=Select option:"
REM 
REM :: Validate Input [Remove Special Characters]
REM if not defined Input goto Prompt
REM set "Input=%Input:"=%"
REM set "Input=%Input:^=%"
REM set "Input=%Input:<=%"
REM set "Input=%Input:>=%"
REM set "Input=%Input:&=%"
REM set "Input=%Input:|=%"
REM set "Input=%Input:(=%"
REM set "Input=%Input:)=%"
REM :: Equals are not allowed in variable names
REM set "Input=%Input:^==%"
REM call :Validate %Input%
REM 
REM :: Process Input
REM call :Process %Input%
REM goto End
REM 
REM 
REM :Validate
REM set "Next=%2"
REM if not defined App[%1] (
REM     set "Message=Invalid Input: %1"
REM     goto Menu
REM )
REM if defined Next shift & goto Validate
REM goto :eof
REM 
REM 
REM :Process
REM set "Next=%2"
REM call set "App=%%App[%1]%%"
REM 
REM :: Run Installations
REM :: Specify all of the installations for each app.
REM :: Step 2. Match on the application names and perform the installation for each
REM if "%App%" EQU "Install" sdbinst -p "mct.sdb"
REM if "%App%" EQU "Uninstall" sdbinst -n "Mobiclip Tool"
REM 
mkdir C:\Mobiclip\
xcopy "%~dp0\mct.sdb" C:\Mobiclip\
sdbinst -p "C:\Mobiclip\mct.sdb"
echo Finished.
REM endlocal
REM pause
exit