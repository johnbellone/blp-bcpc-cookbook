#
# Cookbook Name:: blp-bcpc
# Recipe:: _zabbix
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
if tagged?('bcpc.headnode')
  node.default['zabbic']['server']['install'] = true

  include_recipe 'zabbix::server'
end

include_recipe 'zabbix::default'
