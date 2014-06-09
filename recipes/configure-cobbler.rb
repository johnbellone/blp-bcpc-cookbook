#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-cobbler
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

return unless tagged?('bcpc.bootstrap')

include_recipe 'cobbler::default'
include_recipe 'cobbler::web'

chef_data_bag 'configs'
chef_vault_secret 'cobbler' do
  data_bag 'configs'
  raw_data({
    cobbler: {
      root_password: node[:bcpc][:config][:password],

    }
  })
  action :create_if_missing
end
