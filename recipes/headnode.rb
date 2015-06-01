#
# Cookbook: blp-bcpc-cookbook
# License: Apache 2.0
# Copyright 2013-2015 Bloomberg Finance L.P.
#
node.tag('bcpc.headnode')
include_recipe 'blp-bcpc::default'
include_recipe 'ceph::mon', 'ceph::radosgw'
include_recipe 'haproxy::default'
include_recipe 'postgresql::server'
include_recipe 'pdns::authoritative'
include_recipe 'rabbitmq-cluster::master'
