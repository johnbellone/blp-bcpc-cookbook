#
# Cookbook Name:: blp-bcpc
# Recipe:: base
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

if rhel?
  include_recipe 'yum::default'
  include_recipe 'yum-epel::default'
  include_recipe 'ceph::rpm'
end

if ubuntu?
  include_recipe 'ubuntu::default'
  include_recipe 'ceph::apt'
end

include_recipe 'ntp::default'
include_recipe 'selinux::disabled'
