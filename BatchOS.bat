@echo off
title BatchOS Bootloader

echo Loading BatchOSBootloader...
timeout /t 2 >nul

:bootloop
cls
echo BatchOS Bootloader
echo.
echo 1. Start BatchOS
echo 2. Advanced Options
echo 3. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :loadBatchOS
) else if "%choice%"=="2" (
    call :advancedOptions
) else if "%choice%"=="3" (
    exit
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :bootloop
)

:loadBatchOS
cls
echo Loading BatchOS...
timeout /t 2 >nul
goto powersection
goto :bootloop

:advancedOptions
cls
echo Advanced Options
echo.
echo 1. Reconfigure Settings
echo 2. Run Diagnostics
echo 3. Back to Bootloader

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :reconfigureSettings
) else if "%choice%"=="2" (
    call :runDiagnostics
) else if "%choice%"=="3" (
    goto :bootloop
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :advancedOptions
)

:reconfigureSettings
cls
echo Reconfiguring Settings...
timeout /t 2 >nul
echo Settings reconfigured.
timeout /t 2 >nul
goto :advancedOptions

:runDiagnostics
cls
echo Running Diagnostics...
timeout /t 2 >nul
echo Diagnostics complete.
timeout /t 2 >nul
goto :advancedOptions
title BatchOS
:powersection
cls
echo.
echo BatchOS Loaded
echo.
echo.                                             
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.0
echo.
echo.
echo Welcome to BatchOS
echo 1) Power On
echo 2) Power Off
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" goto main
if "%choice%"=="2" goto exit

echo Invalid choice. Please try again.
timeout 2 > nul
cls
goto powersection

:main
cls
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    1.0
echo.
echo.
echo 1. List Files and Operations
echo 2. Display Date and Time
echo 3. Power Off
echo 4. BatchOSDir
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" goto list_files
if "%choice%"=="2" goto display_datetime
if "%choice%"=="3" goto exit
if "%choice%"=="4" goto CreateDIR


echo Invalid choice. Please try again.
timeout 2 > nul
goto main

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
systeminfo
echo Power Off
powershell -Command "[console]::beep(999,999)"
exit

:CreateDir
mkdir BatchOSDir
set "BatchOSDir=BatchOSDir"

:menu
cls
echo l---l                                          ______
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
echo 5. Delete File
set /p choice=Enter your choice: 

if "%choice%"=="1" goto createFile
if "%choice%"=="2" goto listFiles
if "%choice%"=="3" goto editFile
if "%choice%"=="4" goto exit
if "%choice%"=="5" goto Delete File

:createFile
cls
set /p filename=Enter file name (include extension): 
echo. > "%BatchOSDir%\%filename%"
echo File created: %filename%
pause
goto menu

:listFiles
cls
echo List of files in %BatchOSDir%:
dir /b "%BatchOSDir%"
pause
goto menu

:editFile
cls
set /p filename=Enter file name to edit (include extension): 
if exist "%BatchOSDir%\%filename%" (
    notepad "%BatchOSDir%\%filename%"
) else (
    echo File not found.
    pause
)
goto menu

:exit
goto main

:deleteFile
cls
set /p filename=Enter file name to delete (include extension): 
if exist "%BatchOSDir%\%filename%" (
    del "%BatchOSDir%\%filename%"
    echo File deleted: %filename%
) else (
    echo File not found.
)
pause
goto menu



