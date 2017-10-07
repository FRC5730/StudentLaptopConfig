#
# Cookbook:: frc_laptop
# Recipe:: installedsoftware
#
# Copyright:: 2017, FRC 5730, All Rights Reserved.
package 'Autodesk Inventor Professional 2017' do
  action :nothing
end

file 'c:\eclipse\eclipse.exe' do
  action :nothing
end
