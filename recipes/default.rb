#
# Cookbook: blp-bcpc-cookbook
# License: Apache 2.0
# Copyright 2013-2015 Bloomberg Finance L.P.
#
include_recipe 'chef-sugar::default'

include_recipe 'resolver::default'
include_recipe 'ntp::default'

node.default['chef_client']['init_style'] = 'none'
node.default['chef_client']['cron']['use_cron_d'] = true
node.default['chef_client']['configuration']['enable_reporting'] = true
include_recipe 'chef-client::config', 'chef-client::cron', 'chef-client::delete_validation'

if rhel?
  include_recipe 'yum::default'
  include_recipe 'yum-epel::default'
  include_recipe 'yum-centos::default' if centos?
  include_recipe 'ceph::rpm'
end

if ubuntu?
  include_recipe 'ubuntu::default'
  include_recipe 'ceph::apt'
end

include_recipe 'os-hardening::default'
include_recipe 'ssh-hardening::default'
include_recipe 'postgresql::client'
