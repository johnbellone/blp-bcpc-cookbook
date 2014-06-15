#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::base'
include_recipe 'blp-bcpc::worknode'

include_recipe 'blp-bcpc::configure-chef-server'
include_recipe 'blp-bcpc::configure-pdns'
include_recipe 'blp-bcpc::configure-rabbitmq'
