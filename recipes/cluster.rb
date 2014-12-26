#
# Cookbook Name:: blp-bcpc
# Recipe:: cluster
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
machine 'headnode' do
  recipe 'blp-bcpc::headnode'
end

machine 'worknode' do
  recipe 'blp-bcpc::worknode'
end
