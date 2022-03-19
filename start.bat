@echo off
                                                                                                                     
echo                AAA         TTTTTTTTTTTTTTTTTTTTTTT     TTTTTTTTTTTTTTTTTTTTTTT                               lllllll 
echo               A:::A        T:::::::::::::::::::::T     T:::::::::::::::::::::T                               l:::::l 
echo              A:::::A       T:::::::::::::::::::::T     T:::::::::::::::::::::T                               l:::::l 
echo             A:::::::A      T:::::TT:::::::TT:::::T     T:::::TT:::::::TT:::::T                               l:::::l 
echo            A:::::::::A     TTTTTT  T:::::T  TTTTTT     TTTTTT  T:::::T  TTTTTTooooooooooo      ooooooooooo    l::::l 
echo           A:::::A:::::A            T:::::T                     T:::::T      oo:::::::::::oo  oo:::::::::::oo  l::::l 
echo          A:::::A A:::::A           T:::::T                     T:::::T     o:::::::::::::::oo:::::::::::::::o l::::l 
echo         A:::::A   A:::::A          T:::::T                     T:::::T     o:::::ooooo:::::oo:::::ooooo:::::o l::::l 
echo        A:::::A     A:::::A         T:::::T                     T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
echo       A:::::AAAAAAAAA:::::A        T:::::T                     T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
echo      A:::::::::::::::::::::A       T:::::T                     T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
echo     A:::::AAAAAAAAAAAAA:::::A      T:::::T                     T:::::T     o::::o     o::::oo::::o     o::::o l::::l 
echo    A:::::A             A:::::A   TT:::::::TT                 TT:::::::TT   o:::::ooooo:::::oo:::::ooooo:::::ol::::::l
echo   A:::::A               A:::::A  T:::::::::T                 T:::::::::T   o:::::::::::::::oo:::::::::::::::ol::::::l
echo  A:::::A                 A:::::A T:::::::::T                 T:::::::::T    oo:::::::::::oo  oo:::::::::::oo l::::::l
echo AAAAAAA                   AAAAAAATTTTTTTTTTT                 TTTTTTTTTTT      ooooooooooo      ooooooooooo   llllllll
echo.
echo Repository: https://github.com/posreadyxp/AT-Tool
echo.

if %errorlevel%==0 (
   goto start
) else (
   echo Please, open with a administrator privileges!!
   ping -n 3 127.0.0.1 >NUL
   exit
)

:start
echo Enter a one:
echo.
echo [1] - Windows XP Tweaks
echo [2] - Windows 7 Tweaks
echo [3] - Windows 10 Tweaks
echo [4] - Windows 11 tweaks
echo [5] - Exit
echo.
set /p ent=">>> "
if "%ent%"=="1" (
   goto windowsxp
) else if "%ent%"=="2" (
   goto windows7
) else if "%ent%"=="3" (
   goto windows10
) else if "%ent%"=="4" (
   goto windows11
) else if "%ent%"=="5" (
   echo Bye!!
   ping -n 3 127.0.0.1 >NUL
   exit
) else goto start 

:windowsxp
echo Windows XP tweaks:
echo.
echo [1] - Restore classic control panel
echo [2] - Return new control panel
echo [3] - Copy big text from console
echo [4] - Delete links from shortcut
echo [5] - Disable ini cache (desktop.ini)
echo [6] - Enable ini cache
echo [7] - Disable SFC
echo [8] - Support 16 bit programs
echo [9] - Disable 16 bit programs
echo [10] - Enable Old Logon
echo [11] - Enable New logon
echo [12] - Registry Done (Show info, when registry successfuly imported)
echo [13] - Fix russian locale
echo [14] - Return to menu
echo.
set /p check=">>> "
if "%check%"=="1" (
    start "files/XP/classic_controlpanel.reg" 
) else if "%check%"=="2" (
    start "files/XP/new_controlpanel.reg"
) else if "%check%"=="3" (
    start "files/XP/copy_big.reg"
) else if "%check%"=="4" (
    start "files/XP/del_links.reg"
) else if "%check%"=="5" (
    start "files/XP/disable_ini_cache.reg"
) else if "%check%"=="6" (
    start "files/XP/enable_ini_cache.reg"
) else if "%check%"=="7" (
    start "files/XP/disable_SFC.reg"
) else if "%check%"=="8" (
    start "files/XP/enable_16bit.reg"
) else if "%check%"=="9" (
    start "files/XP/disable_16bit.reg"
) else if "%check%"=="10" (
    start "files/XP/logon_new.reg"
) else if "%check%"=="11" (
    start "files/XP/logon_old.reg"
) else if "%check%"=="12" (
    start "files/XP/regDone.reg"
) else if "%check%"=="13" (
    start "files/XP/regDone.reg"
) else if "%check%"=="14" (
    goto start
) else goto windowsxp
rem if "%check%"=="14" (
rem     goto start
rem ) else (
rem     goto start
rem )

:windows7
echo Windows 7 tweaks:
echo.
echo [1] - Remove ini cache (desktop.ini)
echo [2] - Add ini cache
echo [3] - Disable autoplay
echo [4] - Enable autoplay
echo [5] - Disable auto restart (BSoD)
echo [6] - Disable "restore preview" from context menu
echo [7] - Add TakeOwnerShip to context menu
echo [8] - Remove Spy Updates
echo [9] - Exit
echo.
set /p a=">>> "
if "%a%"=="1" (
    start "files/7/remove_ini_cache.reg" 
) else if "%a%"=="2" (
    start "files/7/add_ini_cache.reg"
) else if "%a%"=="3" (
    start "files/7/disable_autoplay.reg"
) else if "%a%"=="4" (
    start "files/7/enable_autoplay.reg"
) else if "%a%"=="5" (
    start "files/7/disable_bsod_reset.reg"
) else if "a%"=="6" (
    start "files/7/disable_restore.reg"
) else if "%a%"=="7" (
    start "files/7/InstallTakeOwnership.reg"
) else if "%a%"=="8" (
    start "files/7/rem_spy_updates.cmd"
) else if "%a%"=="9" (
    goto start
) else goto windows7


:windows10
echo Windows 10 tweaks:
echo.
echo [1] - Remove ini cache (desktop.ini)
echo [2] - Add ini cache
echo [3] - Add Copy path to context menu
echo [4] - Disable News and Interests
echo [5] - Enable News and Interests
echo [6] - Disable telemetry (powershell script!!)
echo [7] - Disable defender (Safe mode. Maybe works on 1903+)
echo [8] - Disable Office telemetry
echo [9] - Disable Office telemetry (tasks)
echo [10] - Enable GPEDIT (for Windows 10 Home)
echo [11] - Onedrive uninstaller
echo [12] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
echo [13] - Add Takeowner ship to context menu
echo [14] - Activate Windows old photo viewer
echo [15] - Exit
echo.
set /p inp=">>> "
if "%inp%"=="1" (
    start "files/10/remove_ini_cache.reg" 
) else if "%inp%"=="2" (
    start "files/10/add_ini_cache.reg"
) else if "%inp%"=="3" (
    start "files/10/Add_Copy_path_to_context_menu.reg"
) else if "%inp%"=="4" (
    start "files/10/Disable_News_and_Interests_on_taskbar_feature_for_all_users.reg"
) else if "%inp%"=="5" (
    start "files/10/Enable_News_and_Interests_on_taskbar_feature_for_all_users.reg"
) else if "%inp%"=="6" (
    start "files/10/disable-telemetry.ps1"
) else if "%inp%"=="7" (
    start "files/10/DisableDefenderSafeMode1903Plus.bat"
) else if "%inp%"=="8" (
    start "files/10/DisableOfficeTelemetry.reg"
) else if "%inp%"=="9" (
    start "files/10/DisableOfficeTelemetryTasks.bat"
) else if "%inp%"=="10" (
    start "files/10/EnableGPeditinW10Home.bat"
) else if "%inp%"=="11" (
    start "files/10/OneDrive_Uninstaller.bat"
) else if "%inp%"=="12" (
    start "files/10/This_PC_-_Remove_3D_Objects_64-bit.reg"
) else if "%inp%"=="13" (
    start "files/7/InstallTakeOwnership.reg"
) else if "%inp%"=="14" (
    start "files/10/Activate_Windows_Old_Photo_Viewer_on_Windows_10.reg"
) else if "%inp%"=="15" (
    goto start
) else goto windowsxp

:windows11
echo Windows 11 tweaks:
echo.
echo [1] - Remove ini cache (desktop.ini)
echo [2] - Add ini cache
echo [3] - Add Copy path to context menu
echo [4] - Enable Old context menu
echo [5] - Disable old context menu
echo [6] - Enable Windows 10 Taskbar
echo [7] - Disable Windows 10 Taskbar
echo [8] - Disable search in taskbar
echo [9] - Enable search in taskbar
echo [10] - Small Icons in taskbar
echo [11] - Remove Small Icons in taskbar
echo [12] - Disable defender (Safe mode)
echo [13] - Disable Office telemetry
echo [14] - Disable Office telemetry (tasks)
echo [15] - Onedrive uninstaller
echo [16] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
echo [17] - Add Takeowner ship to context menu
echo [18] - Exit
echo.
set /p inpu=">>> "
if "%inpu%"=="1" (
    start "files/10/remove_ini_cache.reg" 
) else if "%inpu%"=="2" (
    start "files/10/add_ini_cache.reg"
) else if "%inpu%"=="3" (
    start "files/10/Add_Copy_path_to_context_menu.reg"
) else if "%inpu%"=="4" (
    start "files/11/old_context_menu.reg"
) else if "%inpu%"=="5" (
    start "files/11/del_old_context_menu.reg"
) else if "%inpu%"=="6" (
    start "files/11/windows_10_taskbar.reg"
) else if "%inpu%"=="7" (
    start "files/11/remove_10_taskbar.reg"
) else if "%inpu%"=="8" (
    start "files/11/disable_search.reg"
) else if "%inpu%"=="9" (
    start "files/11/enable_search.reg"
) else if "%inpu%"=="10" (
    start "files/11/small_icons.reg"
) else if "%inpu%"=="11" (
    start "files/11/remove_small_icons.reg"
) else if "%inpu%"=="12" (
    start "files/10/DisableDefenderSafeMode1903Plus.bat"
) else if "%inpu%"=="13" (
    start "files/10/DisableOfficeTelemetry.reg"
) else if "%inpu%"=="14" (
    start "files/10/DisableOfficeTelemetryTasks.bat"
) else if "%inpu%"=="15" (
    start "files/10/OneDrive_Uninstaller.bat"
) else if "%inpu%"=="16" (
   start "files/10/This_PC_-_Remove_3D_Objects_64-bit.reg"
) else if "%inpu%"=="17" (
   start "files/7/InstallTakeOwnership.reg"
) else if "%inpu%"=="18" (
   goto start
) else (
   goto windowsxp
)

pause