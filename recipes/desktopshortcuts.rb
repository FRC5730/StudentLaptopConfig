#
# Cookbook:: frc_laptop
# Recipe:: desktopshortcuts
#
# Copyright:: 2017, The Authors, All Rights Reserved.
require 'win32ole'
all_users_desktop = WIN32OLE.new("WScript.Shell").SpecialFolders("AllUsersDesktop")

windows_shortcut "#{all_users_desktop}\\A360 Desktop.lnk" do
  target "C:\\Program Files\\Autodesk\\Autodesk Sync\\AdSync.exe /browseLocal"
  description "A360 Desktop"
  iconlocation "%SystemRoot%\\Installer\\{7758802D-9486-4883-9927-CCAC366A3BA4}\\SetupIcon,0"
end

windows_shortcut "#{all_users_desktop}\\Autodesk Desktop App.lnk" do
  target "C:\\Program Files (x86)\\Autodesk\\Autodesk Desktop App\\AutodeskDesktopApp.exe"
  description "Autodesk Desktop App"
  iconlocation "C:\\Program Files (x86)\\Autodesk\\Autodesk Desktop App\\AutodeskDesktopApp.exe,0"
end

windows_shortcut "#{all_users_desktop}\\Autodesk Inventor Professional 2017.lnk" do
  target "C:\\Program Files\\Autodesk\\Inventor 2017\\Bin\\Inventor.exe"
  description "Autodesk Inventor Professional 2017"
  iconlocation "%SystemRoot%\\Installer\\{7F4DD591-2164-0001-0000-7107D70F3DB4}\\InventorPro.ico,0"
end

windows_shortcut "#{all_users_desktop}\\Eclipse.lnk" do
  target "C:\\eclipse\\eclipse.exe"
  description "Eclipse"
  iconlocation "C:\\eclipse\\eclipse.exe,0"
end

windows_shortcut "#{all_users_desktop}\\FRC Driver Station.lnk" do
  target "C:\\Program Files (x86)\\FRC Driver Station\\DriverStation.exe"
  description "FRC Driver Station"
  iconlocation "C:\\Program Files (x86)\\FRC Driver Station\\DriverStation.exe,0"
end

windows_shortcut "#{all_users_desktop}\\Google Chrome.lnk" do
  target "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
  description "Google Chrome"
  iconlocation "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe,0"
end
    