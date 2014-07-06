require 'spec_helper'

describe_recipe 'blp-bcpc::base' do
  it { expect(chef_run).to include_recipe('blp-bcpc::default') }
  it { expect(chef_run).to include_recipe('ubuntu::default') }
  it { expect(chef_run).to include_recipe('ceph::apt') }
  it { expect(chef_run).to include_recipe('ntp::default') }
  it { expect(chef_run).to include_recipe('selinux::disabled') }
end
