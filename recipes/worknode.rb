#
# Cookbook Name:: blp-bcpc
# Recipe:: worknode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::base'

include_recipe 'blp-bcpc::configure-ceph'
include_recipe 'blp-bcpc::configure-chef'
include_recipe 'blp-bcpc::configure-ldap'
include_recipe 'blp-bcpc::configure-logstash'
include_recipe 'blp-bcpc::configure-psql'
include_recipe 'blp-bcpc::configure-ssh'
include_recipe 'blp-bcpc::configure-zabbix'
