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

default[:bcpc][:bootnode][:cobbler][:dir] = '/var/lib/cobbler'
default[:bcpc][:bootnode][:cobbler][:root_password] = 'password'
default[:bcpc][:bootnode][:cobbler][:images] = {
  'centos-6.5-netinstall' => 'http://centos.chi.host-engine.com/6.5/isos/x86_64/CentOS-6.5-x86_64-netinstall.iso',
  'centos-5.10-netinstall' => 'http://centos.chi.host-engine.com/5.10/isos/x86_64/CentOS-5.10-x86_64-netinstall.iso',
  'ubuntu-12.04-minimal' => 'http://archive.ubuntu.com/ubuntu/dists/precise/main/installer-amd64/current/images/netboot/mini.iso',
  'ubuntu-14.04-minimal' => 'http://archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/current/images/netboot/mini.iso'
}
