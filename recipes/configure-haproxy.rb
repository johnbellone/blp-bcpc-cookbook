#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-haproxy
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

node.set[:haproxy][:incoming_address] = node[:blp][:bcpc][:management][:ip]
include_recipe 'haproxy::default'
