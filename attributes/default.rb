#
# Cookbook Name:: blp-bcpc
# Attribute:: default
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#

override['chef-server']['configuration']['webui']['enabled'] = false
override['resolver']['nameservers'] = ['8.8.8.8', '8.8.4.4']
