#
# Cookbook Name:: blp-bcpc
# Library:: util
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
def get_all_nodes
  nodes = search(:node, "chef_environment=#{node.chef_environment} NOT name:#{chef.name}")
  nodes << node
  nodes
end

def get_head_nodes
  nodes = search(:node, "tag:bcpc.headnode AND chef_environment=#{node.chef_environment} NOT name:#{chef.name}")
  nodes << node
  nodes
end

def get_work_nodes
  nodes = search(:node, "tag:bcpc.worknode AND chef_environment=#{node.chef_environment} NOT name:#{chef.name}")
  nodes << node
  nodes
end
