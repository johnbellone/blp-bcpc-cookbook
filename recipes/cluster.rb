#
# Cookbook Name:: blp-bcpc
# Recipe:: cluster
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::headnode'
include_recipe 'blp-bcpc::worknode'

machine 'headnode' do
  tag 'bcpc.headnode'
  role 'blp-bcpc.headnode'
end

machine 'worknode' do
  tag 'bcpc.worknode'
  role 'blp-bcpc.worknode'
end
