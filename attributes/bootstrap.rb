#
# Cookbook Name:: blp-bcpc
# Attribute:: bootstrap
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

default[:bcpc][:bootstrap][:vault][:bag_name] = 'configs'
default[:bcpc][:bootstrap][:vault][:bag_item] = 'bootstrap'
default[:bcpc][:bootstrap][:vault][:admins] = []
default[:bcpc][:bootstrap][:vault][:search_query] = '*.*'

default[:bcpc][:bootstrap][:cobbler][:root_password] = 'password'
