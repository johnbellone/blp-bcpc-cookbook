#
# Cookbook Name:: blp-bcpc
# Recipe:: worknode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
tag('bcpc.worknode')

include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::_apache'
include_recipe 'blp-bcpc::_ceph'
include_recipe 'blp-bcpc::_chef'
include_recipe 'blp-bcpc::_firewall'
include_recipe 'blp-bcpc::_haproxy'
include_recipe 'blp-bcpc::_logstash'
include_recipe 'blp-bcpc::_ldap'
include_recipe 'blp-bcpc::_pdns'
include_recipe 'blp-bcpc::_psql'
include_recipe 'blp-bcpc::_rabbitmq'
include_recipe 'blp-bcpc::_ssh'
include_recipe 'blp-bcpc::_zabbix'
