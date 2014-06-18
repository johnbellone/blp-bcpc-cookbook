#
# Cookbook Name:: blp-bcpc
# Attribute:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
default[:blp][:bcpc][:bootnode][:interface] = 'eth0'
default[:blp][:bcpc][:bootnode][:pxe_interface] = 'eth1'
default[:blp][:bcpc][:bootnode][:dhcp_subnet] = '10.0.100.0'
default[:blp][:bcpc][:bootnode][:dhcp_range] = '10.0.100.14 10.0.100.250'

default[:bcpc][:bootnode][:vault][:bag_name] = 'configs'
default[:bcpc][:bootnode][:vault][:bag_item] = 'bootnode'
default[:bcpc][:bootnode][:vault][:admins] = []
default[:bcpc][:bootnode][:vault][:search_query] = '*.*'

default[:bcpc][:bootnode][:cobbler][:dir] = '/var/lib/cobbler'
default[:bcpc][:bootnode][:cobbler][:root_password] = 'password'
