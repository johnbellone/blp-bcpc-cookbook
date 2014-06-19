#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

if tagged?('bcpc.headnode')
  include_recipe 'ceph::default'
else
  include_recipe 'ceph::mon'
end

include_recipe 'ceph::osd'
include_recipe 'ceph::cephfs'
