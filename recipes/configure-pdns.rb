#
# Cookbook Name:: blp-bcpc
# Recipe:: configure-apache
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'

include_recipe 'pdns::server'
