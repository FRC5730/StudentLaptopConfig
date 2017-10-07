#
# Cookbook:: frc_laptop
# Recipe:: default
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.

# This is a wrapper recipe that includes separate recipes for each chunk of work being done.
include_recipe 'chef-client'
include_recipe 'frc_laptop::activation'
include_recipe 'frc_laptop::windowsupdates'
include_recipe 'frc_laptop::disable_uac'