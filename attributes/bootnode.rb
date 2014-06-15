#
# Cookbook Name:: blp-bcpc
# Attribute:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

default[:bcpc][:bootnode][:vault][:bag_name] = 'configs'
default[:bcpc][:bootnode][:vault][:bag_item] = 'bootnode'
default[:bcpc][:bootnode][:vault][:admins] = []
default[:bcpc][:bootnode][:vault][:search_query] = '*.*'

default[:bcpc][:bootnode][:cobbler][:root_password] = 'password'
