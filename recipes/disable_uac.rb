#
# Cookbook:: frc_laptop
# Recipe:: disable_uac
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' do
    values [{
      :name => 'EnableLUA',
      :type => :dword,
      :data => 0
    }]
    action :create
  end