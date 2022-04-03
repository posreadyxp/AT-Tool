@echo off

echo AT-TOOL
echo.
echo Repository: https://github.com/posreadyxp/AT-Tool
echo.

set path_tf=%~dp0
cd /d %path_tf%

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
echo [1] - Windows 2000 Tweaks
echo [2] - Windows XP Tweaks
echo [3] - Windows 7 Tweaks
echo [4] - Windows 10 Tweaks
echo [5] - Windows 11 tweaks
echo [6] - Exit
echo.
set /p ent=">>> "
if "%ent%"=="1" (
   goto windows2000
) else if "%ent%"=="2" (
   goto windowsxp
) else if "%ent%"=="3" (
   goto windows7
) else if "%ent%"=="4" (
   goto windows10
) else if "%ent%"=="5" (
   goto windows11
) else if "%ent%"=="6" (
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
    start files\XP\classic_controlpanel.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="2" (
    start files\XP\new_controlpanel.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="3" (
    start files\XP\copy_big.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="4" (
    start files\XP\del_links.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="5" (
    start files\XP\disable_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="6" (
    start files\XP\enable_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="7" (
    start files\XP\disable_SFC.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="8" (
    start files\XP\enable_16bit.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="9" (
    start files\XP\disable_16bit.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="10" (
    start files\XP\logon_new.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="11" (
    start files\XP\logon_old.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="12" (
    start files\XP\regDone.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="13" (
    start files\XP\ru_all.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%check%"=="14" (
    goto start
) else goto windowsxp

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
    start files\7\remove_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start 
) else if "%a%"=="2" (
    start files\7\add_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%a%"=="3" (
    start files\7\disable_autoplay.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%a%"=="4" (
    start files\7\enable_autoplay.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%a%"=="5" (
    start files\7\disable_bsod_reset.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "a%"=="6" (
    start files\7\disable_restore.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%a%"=="7" (
    start files\7\InstallTakeOwnership.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%a%"=="8" (
    start files\7\rem_spy_updates.cmd
    ping -n 3 127.0.0.1 >NUL
    goto start
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
echo [15] - Disable Windows Update
echo [16] - Enable Windows Update
echo [17] - Disable firewall notify
echo [18] - Enable firewall notify
echo [19] - Disable Web Search
echo [20] - Enable Web Search
echo [21] - Remove all folder from This PC (Downloads and etc)
echo [22] - Set windows aerolite theme
echo [23] - Return windows theme (light)
echo [24] - Add alt tab transperent
echo [25] - Remove alt tab transperent
echo [26] - Enable DIM Desktop wallpaper (45%)
echo [27] - Delete DIM Desktop wallpaper
echo [28] - Disable Shake
echo [29] - Enable Shake
echo [30] - BSoD on ctrl + scroll
echo [31] - Disable BSoD on ctrl + scroll
echo [32] - Exit
echo.
set /p inp=">>> "
if "%inp%"=="1" (
    start files\10\remove_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start 
) else if "%inp%"=="2" (
    start files\10\add_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="3" (
    start files\10\Add_Copy_path_to_context_menu.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="4" (
    start files\10\Disable_News_and_Interests_on_taskbar_feature_for_all_users.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="5" (
    start files\10\Enable_News_and_Interests_on_taskbar_feature_for_all_users.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="6" (
    powershell files\10\disable-telemetry.ps1
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="7" (
    start files\10\DisableDefenderSafeMode1903Plus.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="8" (
    start files\10\DisableOfficeTelemetry.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="9" (
    start files\10\DisableOfficeTelemetryTasks.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="10" (
    start files\10\EnableGPeditinW10Home.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="11" (
    start files\10\OneDrive_Uninstaller.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="12" (
    start files\10\This_PC_-_Remove_3D_Objects_64-bit.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="13" (
    start files\7\InstallTakeOwnership.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="14" (
    start files\10\Activate_Windows_Old_Photo_Viewer_on_Windows_10.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inp%"=="15" (
    start files\10\disable_update.bat
    goto start
) else if "%inp%"=="16" (
    start files\10\enable_update.bat
    goto start
) else if "%inp%"=="17" (
    start files\10\Disable_firewall_notifications.reg
    goto start
) else if "%inp%"=="18" (
    start files\10\Enable_firewall_notifications.reg
    goto start
) else if "%inp%"=="19" (
    start files\10\Disable_web_search.reg
    goto start
) else if "%inp%"=="20" (
    start files\10\Enable_web_search.reg
    goto start
) else if "%inp%"=="21" (
    start files\10\Remove_folders_from_this_pc.reg
    goto start
) else if "%inp%"=="22" (
    start files\10\AeroLite.theme
    goto start
) else if "%inp%"=="23" (
    start files\10\aero.theme
    goto start
) else if "%inp%"=="24" (
    start files\10\add_alt_tab_transp.reg
    goto start
) else if "%inp%"=="25" (
    start files\10\del_alt_tab_transp.reg
    goto start
) else if "%inp%"=="26" (
    start files\10\dim_desktop_wall.reg
    goto start
) else if "%inp%"=="27" (
    start files\10\del_dim_desktop_wall.reg
) else if "%inp%"=="28" (
    start files\10\disable_shake.reg
) else if "%inp%"=="29" (
    start files\10\enable_shake.reg
) else if "%inp%"=="30" (
    start files\10\bsod_ctrl_scroll.reg
) else if "%inp%"=="31" (
    start files\10\remove_bsod_c_scroll.reg
) else if "%inp%"=="24" (
    goto start
) else goto windows10

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
echo [18] - Set windows aerolite theme
echo [19] - Return windows theme (light)
echo [20] - Exit
echo.
set /p inpu=">>> "
if "%inpu%"=="1" (
    start files\10\remove_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start 
) else if "%inpu%"=="2" (
    start files\10\add_ini_cache.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="3" (
    start files\10\Add_Copy_path_to_context_menu.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="4" (
    start files\11\old_context_menu.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="5" (
    start files\11\del_old_context_menu.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="6" (
    start files\11\windows_10_taskbar.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="7" (
    start files\11\remove_10_taskbar.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="8" (
    start files\11\disable_search.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="9" (
    start files\11\enable_search.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="10" (
    start files\11\small_icons.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="11" (
    start files\11\remove_small_icons.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="12" (
    start files\10\DisableDefenderSafeMode1903Plus.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="13" (
    start files\10\DisableOfficeTelemetry.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="14" (
    start files\10\DisableOfficeTelemetryTasks.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="15" (
    start files\10\OneDrive_Uninstaller.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="16" (
    start files\10\This_PC_-_Remove_3D_Objects_64-bit.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="17" (
    start files\7\InstallTakeOwnership.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%inpu%"=="18" (
    start files\10\AeroLite.theme
    goto start
) else if "%inpu%"=="19" (
    start files\10\aero.theme
    goto start
) else if "%inpu%"=="20" (
   goto start
) else (
   goto windows11
)

:windows2000
echo Windows 2000 Tweaks:
echo.
echo [1] - Enable compatibility tab
echo [2] - Disable compatibility tab
echo [3] - Enable Split Explorer
echo [4] - Disable Split Explorer
echo [5] - Explorer Slowdowns LAN Fix
echo [6] - Explorer Slowdowns Media Fix
echo [7] - Open with notepad Fix
echo [8] - xdsl/cable modem speed
echo [9] - Enable spontaneoud reboot (Autoreboot)
echo [10] - Disable spontaneoud reboot (Autoreboot)
echo [11] - Exit to menu
echo.
set /p input=">>> "
if "%input%"=="1" (
    start files\2000\enable_compatibility_tab.bat

) else if "%input%"=="2" (
    start files\2000\disable_comp_tab.bat
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="3" (
    start files\2000\enable_split_explorer.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="4" (
    start files\2000\disable_split_explorer.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="5" (
    start files\2000\explorer_slowdowns_LAN.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="6" (
    start files\2000\explorer_slowdowns_media.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="7" (
    start files\2000\open_with_notepad_fix.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="8" (
    start files\2000\xdsl_and_cable_modem_speedup.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="9" (
    start files\2000\enable_spontaneous_reboot.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="10" (
    start files\2000\disable_spontaneous_reboot.reg
    ping -n 3 127.0.0.1 >NUL
    goto start
) else if "%input%"=="11" (
    goto start
) else goto windows2000


pause
