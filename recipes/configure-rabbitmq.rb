#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-rabbitmq
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

management_ip = node[:blp][:bcpc][:management][:ip]

haproxy_lb 'rabbitmq' do
  bind ':5672'
  servers get_head_nodes.each_with_index do |host, i|
    "rmq#{i} #{host}:5672 #{management_ip}:5672 check inter 1s rise 1 fall observe layer4"
  end
  params({
    'balance' => 'leastconn',
    'option' => 'tcplog',
    'option' => 'tcpka'
  })
end

include_recipe 'rabbitmq::default'
