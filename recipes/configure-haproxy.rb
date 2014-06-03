#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-haproxy
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

node.default['haproxy']['incoming_address'] = node['bcpc']['management']['ip']

include_recipe 'haproxy::default'
