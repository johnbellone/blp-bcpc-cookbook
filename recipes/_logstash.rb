#
# Cookbook Name:: blp-bcpc
# Recipe:: _logstash
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

node.default['logstash']['elasticsearch_query'] = 'tags:bcpc.headnode'
node.default['logstash']['graphite_query'] = 'tags:bcpc.headnode'

if tagged?('bcpc.headnode')
  node.default['logstash']['install_rabbitmq'] = false

  include_recipe 'logstash::server'
else
  include_recipe 'logstash::beaver'
end
