#
# Cookbook Name:: blp-bcpc
# Attribute:: vault
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
default['vault']['bag_name'] = 'secrets'
default['vault']['admins'] = %w(jbellone)
default['vault']['search_query'] = "tags:blp.bcpc AND chef_environment:%(environment)"
