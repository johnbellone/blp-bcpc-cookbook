#
# Cookbook Name:: blp-bcpc
# Recipe:: bootstrap
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

# Use the Chef Metal machine resource to provision a new node as
# with the recipe that bootstraps the cluster configuration.
machine 'bootstrap' do
  tag 'bcpc.bootstrap'

  recipe 'blp-bcpc::default'
  recipe 'cobbler::default'
  recipe 'cobbler::web'
end
