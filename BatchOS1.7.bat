@echo off
setlocal enabledelayedexpansion
color 06
:kernel
color 06
mkdir BatchOSDir
cls
echo Set RetroMode=0 >> BatchOSDir/settings.ini
cls
title BatchOSKernel
echo BatchOSKernel Loading...
echo.
timeout 2 > nul
echo BatchOSKernel Loaded
powershell -Command "[console]::beep(999,999)"
timeout 2 > nul 
mkdir BatchOSDir
cls

:bootloader
mkdir BatchOSDir
cls
echo.
echo l---l                                           ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.7
echo.
echo.
echo 1. Start BatchOS
echo 2. Advanced Options
echo 3. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" goto loadBatchOS
if "%choice%"=="2" goto advancedOptions
if "%choice%"=="3" goto exit 

    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :bootloader

:loadBatchOS
cls
echo Loading BatchOS...
timeout /t 2 >nul
goto powersection

:advancedOptions
cls
echo Advanced Options
echo.
echo 1. Reconfigure Settings
echo 2. Run Diagnostics
echo 3. Back to BatchOSKernel
echo 4. Reset (Deletes the BatchOSDir Folder)

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :reconfigureSettings
) else if "%choice%"=="2" (
    call :runDiagnostics
) else if "%choice%"=="3" (
goto :bootloader
) else if "%choice%"=="4" (
goto  :Reset
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :advancedOptions
)

:reconfigureSettings
cls
title BatchOS Configuration Utility

echo Welcome to BatchOS Configuration Utility!
echo --------------------------------------

setlocal enabledelayedexpansion

echo Configuring settings...

echo 10 percent
timeout 1 > nul
echo 20 percent
timeout 1 > nul
echo 25 percent
timeout 1 > nul
echo 35 percent
timeout 1 > nul
echo 50 percent
timeout 1 > nul
echo 67 percent
timeout 1 > nul
echo 87 percent
timeout 1 > nul
echo 100 percent!
timeout 1 > nul
cls

echo Welcome to BatchOS Configuration Utility!
echo --------------------------------------


echo Adjusting color scheme...
color 0a
timeout /t 1 > nul

echo Enabling retro mode...
echo Set RetroMode=1 >> BatchOSDir/settings.ini
timeout /t 1 > nul

echo Optimizing user experience...
timeout /t 2 > nul

echo Updating Batch drivers...
echo Installing Driver: GraphicsDriver64_v42.0
echo Installing Driver: SoundBlaster_XYZ
timeout /t 2 > nul

echo Applying quantum settings...
echo Quantum settings applied successfully.
timeout /t 1 > nul

echo Configuration complete!
echo --------------------------------------

endlocal
goto :advancedOptions

:reconfigureSettingsBATCHOSMAIN
cls
title BatchOS Configuration Utility

echo Welcome to BatchOS Configuration Utility!
echo --------------------------------------

setlocal enabledelayedexpansion

echo Configuring settings...

echo 10 percent
timeout 1 > nul
echo 20 percent
timeout 1 > nul
echo 25 percent
timeout 1 > nul
echo 35 percent
timeout 1 > nul
echo 50 percent
timeout 1 > nul
echo 67 percent
timeout 1 > nul
echo 87 percent
timeout 1 > nul
echo 100 percent!
timeout 1 > nul
cls

echo Welcome to BatchOS Configuration Utility!
echo --------------------------------------


echo Adjusting color scheme...
color 0a
timeout /t 1 > nul

echo Enabling retro mode...
echo Set RetroMode=1 >> BatchOSDir/settings.ini
timeout /t 1 > nul

echo Optimizing user experience...
timeout /t 2 > nul

echo Updating Batch drivers...
echo Installing Driver: GraphicsDriver64_v42.0
echo Installing Driver: SoundBlaster_XYZ
timeout /t 2 > nul

echo Applying quantum settings...
echo Quantum settings applied successfully.
timeout /t 1 > nul

echo Configuration complete!
echo --------------------------------------

endlocal
goto :settings

:runDiagnostics
cls
echo Running Diagnostics
systeminfo
timeout /t 2 >nul
echo Diagnostics complete.
timeout /t 2 >nul
goto :advancedOptions

:runDiagnosticsBATCHOSMAIN
cls
echo Running Diagnostics
systeminfo
timeout /t 2 >nul
echo Diagnostics complete.
timeout /t 2 >nul
goto :Settings
:Reset
cls
rd /s /q "BatchOSDir"
goto :advancedOptions

:ResetBATCHOSMAIN
cls
rd /s /q "BatchOSDir"
goto :Settings

:powersection
title BatchOSServiceLoader
timeout 1 > nul
cls
echo.
echo BatchOS Loaded
color 06
timeout 1 > nul
:main
title BatchOS
cls
echo Set RetroMode=0 >> BatchOSDir/settings.ini
cls
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.7
echo.
echo    ====================================
echo          Press "R or r" For Help     
echo    ====================================
echo.
echo 1. List Files and Operations
echo 2. Display Date and Time
echo 3. Power Off
echo 4. BatchOSDir
echo 5. Command list
echo 6. Restart
echo 7. Website
echo 8. Settings

set /p choice=Enter your choice: 

if "%choice%"=="1" goto list_files
if "%choice%"=="2" goto display_datetime
if "%choice%"=="3" goto exit
if "%choice%"=="4" goto CreateDIR
if "%choice%"=="5" goto Commands
if "%choice%"=="6" goto kernel
if "%choice%"=="7" goto website
if "%choice%"=="8" goto Settings
if "%choice%"=="R" goto Help
if "%choice%"=="r" goto Help

echo Invalid choice. Please try again.
timeout 2 > nul
goto main

:Settings
cls
echo Settings
echo.
echo 1. Reconfigure Settings
echo 2. Run Diagnostics
echo 3. Back to BatchOS
echo 4. Reset (Deletes the BatchOSDir Folder)

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :reconfigureSettingsBATCHOSMAIN
) else if "%choice%"=="2" (
    call :runDiagnosticsBATCHOSMAIN
) else if "%choice%"=="3" (
goto :main
) else if "%choice%"=="4" (
goto  :ResetBATCHOSMAIN
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :advancedOptions
)

:list_files
cls
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.0
echo.
echo.
echo 1. List Files
echo 2. Delete File
echo 3. Copy File
echo 4. Move File
echo 5. Paste File
echo 6. Hide/Unhide File
echo 7. Back
echo.

set /p opchoice=Enter your choice: 

if "%opchoice%"=="1" goto list_files_list
if "%opchoice%"=="2" goto delete_file
if "%opchoice%"=="3" goto copy_file
if "%opchoice%"=="4" goto move_file
if "%opchoice%"=="5" goto paste_file
if "%opchoice%"=="6" goto hide_unhide_file
if "%opchoice%"=="7" goto main

echo Invalid choice. Please try again.
timeout 2 > nul
goto list_files

:list_files_list
cls
echo Listing Files:
dir
pause
goto list_files

:display_datetime
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.0
echo.
cls
echo Date and Time:
echo %date% %time%
pause
goto main

:delete_file
cls
echo Delete File:
set /p filename=Enter the file name to delete: 
if exist "%filename%" (
    del "%filename%"
    echo File deleted successfully.
) else (
    echo File not found.
)
pause
goto list_files

:copy_file
cls
echo Copy File:
set /p source=Enter the source file: 
set /p destination=Enter the destination: 
if exist "%source%" (
    copy "%source%" "%destination%"
    echo File copied successfully.
) else (
    echo Source file not found.
)
pause
goto list_files

:move_file
cls
echo Move File:
set /p source=Enter the source file: 
set /p destination=Enter the destination: 
if exist "%source%" (
    move "%source%" "%destination%"
    echo File moved successfully.
) else (
    echo Source file not found.
)
pause
goto list_files

:paste_file
cls
echo Paste File:
set /p source=Enter the source file: 
set /p destination=Enter the destination: 
if exist "%source%" (
    copy "%source%" "%destination%"
    echo File pasted successfully.
) else (
    echo Source file not found.
)
pause
goto list_files

:hide_unhide_file
cls
echo Hide/Unhide File:
set /p filename=Enter the file name: 
if exist "%filename%" (
    attrib "%filename%" +h
    echo File hidden/unhidden successfully.
) else (
    echo File not found.
)
pause
goto list_files

:exit
echo.
cls
echo.
echo.
echo.
echo          Power Off
timeout 1 > nul
exit

:CreateDir
set "BatchOSDir=BatchOSDir"
cls
echo l---l                                           ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.0
echo.
echo.
echo 1. Create File
echo 2. List Files
echo 3. Edit File
echo 4. Exit
set /p choice=Enter your choice: 

if "%choice%"=="1" goto createFile
if "%choice%"=="2" goto listFiles
if "%choice%"=="3" goto editFile
if "%choice%"=="4" goto exit

:createFile
cls
set /p filename=Enter file name (include extension): 
echo. > "%BatchOSDir%\%filename%"
echo File created: %filename%
pause
goto CreateDir

:listFiles
cls
echo List of files in %BatchOSDir%:
dir /b "%BatchOSDir%"
pause
goto CreateDir

:editFile
cls
set /p filename=Enter file name to edit (include extension): 
if exist "%BatchOSDir%\%filename%" (
    notepad "%BatchOSDir%\%filename%"
) else (
    echo File not found.
    pause
)
goto CreateDir

:exit
goto main

:Commands
cls
echo 1. Calculator
echo 2. Exit
echo 3. Color

set /p choice=Enter your choice: 


if "%choice%"=="1" goto calcmenu
if "%choice%"=="2" goto main
if "%choice%"=="3" goto color

:calcmenu
cls
echo =======================
echo       CALCULATOR
echo =======================
echo Which Type of sum do you wish to use
echo =======================
echo 1. +
echo 2. -
echo 3. X
echo 4. /
echo 5.Menu
set /p type=
if %type%==1 goto calcplus
if %type%==2 goto calcminus
if %type%==3 goto calctimes
if %type%==4 goto calcdivide
if %type%==5 goto Commands
cls
echo Option invalid
pause
goto calcmenu

:calcplus
cls
echo =======================
echo     + CALCULATOR +
echo =======================
echo.
echo Please choose the 2 numbers you wish to add
set /p num1=
set /p num2=
echo %num1%+%num2%?
set /a Answer=%num1%+%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcminus
cls
echo =======================
echo     - CALCULATOR -
echo =======================
echo.
echo Please choose the 2 numbers you wish to subtract
set /p num1=
set /p num2=
echo %num1%-%num2%?
set /a Answer=%num1%-%num2%
echo %Answer%
pause
cls
goto calcmenu
:calctimes
cls
echo =======================
echo     x CALCULATOR x
echo =======================
echo.
echo Please choose the 2 numbers you wish to multiply
set /p num1=
set /p num2=
echo %num1%*%num2%?
set /a Answer=%num1%*%num2%
echo %Answer%
pause
cls
goto calcmenu
:calcdivide
cls
echo =======================
echo     \ CALCULATOR /
echo =======================
echo.
echo Please choose the 2 numbers you wish to divide
set /p num1=
set /p num2=
echo %num1%/%num2%?
set /a Answer=%num1%/%num2%
echo %Answer%
pause
cls
goto calcmenu

:color
cls
echo Color Changer Menu
echo.
echo 1. Red
echo 2. Green
echo 3. Blue
echo 4. Yellow
echo 5. Exit
echo.

set /p choice=Select a color option: 

if "%choice%"=="1" (
    color 04
    goto color
) else if "%choice%"=="2" (
    color 02
    goto color
) else if "%choice%"=="3" (
    color 01
    goto color
) else if "%choice%"=="4" (
    color 06
    goto color
) else if "%choice%"=="5" (
    Commands
) else (
    echo Invalid choice. Please select a valid option.
    timeout /t 2 > nul
    goto color
)


:website
cls
echo 1. Website
echo 2. Exit

set /p choice=Enter your choice:

if "%choice%"=="1" goto watchmalware
if "%choice%"=="2" goto main

:watchmalware
cls
start http://www.watchmalware.co.uk/
goto website

:help
cls


