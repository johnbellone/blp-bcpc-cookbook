#
# Cookbook Name:: blp-bcpc
# Recipe:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::base'

include_recipe 'cobbler::default'
include_recipe 'cobbler::web'
