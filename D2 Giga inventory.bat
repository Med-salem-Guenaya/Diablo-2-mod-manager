@echo off
TITLE Giga inventory installer/desinstaller

:start
cls
ECHO.
ECHO                    ----------------------------------------------------------
ECHO                    -          Giga inventory installer/Uninstaller          -
ECHO                    -                                                        -
ECHO                    -               Created by: nano_salem                   -
ECHO                    ----------------------------------------------------------
ECHO.
ECHO   Select the option you want:
ECHO.
ECHO   1. install 
ECHO   2. Uninstall
ECHO   ---------
ECHO   0. Leave
ECHO.
set choice=   
set /p choice= Choose a number to choose the action: 
if not ´%choice%´==´´ set choice=%choice:~0,1%
if ´%choice%´==´1´ goto install
if ´%choice%´==´2´ goto Uninstall
if ´%choice%´==´0´ goto Leave
if ´%choice%´==´´ goto fail
goto start

:fail
ECHO.
ECHO.
ECHO There is no such choice.
ECHO.
PAUSE > NUL
goto start

:install
xcopy  Patches\Giga   /K /E /Y >NUL
ECHO.
ECHO installing Giga inventory Mod
ECHO.
goto Leave

:Uninstall
RMDIR data\ /S /Q
ECHO.
ECHO desinstalling Giga inventory Mod
ECHO.
goto Leave

:Leave