#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-ldap
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

if tagged?('bcpc.headnode')
  include_recipe 'openldap::master'
else
  include_recipe 'openldap::client'
end
