require 'spec_helper'

describe_recipe 'blp-bcpc::default' do
  it { expect(chef_run).to include_recipe('chef-sugar::default') }
  it { expect(chef_run).to include_recipe('chef-vault::default') }
  it { expect(chef_run).to include_recipe('chef-provisioning::default') }
  it { expect(chef_run).to include_recipe('ntp::default') }
  it { expect(chef_run).to include_recipe('selinux::disabled') }

  context %Q(node['platform'] = 'ubuntu' AND node['platform_version'] = '12.04') do
    it { expect(chef_run).to include_recipe('ubuntu::default') }
    it { expect(chef_run).to include_recipe('ceph::apt') }
  end

  context %Q(node['platform'] = 'redhat' AND node['platform_version'] = '6.5') do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'redhat', version: '6.5').converge(described_recipe) }
    it { expect(chef_run).to include_recipe('yum::default') }
    it { expect(chef_run).to include_recipe('yum-epel::default') }
    it { expect(chef_run).to include_recipe('ceph::rpm') }
  end
end
