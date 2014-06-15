#
# Cookbook Name:: blp-bcpc
# Recipe:: bootnode
#
# Copyright (C) 2013, 2014 Bloomberg Finance L.P.
#
include_recipe 'blp-bcpc::default'
include_recipe 'blp-bcpc::base'

include_recipe 'cobbler::default'
include_recipe 'cobbler::web'

cobbler_isos_dir = File.join(node[:bcpc][:bootnode][:cobbler][:dir], 'isos')
directory cobbler_isos_dir do
  recursive true
  not_if { Dir.exist? cobbler_isos_dir }
end

# If images were specified as node attributes we should download them to
# the guest machine so that cobbler can kickstart with them.
node[:bcpc][:bootnode][:cobbler][:images].each_pair do |name, uri|
  remote_file File.join(cobbler_isos_dir, "#{name}.iso") do
    source uri
    action :create_if_missing
  end
end
