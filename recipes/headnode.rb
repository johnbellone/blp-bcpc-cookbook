#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2014 Bloomberg Finance L.P.
#
node.tag('bcpc-worknode')

include_recipe 'blp-bcpc::worknode'
