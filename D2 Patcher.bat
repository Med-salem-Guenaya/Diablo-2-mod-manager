@echo off
TITLE D2 MultiRes and PlugY / Median XL

:start
cls
ECHO.
ECHO                    ----------------------------------------------------------
ECHO                    -           D2 MultiRes and PlugY  / Median XL           -
ECHO                    -                                                        -
ECHO                    -               Created by: nano_salem                   -
ECHO                    ----------------------------------------------------------
ECHO.
ECHO   Select the version you want:
ECHO.
ECHO   1. v1.12a 
ECHO   2. v1.12a (MultiRes + PlugY)
ECHO   3. v1.12a (MultiRes + PlugY + Median XL)
ECHO   4. v1.13c 
ECHO   5. v1.13c (MultiRes + PlugY)
ECHO   6. v1.13c (MultiRes + PlugY + Median XL)
ECHO   7. v1.13d 
ECHO   8. v1.14d 
ECHO   9. v1.14d (Median XL Sigma)
ECHO   ---------
ECHO   0. Leave
ECHO.
set choice=   
set /p choice= Choose a number to choose the patch: 
if not ´%choice%´==´´ set choice=%choice:~0,1%
if ´%choice%´==´1´ goto 112a
if ´%choice%´==´2´ goto 112a.PlugY.MultiResulti
if ´%choice%´==´3´ goto 112a.PlugY.MultiResulti.Median XL
if ´%choice%´==´4´ goto 113c
if ´%choice%´==´5´ goto 113c.PlugY.MultiResulti
if ´%choice%´==´6´ goto 113c.PlugY.MultiResulti.Median XL
if ´%choice%´==´7´ goto 113d
if ´%choice%´==´8´ goto 114d
if ´%choice%´==´9´ goto 114d.Sigma
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

:112a
copy Patches\112a_og\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.12a
ECHO.
goto Leave

:112a.PlugY.MultiResulti
copy Patches\112a\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.12a
ECHO.
goto Leave

:112a.PlugY.MultiResulti.Median XL
copy Patches\112a.M\*.* *.* >NUL
copy Patches\all2\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.12a
ECHO.
goto Leave

:113c
copy Patches\113c_og\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.13c
ECHO.
goto Leave

:113c.PlugY.MultiResulti
copy Patches\113c\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.13c
ECHO.
goto Leave

:113c.PlugY.MultiResulti.Median XL
copy Patches\113c.M\*.* *.* >NUL
copy Patches\all2\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.13c
ECHO.
goto Leave

:113d
copy Patches\113d\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.13d
ECHO.
goto Leave

:114d
copy Patches\114d\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.14d
ECHO.
goto Leave

:114d.Sigma
copy Patches\sigma\*.* *.* >NUL
copy Patches\all\*.* *.* >NUL
ECHO.
ECHO Diablo II - Lord of Destruction v1.14d
ECHO.
goto Leave

:Leave