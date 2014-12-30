#
# Cookbook Name:: jenkins
# Recipe:: repository
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
  when 'debian'
    include_recipe 'apt::default'

    apt_repository 'jenkins' do
      uri 'http://pkg.jenkins-ci.org/debian'
      distribution 'binary/'
      key 'https://jenkins-ci.org/debian/jenkins-ci.org.key'
    end
end