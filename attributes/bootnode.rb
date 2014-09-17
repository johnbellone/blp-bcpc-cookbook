#
# Cookbook Name:: blp-bcpc
# Attribute:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
default['blp']['bcpc']['bootnode'].tap do |bootnode|
  bootnode['interface'] = 'eth0'
  bootnode['pxe_interface'] = 'eth1'
  bootnode['dhcp_subnet'] = '10.0.100.0'
  bootnode['dhcp_range'] = '10.0.100.14 10.0.100.250'

  bootnode['vault']['bag_name'] = 'configs'
  bootnode['vault']['bag_item'] = 'bootnode'
  bootnode['vault']['admins'] = []
  bootnode['vault']['search_query'] = '*.*'

  bootnode['cobbler']['dir'] = '/var/lib/cobbler'
  bootnode['cobbler']['root_password'] = 'password'
end
