#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-chef
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

if tagged?('bcpc.headnode')
  include_recipe 'chef-server::default'
else
  include_recipe 'chef-client::delete-validation'
  include_recipe 'chef-client::config'
end
