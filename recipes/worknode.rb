#
# Cookbook Name:: blp-bcpc
# Recipe:: worknode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::base'

include_recipe 'blp-bcpc::_ceph'
include_recipe 'blp-bcpc::_chef'
include_recipe 'blp-bcpc::_ldap'
include_recipe 'blp-bcpc::_logstash'
include_recipe 'blp-bcpc::_psql'
include_recipe 'blp-bcpc::_ssh'
include_recipe 'blp-bcpc::_zabbix'
