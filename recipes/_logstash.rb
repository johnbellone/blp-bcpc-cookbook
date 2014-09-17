#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-logstash
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

node.set[:logstash][:elasticsearch_query] = 'tag:bcpc.headnode'
node.set[:logstash][:graphite_query] = 'tag:bcpc.headnode'

if tagged?('bcpc.headnode')
  node.set[:logstash][:install_rabbitmq] = false

  include_recipe 'logstash::server'
else
  include_recipe 'logstash::beaver'
end
