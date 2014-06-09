#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-zabbix
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

if tagged?('bcpc.headnode')
  node.default[:zabbix][:server][:install] = true

  include_recipe 'zabbix::server'
end

include_recipe 'zabbix::default'
