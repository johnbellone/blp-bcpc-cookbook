#
# Cookbook Name:: blp-bcpc
# Attribute:: network
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

default['bcpc']['management']['interface'] = 'eth0'
default['bcpc']['management']['vip'] = '10.17.1.15'
default['bcpc']['management']['netmask'] = '255.255.255.0'
default['bcpc']['management']['cidr'] = '10.17.0.1/24'
default['bcpc']['management']['gateway'] = '10.17.1.1'
default['bcpc']['metadata']['ip'] = '169.254.169.254'

default['bcpc']['storage']['interface'] = 'eth1'
default['bcpc']['storage']['netmask'] = '255.255.255.0'
default['bcpc']['storage']['cidr'] = '100.100.0.0/24'
default['bcpc']['storage']['gateway'] = '100.100.0.1'

default['bcpc']['floating']['interface'] = 'eth2'
default['bcpc']['floating']['vip'] = '192.168.43.15'
default['bcpc']['floating']['netmask'] = '255.255.255.0'
default['bcpc']['floating']['cidr'] = '192.168.43.0/24'
default['bcpc']['floating']['gateway'] = '192.168.43.2'
default['bcpc']['floating']['available_subnet'] = '192.168.43.128/15'
default['bcpc']['fixed']['cidr'] = '1.127.0.0/16'
default['bcpc']['fixed']['vlan_start'] = '1000'
default['bcpc']['fixed']['num_networks'] = '100'
default['bcpc']['fixed']['network_size'] = '256'
default['bcpc']['fixed']['dhcp_lease_time'] = 3600
