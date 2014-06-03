#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
node.tag('bcpc.headnode')
include_recipe 'blp-bcpc::worknode'
