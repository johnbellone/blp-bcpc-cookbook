#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

machine 'headnode' do
  tag 'bcpc.headnode'

  recipe 'blp-bcpc::configure-chef-server'
  recipe 'blp-bcpc::configure-pdns'
  recipe 'blp-bcpc::configure-rabbitmq'
  recipe 'blp-bcpc::worknode'
  role 'blp-bcpc.worknode'
end
