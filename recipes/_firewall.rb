#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-firewall
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

if debian?
  include_recipe 'firewall'

  firewall_rule 'ssh' do
    port 22
    action :allow
  end

  firewall_rule 'http/https' do
    protocol :tcp
    ports [80, 443]
    action :allow
  end

  firewall_rule 'dhcp' do
    protocol :udp
    source node[:blp][:bcpc][:bootstrap][:pxe_interface]
    port 68
    dest_port 67
    action :allow
  end

  firewall_rule 'tftp' do
    protocol 'tftp'
    source node[:blp][:bcpc][:bootstrap][:pxe_interface]
    destination node[:blp][:bcpc][:bootstrap][:server]
    action :allow
  end
end

if rhel?
  include_recipe 'iptables'

  iptables_rule 'dhcp'
  iptables_rule 'http'
  iptables_rule 'https'
  iptables_rule 'ssh'
  iptables_rule 'tftp'
end
