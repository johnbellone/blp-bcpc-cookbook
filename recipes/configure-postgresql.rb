#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-postgresql
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

node.default['postgresql']['enable_pgdg_apt'] = true
node.default['postgresql']['enable_pgdg_yum'] = true

if tagged?('bcpc.headnode')
  include_recipe 'postgresql::server'
end

include_recipe 'postgresql::default'
