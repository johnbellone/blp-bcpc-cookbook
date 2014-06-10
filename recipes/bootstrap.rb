#
# Cookbook Name:: blp-bcpc
# Recipe:: bootstrap
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

node.tag('bcpc.bootstrap')

include_recipe 'blp-bcpc::default'
include_recipe 'cobbler::default'
include_recipe 'cobbler::web'

chef_data_bag node[:bcpc][:bootstrap][:vault][:bag_name]
chef_vault_secret node[:bcpc][:bootstrap][:vault][:bag_item] do
  admins node[:bcpc][:bootstrap][:vault][:admins]
  search node[:bcpc][:bootstrap][:vault][:search_query]
  data_bag node[:bcpc][:bootstrap][:vault][:bag_name]
  raw_data({
    cobbler: {
      root_password: node[:bcpc][:bootstrap][:cobbler][:root_password]
    }
  })
  action :create_if_missing
end
