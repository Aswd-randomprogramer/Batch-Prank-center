@echo off
title Prank-center
:menu
cls
echo Menu
echo --------
echo 1. IPconfig /release Prank
echo 2. Swap Mouse Button Prank
echo 3. Frozen Desktop Icons Prank
echo 4. Prank 4
echo 5. Exit
echo.
echo --------

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    call :ipconfig_release_prank
) else if "%choice%"=="2" (
    call :swap_mouse_button_prank
) else if "%choice%"=="3" (
    call :frozen_desktop_icons_prank
) else if "%choice%"=="4" (
    call :prank4
) else if "%choice%"=="5" (
    exit /b
) else (
    echo Invalid choice. Please try again.
    echo.
    goto :menu
)

:ipconfig_release_prank
echo IPconfig /release prank executed.
echo This prank will release the IP address of the current network connection.
echo The victim may temporarily lose internet connectivity.
echo.
ipconfig /release
echo Prank complete.
echo.
goto :menu

:swap_mouse_button_prank
echo Swap Mouse Button prank executed.
echo This prank will swap the primary and secondary buttons of the mouse.
echo The victim's mouse clicks will have the opposite effect.
echo.
reg add "HKCU\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 1 /f >nul
echo Prank complete.
echo.
goto :menu

:frozen_desktop_icons_prank
echo Frozen Desktop Icons prank executed.
echo This prank will hide and show the desktop icons, giving the appearance of frozen or disappearing icons.
echo.
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideIcons /t REG_DWORD /d 1 /f >nul
taskkill /f /im explorer.exe
ping -n 3 localhost >nul
start explorer.exe
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideIcons /t REG_DWORD /d 0 /f >nul
echo Prank complete.
echo.
goto :menu

:prank4
echo Prank 4 executed.
echo This is where you write the code for your fourth prank.
echo.
goto :menu
