#
# Cookbook:: frc_laptop
# Recipe:: activation
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

keys = data_bag_item('cdkey', 'activation_key')

execute 'Install Windows Product Key' do
  command "start %windir%\system32\slmgr.vbs /ipk keys['cdkey']"
  action :run
  guard_interpreter :powershell_script
  not_if 'test-path c:\windows\activated.txt'
end

execute 'Activate Windows' do
    command 'start %windir%\system32\slmgr.vbs /ato'
    action :run
    guard_interpreter :powershell_script
    not_if 'test-path c:\windows\activated.txt'
end

file 'c:\windows\activated.txt' do
  content 'Activation was attempted. Check System properties to see if it was successful.'
  action :create
end
