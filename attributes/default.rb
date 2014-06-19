#
# Cookbook Name:: blp-bcpc
# Attribute:: default
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
default[:blp][:bcpc][:domain_name] = 'bcpc.example.com'
default[:blp][:bcpc][:virt_type] = 'qemu'
default[:blp][:bcpc][:metadata][:ip] = '169.254.169.254'

default[:blp][:bcpc][:management][:interface] = 'eth0'
default[:blp][:bcpc][:management][:vip] = '10.17.1.15'
default[:blp][:bcpc][:management][:netmask] = '255.255.255.0'
default[:blp][:bcpc][:management][:cidr] = '10.17.0.1/24'
default[:blp][:bcpc][:management][:gateway] = '10.17.1.1'

default[:blp][:bcpc][:storage][:interface] = 'eth1'
default[:blp][:bcpc][:storage][:netmask] = '255.255.255.0'
default[:blp][:bcpc][:storage][:cidr] = '100.100.0.0/24'
default[:blp][:bcpc][:storage][:gateway] = '100.100.0.1'

default[:blp][:bcpc][:floating][:interface] = 'eth2'
default[:blp][:bcpc][:floating][:vip] = '192.168.43.15'
default[:blp][:bcpc][:floating][:netmask] = '255.255.255.0'
default[:blp][:bcpc][:floating][:cidr] = '192.168.43.0/24'

default[:blp][:bcpc][:fixed][:cidr] = '1.127.0.0/16'
default[:blp][:bcpc][:fixed][:vlan_start] = '1000'
default[:blp][:bcpc][:fixed][:num_networks] = 100
default[:blp][:bcpc][:fixed][:network_size] = 100
default[:blp][:bcpc][:fixed][:dhcp_lease_size] = 3600
