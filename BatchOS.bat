@echo off
color 06
Title Boot Checker
rem (C) 2023-2024 BatchOS
rem hello i am here :)
:BOOT
setlocal

rem Define the path to the desktop folder
set "desktopFolder=%userprofile%\Desktop"

rem Get the full path to the currently running batch file
set "batchFilePath=%~dp0"

rem Check if the batch file is on the desktop
if "%batchFilePath%"=="%desktopFolder%\" (
echo BATCHOS BOOT CHECK
TIMEOUT 1 > NUL
echo.
echo All Good!
echo Proceeding to Kernel
timeout 3 > nul
    goto :kernel
) else (
color 06
    echo Critcal Boot Error: BatchOS cannot boot as its bootloader is not found!
    pause >nul
    exit /b 1
)

color 06
:kernel
mkdir BatchOSDir
cls
del BatchOSDir\settings.ini
cls

(
echo @echo off
echo cd BatchOSDir
mkdir BatchOSDir\System
mkdir BatchOSDir\System\Partitions
echo mkdir System\BatOSregistry
echo cd System\BatOSregistry
echo mkdir BatOSconfigs
echo mkdir BatOSuservalues
echo mkdir BatOScurrent
echo mkdir BatOSsettings
echo echo. > %userprofile%\Desktop\BatchOSDir\System\BatOSregistry\Theme.btreg
echo echo. > %userprofile%\Desktop\BatchOSDir\System\BatOSregistry\Title.btreg
echo pushd BatchOSDir
echo mkdir %userprofile%\Desktop\BatchOSDir\DMP
echo Set RetroMode=0 >> BatchOSDir/settings.ini
echo Set Bootloader=1 >> BatchOSDir/settings.ini
echo Set Mouse=1 >> BatchOSDir/settings.ini
echo Set RetroMode=0 >> BatchOSDir/settings.ini
echo Set Color06=1 >> BatchOSDir/settings.ini
echo Set Commands=1 >> BatchOSDir/settings.ini
echo Set Calculator=1 >> BatchOSDir/settings.ini
(
echo @echo off
echo cls
echo title Timer
echo mode con: cols=25 lines=10
echo :choose
echo set /p hours=Hours:
echo set /p minutes=Minutes:
echo set /p seconds=Seconds:
echo set hr=%%hours%%
echo set min=%%minutes%%
echo set sec=%%seconds%%
echo :lodsrr
echo cls
echo if %%hr%% == -1 goto timeended
echo if %%min%% == -1 goto hr
echo if %%sec%% == -1 goto min
echo echo.
echo echo Time left:
echo echo %%hr%% hr %%min%% min %%sec%% sec
echo echo.
echo ping localhost -n 2 ^>nul
echo set /a sec-=1
echo goto lodsrr
echo :min
echo set /a min-=1
echo set sec=59
echo goto lodsrr
echo :hr
echo set /a hr-=1
echo set min=59
echo goto lodsrr
echo :timeended
echo cls
echo color C
echo echo.
echo echo Time has ended!
echo powershell -Command "[console]::beep(999,999)"
echo powershell -Command "[console]::beep(999,999)"
echo powershell -Command "[console]::beep(999,999)"
echo powershell -Command "[console]::beep(999,999)"
echo pause > nul
echo color 06
echo goto :EOF
) > BatchOSDir\timer.bat
(   echo @echo off
    echo title MS-DOS-PROMPT
    echo :CMD
    echo cls
    echo echo ======================================
    echo echo To return to BatchOS, Type "exit"
    echo echo ======================================
    echo echo.
    echo call cmd
    echo goto :EOF
) > BatchOSDir\MS-DOS-PROMPT.bat
echo popd
) > BatchOSDir\batchosbuilder.bat
cls
call BatchOSDir\batchosbuilder.bat
cls
setlocal enabledelayedexpansion
color 06
title BatchOSKernel
cls

:bootloader
cls
echo.
echo l---l                                           ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    
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
popd %userprofile%\Desktop\BatchOSDir\COM
nircmd mediaplay 1006 "Start-UP.wav
popd BatchOSDir
cls
echo Loading BatchOS...
cls
color 1
echo B
ping localhost -n 2 >nul
cls
color 2
echo Ba
ping localhost -n 2 >nul
cls
color 3
echo Bat
ping localhost -n 2 >nul
cls
color 4
echo Batc
ping localhost -n 2 >nul
cls
color 5
echo Batch
ping localhost -n 2 >nul
cls
color 6
echo BatchO
ping localhost -n 2 >nul
cls
color 7
echo BatchOS
ping localhost -n 2 >nul
cls
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
cd BatchOSDir
del *.exe
del *.txt
del *.py
del *.inf
del *.mp3
del *.mp4
del *.mp5
del *.tiff
del *.png
del *.jpg
del *.jpeg
del *.ico
goto :advancedOptions

:ResetBATCHOSMAIN
cls
cd BatchOSDir
del *.exe
del *.txt
del *.py
del *.inf
goto :Settings

:powersection
title BatchOSServiceLoader
timeout 1 > nul
cls
echo.
echo BatchOS Loaded
color 06
timeout 1 > nul
goto main

:main
title BatchOS
cls
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l
echo.
echo         =========================
echo          Press "R or r" For Help     
echo         =========================
echo.
echo.
echo 1. List Files and Operations
echo 2. Display Date and Time
echo 3. BatchOSDir
echo 4. Command list
echo 5. Power
echo 6. Website
echo 7. Settings
echo 8. Games
echo.
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto list_files
if "%choice%"=="2" goto display_datetime
if "%choice%"=="3" goto CreateDIR
if "%choice%"=="4" goto Commands
if "%choice%"=="5" goto power
if "%choice%"=="6" goto website
if "%choice%"=="7" goto Settings
if "%choice%"=="R" goto Help
if "%choice%"=="r" goto Help
if "%choice%"=="bsob" goto prebsob
if "%choice%"=="8" goto Games

echo Invalid choice. Please try again.
timeout 2 > nul
goto main

:Games
cls
echo 1. Number Guessing Game
echo 2. Exit

set /p choice=Enter Your Choice:

if "%choice%"=="1" goto game1
if "%choice%"=="2" goto main

:game1
cls
setlocal EnableDelayedExpansion

rem Generate a random number between 1 and 100
set /a "target=!random! %% 100 + 1"

echo Welcome to the Batch Number Guessing Game!
echo I've generated a random number between 1 and 100.
echo You have 10 attempts to guess the correct number.

set "attempts=0"
set "max_attempts=10"

:guess
if %attempts% lss %max_attempts% (
    set /p "guess=Enter your guess: "

    rem Check if the input is a valid number
    for /f "tokens=1 delims=0123456789" %%i in ("!guess!") do (
        echo Invalid input. Please enter a number.
        goto guess
    )

    set /a "attempts+=1"

    rem Check if the guess is correct
    if !guess! equ %target% (
        echo Congratulations! You guessed the correct number: %target%
        goto end
    ) else if !guess! lss %target% (
        echo Your guess is too low.
    ) else (
        echo Your guess is too high.
    )

    echo You have %max_attempts% attempts remaining.
    goto guess
) else (
    echo Game over! You've used all your attempts.
)

goto Games

:power
cls
echo 1. Power Off
echo 2. Restart
echo 3. Exit

set /p choice=Enter Your Choice:

if "%choice%"=="1" goto exit
if "%choice%"=="2" goto BOOT
if "%choice%"=="3" goto main


:ION
cls

title BatchOS Partition Manager

:par
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
cls
echo 1) New partition
echo 2) View partitions
echo 3) Rename partition
echo 4) Format partition
echo 5) Open partition
echo 6) Exit
choice /c 123456
if %errorlevel% equ 1 goto newpartition
if %errorlevel% equ 2 goto viewpartitions
if %errorlevel% equ 3 goto renamepartitionname
if %errorlevel% equ 4 goto formatpartition
if %errorlevel% equ 5 goto openpartition
if %errorlevel% equ 6 goto exit

:exit
goto main

:newpartition
cls
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
cls
set /p newpartitionname1=Partition name: 
mkdir "%newpartitionname1%"
goto par

:viewpartitions
cls
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
echo Found partitions:
dir /b /ad
pause
goto par

:renamepartitionname
cls
set /p partitionname=Partition name: 
set /p newname=New name: 
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
if exist "%partitionname%\" (
    if "%newname%"=="" goto par
    cd %userprofile%\Desktop\BatchOSDir\System\Partitions
    ren "%partitionname%" "%newname%"
    goto par
) else (
    echo The specified partition does not exist.
    pause
    goto par
)

:formatpartition
cls
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
set /p partitionnametoformat=Partition name to format: 
if exist "%partitionnametoformat%" (
    rmdir /s /q "%partitionnametoformat%"
    mkdir "%partitionnametoformat%"
    pause
    goto par
) else (
    echo The partition was not found.
    pause
    goto par
)

:openpartition
cls
cd %userprofile%\Desktop\BatchOSDir\System\Partitions
set /p partitionname=Partition name to open: 
if exist "%partitionname%" (
    explorer "%partitionname%"
    goto par
) else (
    echo The partition was not found.
    pause
    goto par
)

:Settings
cls
echo Settings
echo.
echo 1. Reconfigure Settings
echo 2. Run Diagnostics
echo 3. Back to BatchOS
echo 4. Reset (Deletes the BatchOSDir Folder)
echo 5. Partition Manager

set /p choice=Enter your choice: 

if "%choice%"=="1" reconfigureSettingsBATCHOSMAIN
if "%choice%"=="2" runDiagnosticsBATCHOSMAIN
if "%choice%"=="3" goto :main
if "%choice%"=="4" goto ResetBATCHOSMAIN
if "%choice%"=="5" goto ION
else (
    echo Invalid choice. Please try again.
    timeout /t 2 > nul
    goto :Settings
)

:list_files
cls
echo l---l                                          ______
echo l   l     /l  _____   ______             ___    l
echo l---l    / l    l    l          l  l    l   l   l_____
echo l   l   /--l    l    l          l--l    l   l        l
echo l---l  /   l    l    l______    l  l    l___l    ____l    
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
echo l---l  /   l    l    l______    l  l    l___l    ____l    
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
echo l---l  /   l    l    l______    l  l    l___l    ____l    
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
title BatchOS
cls
echo 1. Calculator
echo 2. Exit
echo 3. Color
echo 4. CMD
echo 5. Timer
echo 6. Clicker

set /p choice=Enter your choice: 


if "%choice%"=="1" goto calcmenu
if "%choice%"=="2" goto main
if "%choice%"=="3" goto color
if "%choice%"=="4" goto CMDs
if "%choice%"=="5" goto Timer
if "%choice%"=="6" goto hure

:CMDs
(    echo @echo off
    echo title MS-DOS-PROMPT
    echo :CMD
    echo cls
    echo echo ======================================
    echo echo To return to BatchOS, Type "exit"
    echo echo ======================================
    echo echo.
    echo call cmd
    echo goto :EOF
) > BatchOSDir\MS-DOS-PROMPT.bat
cls
call BatchOSDir\MS-DOS-PROMPT.bat
cls
goto Commands

:Timer
cls
call BatchOSDir\timer.bat
cls

:hure
title Clicker
set /a wins=0
set /a clicks=0
set /a multiplier=1

:clicker
if %clicks% equ 100000 (
goto win
)
cls
echo Welcome %username%!
echo.
echo Wins: %wins%
echo Clicks: %clicks%
echo Multiplier: %multiplier%x
echo 1) Click
echo 2) Shop
echo 4) Reset
echo 5) Exit
choice /c 12345
if %errorlevel% equ 1 goto clicked
if %errorlevel% equ 2 goto shop
if %errorlevel% equ 4 goto Reset
if %errorlevel% equ 5 goto Commands

:Reset
set /a clicks=0
goto clicker

:exit
exit

:clicked
set /a clicks=%clicks%+(1*%multiplier%)
goto clicker

:shop
cls
echo 1) +1 Multiplier - 50 Clicks
echo 2) +3 Multipliers - 150 Clicks
echo 3) +5 Multipliers - 250 Clicks
echo 4) +10 Multipliers - 500 Clicks
echo 5) +25 Multipliers - 1250 Clicks
echo 6) +50 Multipliers - 2500 Clicks
echo 7) Back
choice /c 1234567
if %errorlevel% equ 1 goto mult1
if %errorlevel% equ 2 goto mult3
if %errorlevel% equ 3 goto mult5
if %errorlevel% equ 4 goto mult10
if %errorlevel% equ 5 goto mult25
if %errorlevel% equ 6 goto mult50
if %errorlevel% equ 7 goto clicker

:mult1
if %clicks% geq 50 (
set /a multiplier=%multiplier%+1
set /a clicks=%clicks%-50
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)

:mult3
if %clicks% geq 150 (
set /a multiplier=%multiplier%+3
set /a clicks=%clicks%-150
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)

:mult5
if %clicks% geq 250 (
set /a multiplier=%multiplier%+5
set /a clicks=%clicks%-250
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)

:mult10
if %clicks% geq 500 (
set /a multiplier=%multiplier%+10
set /a clicks=%clicks%-500
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)


:mult25
if %clicks% geq 1250 (
set /a multiplier=%multiplier%+25
set /a clicks=%clicks%-1250
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)

:mult50
if %clicks% geq 2500 (
set /a multiplier=%multiplier%+50
set /a clicks=%clicks%-2500
goto clicker
) else (
echo Not enough clicks.
pause
goto shop
)

:win
cls
set /a wins=%wins%+1
echo Congratulations! You have reached 100K clicks and won the game!
pause
goto restart

:restart
set /a clicks=0
set /a multiplier=1
goto clicker

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

:Help
cls
echo.
echo Help Menu
echo.
echo commands -
echo bsob
goto main

:prebsob
cls
set basicerrorcode=Black_Screen_of_Batch
set errorid=%random%_BSoB_%random%
set hexerrorcode1=0x00000001
set hexerrorcode2=0x00000001
set hexerrorcode3=0x00000001
set hexerrorcode4=0x00000001
goto bsob

:bsob
cls
echo :(
echo Sadly, BatchOS has ran into a problem and has to restart.
echo Error code: %basicerrorcode%
echo Error ID: %errorid%
(
echo BASIC_ERROR_CODE: %basicerrorcode% 
echo ERROR_ID: %errorid%
echo.
echo HEX_ERROR_CODE1: %hexerrorcode1%
echo HEX_ERROR_CODE2: %hexerrorcode2%
echo HEX_ERROR_CODE3: %hexerrorcode3%
echo HEX_ERROR_CODE4: %hexerrorcode4%
) > %userprofile%\Desktop\BatchOSDir\DMP\LOG_%random%%random%%random%.dmp
cls
timeout t 3 > nul
goto BOOT
