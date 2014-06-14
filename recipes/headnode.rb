#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::worknode'

role 'blp-bcpc.headnode' do
  recipe 'blp-bcpc::default'
  recipe 'blp-bcpc::configure-chef-server'
  recipe 'blp-bcpc::configure-pdns'
  recipe 'blp-bcpc::configure-rabbitmq'
  role 'blp-bcpc.worknode'
end
