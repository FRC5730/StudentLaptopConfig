#
# Cookbook:: frc_laptop
# Recipe:: windowsupdates
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

WUA = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'

registry_key 'Enable Auto Updates' do
  key "#{WUA}"
  values [{
    name: 'NoAutoUpdate',
    type: 'dword',
    data: '0'
  }]
  action :create
end

registry_key 'Enable Auto download and install' do
  key "#{WUA}"
  values [{
    name: 'AUOptions',
    type: 'dword',
    data: '4'
  }]
  action :create
end

registry_key 'Force a check every day' do
    key "#{WUA}"
    values [{
      name: 'ScheduledInstallDay',
      type: 'dword',
      data: '0'
    }]
    action :create
  end

registry_key 'Don\'t restart if there are users logged in' do
    key "#{WUA}"
    values [{
      name: 'NoAutoRebootWithLoggedOnUsers',
      type: 'dword',
      data: '1'
    }]
    action :create
  end