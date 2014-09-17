name             'blp-bcpc'
maintainer       'Bloomberg Finance L.P.'
maintainer_email 'jbellone@bloomberg.net'
license          'Apache v2.0'
description      'Installs/Configures BCPC - Bloomberg Clustered Private Cloud'
long_description 'Installs/Configures BCPC - Bloomberg Clustered Private Cloud'
version          '0.1.0'

recipe 'blp-bcpc::bootnode', 'Configure target as a BCPC bootstrap node.'
recipe 'blp-bcpc::headnode', 'Configure target as a BCPC head node.'
recipe 'blp-bcpc::worknode', 'Configure target as a BCPC work node.'

%w(centos redhat).each do |name|
  supports name, '~> 6.5'
  supports name, '~> 7.0'
end

supports 'ubuntu', '= 12.04'
supports 'ubuntu', '= 14.04'

depends 'apt'
depends 'apache2'
depends 'ceph'
depends 'chef-client'
depends 'chef-metal'
depends 'chef-server'
depends 'chef-sugar'
depends 'chef-vault'
depends 'cobblerd'
depends 'dhcp'
depends 'firewall'
depends 'elasticsearch'
depends 'graphite'
depends 'haproxy'
depends 'iptables'
depends 'logstash'
depends 'ntp'
depends 'openldap'
depends 'openssh'
depends 'postgresql'
depends 'pdns'
depends 'rabbitmq'
depends 'resolver'
depends 'selinux'
depends 'ubuntu'
depends 'yum'
depends 'yum-centos'
depends 'yum-epel'
depends 'zabbix'

%w(block-storage common dashboard compute identity image network object-storage metering).each do |name|
  depends "openstack-#{name}"
end
