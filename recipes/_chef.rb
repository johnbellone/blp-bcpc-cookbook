#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-chef
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
if tagged?('bcpc.headnode')
  node.default['chef-server']['configuration'] = {
    webui: {
      enabled: false
    }
  }

  include_recipe 'chef-server::default'
else
  include_recipe 'chef-client::default'
  include_recipe 'chef-client::config'
  include_recipe 'chef-client::cron'
  include_recipe 'chef-client::delete_validation'
end
