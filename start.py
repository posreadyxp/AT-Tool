from os import system, _exit
import platform
from time import sleep
import ctypes


class AT:
    def __init__(self) -> None:
        self.winxp = 1
        self.win7 = 2
        self.win10 = 3
        self.win11 = 4
        self.logo = """
 ▄▄▄     ▄▄▄█████▓   ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒████▄   ▓  ██▒ ▓▒   ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
▒██  ▀█▄ ▒ ▓██░ ▒░   ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
░██▄▄▄▄██░ ▓██▓ ░    ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
 ▓█   ▓██▒ ▒██▒ ░      ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
 ▒▒   ▓▒█░ ▒ ░░        ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
  ▒   ▒▒ ░   ░           ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
  ░   ▒    ░           ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
      ░  ░                        ░ ░      ░ ░      ░  ░
                                                        
        """

    def clear(self):
        system("cls")

    def windowsxpmenu(self):
        self.clear()
        print(self.logo)
        while True:
            try:
                a = int(
                    input(
                        """
Windows XP tweaks:

[1] - Restore classic control panel
[2] - Return new control panel
[3] - Copy big text from console
[4] - Delete links from shortcut
[5] - Disable ini cache (desktop.ini)
[6] - Enable ini cache
[7] - Disable SFC
[8] - Support 16 bit programs
[9] - Disable 16 bit programs
[10] - Enable Old Logon
[11] - Enable New logon
[12] - Registry Done (Show info, when registry successfuly imported)
[13] - Fix russian locale
[14] - Exit
>>> """
                    )
                )
                if a in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]:
                    break
                else:
                    raise ValueError
            except ValueError:
                print("This is not a number! Try again!")
                a = int(
                    input(
                        """
Windows XP tweaks:

[1] - Restore classic control panel
[2] - Return new control panel
[3] - Copy big text from console
[4] - Delete links from shortcut
[5] - Disable ini cache (desktop.ini)
[6] - Enable ini cache
[7] - Disable SFC
[8] - Support 16 bit programs
[9] - Disable 16 bit programs
[10] - Enable Old Logon
[11] - Enable New logon
[12] - Registry Done (Show info, when registry successfuly imported)
[13] - Fix russian locale
[14] - Exit
>>> """
                    )
                )
        if a == 1:
            system("files/XP/classic_controlpanel.reg")
        elif a == 2:
            system("files/XP/new_controlpanel.reg")
        elif a == 3:
            system("files/XP/copy_big.reg")
        elif a == 4:
            system("files/XP/del_links.reg")
        elif a == 5:
            system("files/XP/disable_ini_cache.reg")
        elif a == 6:
            system("files/XP/enable_ini_cache.reg")
        elif a == 7:
            system("files/XP/disable_SFC.reg")
        elif a == 8:
            system("files/XP/enable_16bit.reg")
        elif a == 9:
            system("files/XP/disable_16bit.reg")
        elif a == 10:
            system("files/XP/logon_old.reg")
        elif a == 11:
            system("files/XP/logon_new.reg")
        elif a == 12:
            system("files/XP/regDone.reg")
        elif a == 13:
            system("files/XP/ru_all.reg")
        elif a == 14:
            return self.menu()
        input("After tweaks please, restart your PC.")
        self.menu()

    def win7menu(self):
        self.clear()
        print(self.logo)
        while True:
            try:
                a = int(
                    input(
                        """
Windows 7 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Disable autoplay
[4] - Enable autoplay
[5] - Disable auto restart (BSoD)
[6] - Disable "restore preview" from context menu
[7] - Add TakeOwnerShip to context menu
[8] - Remove Spy Updates
[9] - Exit
>>> """
                    )
                )
                if a in [1, 2, 3, 4, 5, 6, 7, 8, 9]:
                    break
                else:
                    raise ValueError
            except ValueError:
                print("This is not a number! Try again!")
                a = int(
                    input(
                        """
Windows 7 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Disable autoplay
[4] - Enable autoplay
[5] - Disable auto restart (BSoD)
[6] - Disable "restore preview" from context menu
[7] - Add TakeOwnerShip to context menu
[8] - Remove Spy Updates
[9] - Exit
>>> """
                    )
                )
        if a == 1:
            system("files/7/remove_ini_cache.reg")
        elif a == 2:
            system("files/7/add_ini_cache.reg")
        elif a == 3:
            system("files/7/disable_autoplay.reg")
        elif a == 4:
            system("files/7/enable_autoplay.reg")
        elif a == 5:
            system("files/7/disable_bsod_reset.reg")
        elif a == 6:
            system("files/7/disable_restore.reg")
        elif a == 7:
            system("files/7/InstallTakeOwnership.reg")
        elif a == 8:
            system("files/7/rem_spy_updates.cmd")
        elif a == 9:
            return self.menu()
        input("After tweaks please, restart your PC.")
        self.menu()

    def win10menu(self):
        self.clear()
        print(self.logo)
        while True:
            try:
                a = int(
                    input(
                        """
Windows 10 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Add Copy path to context menu
[4] - Disable News and Interests
[5] - Enable News and Interests
[6] - Disable telemetry (powershell script!!)
[7] - Disable defender (Safe mode. Maybe works on 1903+)
[8] - Disable Office telemetry
[9] - Disable Office telemetry (tasks)
[10] - Enable GPEDIT (for Windows 10 Home)
[11] - Onedrive uninstaller
[12] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
[13] - Add Takeowner ship to context menu
[14] - Activate Windows old photo viewer
[15] - Exit
>>> """
                    )
                )
                if a in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]:
                    break
                else:
                    raise ValueError
            except ValueError:
                print("This is not a number! Try again!")
                a = int(
                    input(
                        """
Windows 10 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Add Copy path to context menu
[4] - Disable News and Interests
[5] - Enable News and Interests
[6] - Disable telemetry (powershell script!!)
[7] - Disable defender (Safe mode. Maybe works on 1903+)
[8] - Disable Office telemetry
[9] - Disable Office telemetry (tasks)
[10] - Enable GPEDIT (for Windows 10 Home)
[11] - Onedrive uninstaller
[12] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
[13] - Add Takeowner ship to context menu
[14] - Activate Windows old photo viewer
[15] - Exit
>>> """
                    )
                )
        if a == 1:
            system("files/10/remove_ini_cache.reg")
        elif a == 2:
            system("files/10/add_ini_cache.reg")
        elif a == 3:
            system("files/10/Add_Copy_path_to_context_menu.reg")
        elif a == 4:
            system(
                "files/10/Disable_News_and_Interests_on_taskbar_feature_for_all_users.reg"
            )
        elif a == 5:
            system(
                "files/10/Enable_News_and_Interests_on_taskbar_feature_for_all_users.reg"
            )
        elif a == 6:
            system("files/10/disable-telemetry.ps1")
        elif a == 7:
            system("files/10/DisableDefenderSafeMode1903Plus.bat")
        elif a == 8:
            system("files/10/DisableOfficeTelemetry.reg")
        elif a == 9:
            system("files/10/DisableOfficeTelemetryTasks.bat")
        elif a == 10:
            system("files/10/EnableGPeditinW10Home.bat")
        elif a == 11:
            system("files/10/OneDrive_Uninstaller.bat")
        elif a == 12:
            system("files/10/This_PC_-_Remove_3D_Objects_64-bit.reg")
        elif a == 13:
            system("files/7/InstallTakeOwnership.reg")
        elif a == 14:
            system("files/10/Activate_Windows_Old_Photo_Viewer_on_Windows_10.reg")
        elif a == 15:
            return self.menu()
        input("After tweaks please, restart your PC.")
        self.menu()

    def win11menu(self):
        self.clear()
        print(self.logo)
        while True:
            try:
                a = int(
                    input(
                        """
Windows 11 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Add Copy path to context menu
[4] - Enable Old context menu
[5] - Disable old context menu
[6] - Enable Windows 10 Taskbar
[7] - Disable Windows 10 Taskbar
[8] - Disable search in taskbar
[9] - Enable search in taskbar
[10] - Small Icons in taskbar
[11] - Disable defender (Safe mode)
[12] - Disable Office telemetry
[13] - Disable Office telemetry (tasks)
[14] - Onedrive uninstaller
[15] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
[16] - Add Takeowner ship to context menu
[17] - Exit
>>> """
                    )
                )
                if a in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]:
                    break
                else:
                    raise ValueError
            except ValueError:
                print("This is not a number! Try again!")
                a = int(
                    input(
                        """
Windows 11 tweaks:

[1] - Remove ini cache (desktop.ini)
[2] - Add ini cache
[3] - Add Copy path to context menu
[4] - Enable Old context menu
[5] - Disable old context menu
[6] - Enable Windows 10 Taskbar
[7] - Disable Windows 10 Taskbar
[8] - Disable search in taskbar
[9] - Enable search in taskbar
[10] - Small Icons in taskbar
[11] - Disable defender (Safe mode)
[12] - Disable Office telemetry
[13] - Disable Office telemetry (tasks)
[14] - Onedrive uninstaller
[15] - Remove 3D Objects (64-bit) (Thanks CreeperLifeYT#1267)
[16] - Add Takeowner ship to context menu
[17] - Exit
>>> """
                    )
                )
        if a == 1:
            system("files/10/remove_ini_cache.reg")
        elif a == 2:
            system("files/10/add_ini_cache.reg")
        elif a == 3:
            system("files/10/Add_Copy_path_to_context_menu.reg")
        elif a == 4:
            system("files/11/old_context_menu.reg")
        elif a == 5:
            system("files/11/del_old_context_menu.reg")
        elif a == 6:
            system("files/11/windows_10_taskbar.reg")
        elif a == 7:
            system("files/11/remove_10_taskbar.reg")
        elif a == 8:
            system("files/11/disable_search.reg")
        elif a == 9:
            system("files/11/enable_search.reg")
        elif a == 10:
            system("files/11/small_icons.reg")
        elif a == 11:
            system("files/10/DisableDefenderSafeMode1903Plus.bat")
        elif a == 12:
            system("files/10/DisableOfficeTelemetry.reg")
        elif a == 13:
            system("files/10/DisableOfficeTelemetryTasks.bat")
        elif a == 14:
            system("files/10/OneDrive_Uninstaller.bat")
        elif a == 15:
            system("files/10/This_PC_-_Remove_3D_Objects_64-bit.reg")
        elif a == 16:
            system("files/7/InstallTakeOwnership.reg")
        elif a == 17:
            return self.menu()
        input("After tweaks please, restart your PC.")
        self.menu()

    def menu(self):
        self.clear()
        print(self.logo)
        print("WHEN USING THIS TOOL, YOU EDITING WINDOWS REGISTRY. USE AT A OWN RISK")
        print(f"OS: {platform.system()} {platform.release()}")
        print("By PosReady")
        print("Github: https://github.com/posreadyxp/AT-Tool")
        while True:
            try:
                question = int(
                    input(
                        """
Enter a one:

[1] - Windows XP Tweaks
[2] - Windows 7 Tweaks
[3] - Windows 10 Tweaks
[4] - Windows 11 tweaks

>>> """
                    )
                )
                if question in [1, 2, 3, 4]:
                    break
            except ValueError:
                print("This is not a number! Try again")
                question = int(
                    input(
                        """
Enter a one:

[1] - Windows XP Tweaks
[2] - Windows 7 Tweaks
[3] - Windows 10 Tweaks
[4] - Windows 11 tweaks

>>> """
                    )
                )
        if question == self.winxp:
            self.windowsxpmenu()
        elif question == self.win7:
            self.win7menu()
        elif question == self.win10:
            self.win10menu()
        elif question == self.win11:
            self.win11menu()

    def check(self):
        if platform.system() == "Windows":
            if ctypes.windll.shell32.IsUserAnAdmin() != 0:
                self.menu()
            else:
                print("Need admininstartor privileges for program!")
                sleep(2)
                _exit(0)
        else:
            print("Your OS isn't Windows!")
            sleep(3)
            _exit(0)


if __name__ == "__main__":
    at = AT()
    at.check()
