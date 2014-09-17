#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-cobbler
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

# Configure isc-dhcp-server for the bootnode.
node.set['dhcp']['use_bags'] = false
node.set['dhcp']['parameters']['next-server'] = '127.0.0.1'
include_recipe 'dhcp::server'

dhcp_subnet node['blp']['bcpc']['bootnode']['dhcp_subnet'] do
  range node['bcpc']['bcpc']['bootnode']['dhcp_range']
  notifies :restart, 'service[dhcp]', :delayed
end

include_recipe 'cobblerd::centos'
include_recipe 'cobblerd::ubuntu'
include_recipe 'cobblerd::web'

template '/etc/cobbler/settings' do
  source 'cobbler.settings.erb'
  mode 0644
  notifies :restart, 'service[cobbler]', :delayed
end
