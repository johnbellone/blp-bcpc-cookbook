#
# Cookbook Name:: blp-bcpc
# Recipe:: worknode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

role 'blp-bcpc.worknode' do
  recipe 'blp-bcpc::default'
  recipe 'blp-bcpc::configure-ceph'
  recipe 'blp-bcpc::configure-chef'
  recipe 'blp-bcpc::configure-ldap'
  recipe 'blp-bcpc::configure-logstash'
  recipe 'blp-bcpc::configure-psql'
  recipe 'blp-bcpc::configure-ssh'
  recipe 'blp-bcpc::configure-zabbix'
end

machine 'worknode' do
  role 'blp-bcpc.worknode'
  tag 'bcpc.worknode'

  not_if { tagged? 'bcpc.headnode' }
end
