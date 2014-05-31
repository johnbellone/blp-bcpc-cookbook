#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-firewall
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'chef-sugar'

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
    source node[:bcpc][:bootstrap][:pxe_interface]
    port 68
    dest_port 67
    action :allow
  end

  firewall_rule 'tftp' do
    protocol 'tftp'
    source node[:bcpc][:bootstrap][:pxe_interface]
    destination node[:bcpc][:bootstrap][:server]
    action :allow
  end
end

if redhat?
  include_recipe 'iptables'

  iptables_rule 'dhcp'
  iptables_rule 'http'
  iptables_rule 'https'
  iptables_rule 'ssh'
  iptables_rule 'tftp'
end
