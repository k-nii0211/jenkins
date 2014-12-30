#
# Cookbook Name:: jenkins
# Recipe:: master
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::repository'

package 'jenkins' do
  version node[:jenkins][:version]
end

service 'jenkins' do
  supports status: true, restart: true, reload: true
  action  [:enable, :start]
end