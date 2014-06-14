#
# Cookbook Name:: blp-bcpc
# Recipe:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

role 'blp-bcpc.bootnode' do
  recipe 'blp-bcpc::default'
  recipe 'cobbler::default'
  recipe 'cobbler::web'
end
