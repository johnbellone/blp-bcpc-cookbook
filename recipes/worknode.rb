#
# Cookbook Name:: blp-bcpc
# Recipe:: worknode
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

include_recipe 'percona::package_repo'
include_recipe 'chef-client::delete-validation'
include_recipe 'chef-client::config'

node.tag('bcpc-worknode')
