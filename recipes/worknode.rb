#
# Cookbook: blp-bcpc-cookbook
# License: Apache 2.0
# Copyright 2013-2015 Bloomberg Finance L.P.
#
node.tag('bcpc.worknode')
include_recipe 'blp-bcpc::default'
include_recipe 'ceph::osd', 'ceph::radosgw'
include_recipe 'pdns::recursor'
include_recipe 'rabbitmq-cluster::slave'
