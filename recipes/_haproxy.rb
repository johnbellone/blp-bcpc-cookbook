#
# Cookbook Name:: blp-bcpc
# Recipe:: _haproxy
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
node.default['haproxy']['incoming_address'] = node['blp']['bcpc']['management']['ip']
include_recipe 'haproxy::default'
