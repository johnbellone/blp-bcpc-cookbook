#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-logstash
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

node.default[:logstash][:elasticsearch_query] = 'tag:bcpc.headnode'
node.default[:logstash][:graphite_query] = 'tag:bcpc.headnode'

if tagged?('bcpc.headnode')
  node.default[:logstash][:install_rabbitmq] = false

  include_recipe 'logstash::server'
else
  include_recipe 'logstash::beaver'
end
