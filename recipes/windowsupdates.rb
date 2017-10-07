#
# Cookbook:: frc_laptop
# Recipe:: windowsupdates
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

# Set up the keys for managing Windows Updates
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  recursive true
  values [
    { # Make sure Windows Updates are enabled
      :name => 'NoAutoUpdate',
      :type => :dword,
      :data => 0
    },
    { # Set to auto download an install
      :name => 'AUOptions',
      :type => :dword,
      :data => 4
    },
    { # check every day
      :name => 'ScheduledInstallDay',
      :type => :dword,
      :data => 0
    },
    { # Don't force a reboot if someone's logged in
      :name => 'NoAutoRebootWithLoggedOnUsers',
      :type => :dword,
      :data => 1
    }
  ]
  action :create
end