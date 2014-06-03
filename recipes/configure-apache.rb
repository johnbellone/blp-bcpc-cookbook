#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-apache
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

include_recipe 'chef-sugar::default'

include_recipe 'apache2'
include_recipe 'apache2::logrotate'
include_recipe 'apache2::mod_fastcgi'
include_recipe 'apache2::mod_rewrite'
include_recipe 'apache2::iptables' if rhel?
