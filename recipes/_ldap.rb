#
# Cookbook Name:: blp-bcpc
# Recipe:: _ldap
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
if tagged?('bcpc.headnode')
  include_recipe 'openldap::master'
else
  include_recipe 'openldap::client'
end
