#
# Cookbook Name:: blp-bcpc
# Recipe:: headnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::worknode'

machine 'headnode' do
  recipe 'pdns::server'
  recipe 'openldap::master'
  recipe 'openssh::default'
  recipe 'chef-server::default'
  recipe 'rabbitmq::default'

  tag 'blp.bcpc.headnode'
end

ruby_block 'Configure: bcpc.headnode' do
  subscribes :run, 'machine[headnode]', :immediately
  block do
    lb = Chef::HaproxyLB.new('rabbitmq', run_context)
    lb.bind(':5672')
    lb.params(balance: 'leastconn', option: 'tcplog', option: 'tcpka')
    lb.run_action(:create)
  end
end
