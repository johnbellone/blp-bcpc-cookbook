#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-cobbler
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

return unless tagged?('bcpc.bootstrap')
