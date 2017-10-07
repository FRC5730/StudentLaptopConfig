#
# Cookbook:: frc_laptop
# Recipe:: disable_firewall
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

firewall 'default' do
    enabled false
    action :nothing
  end