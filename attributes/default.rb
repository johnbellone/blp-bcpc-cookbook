#
# Cookbook: blp-bcpc-cookbook
# License: Apache 2.0
# Copyright 2013-2015 Bloomberg Finance L.P.
#
default['blp']['bcpc'].tap do |config|
  config['domain_name'] = 'bcpc.example.com'
  config['virt_type'] = 'qemu'
  config['metadata']['ip'] = '169.254.169.254'

  config['management']['interface'] = 'eth0'
  config['management']['vip'] = '10.17.1.15'
  config['management']['netmask'] = '255.255.255.0'
  config['management']['cidr'] = '10.17.0.1/24'
  config['management']['gateway'] = '10.17.1.1'

  config['storage']['interface'] = 'eth1'
  config['storage']['netmask'] = '255.255.255.0'
  config['storage']['cidr'] = '100.100.0.0/24'
  config['storage']['gateway'] = '100.100.0.1'

  config['floating']['interface'] = 'eth2'
  config['floating']['netmask'] = '255.255.255.0'
  config['floating']['cidr'] = '192.168.43.0/24'
  config['floating']['vip'] = '192.168.43.15'

  config['fixed']['cidr'] = '1.127.0.0/16'
  config['fixed']['vlan_start'] = '1000'
  config['fixed']['num_networks'] = 100
  config['fixed']['network_size'] = 100
  config['fixed']['dhcp_lease_size'] = 3600
end
