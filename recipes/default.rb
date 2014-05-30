#
# Cookbook Name:: blp-bcpc
# Recipe:: default
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'chef-sugar'

node[:bcpc][:packages][:common].each { |pkg| package pkg }
node[:bcpc][:packages][:debug].each { |pkg| package pkg }

include_recipe 'blp-bcpc::configure-redhat' if redhat?
include_recipe 'blp-bcpc::configure-ubuntu' if ubuntu?

include_recipe 'ntp'
include_recipe 'resolver'
include_recipe 'percona::package_repo'
include_recipe 'chef-client::delete-validation'
include_recipe 'chef-client::config'
