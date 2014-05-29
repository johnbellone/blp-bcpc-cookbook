#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-apache
#
# Copyright (C) 2013-2014 Bloomberg Finance L.P.
#
node.default[:apache][:listen_ports] = %w(80 443)

include_recipe 'apache2'
include_recipe 'apache2::logrotate'
include_recipe 'apache2::mod_fastcgi'
include_recipe 'apache2::mod_python'
include_recipe 'apache2::mod_php5'
include_recipe 'apache2::mod_wsgi'

include_recipe 'apache2::iptables' if redhat?
