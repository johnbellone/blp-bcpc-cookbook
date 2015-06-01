require 'spec_helper'

describe_recipe 'blp-bcpc::default' do
  cached(:chef_run) { Chef::SoloRunner..converge(described_recipe) }
  it { expect(chef_run).to include_recipe('chef-sugar::default') }
  it { expect(chef_run).to include_recipe('ntp::default') }
  it { expect(chef_run).to include_recipe('resolver::default') }
  it { expect(chef_run).to include_recipe('selinux::disabled') }
  it { expect(chef_run).to include_recipe('os-hardening::default') }
  it { expect(chef_run).to include_recipe('ssh-hardening::default') }
  it { expect(chef_run).to include_recipe('postgresql::client') }
  it { expect(chef_run).to include_recipe('chef-client::config') }
  it { expect(chef_run).to include_recipe('chef-client::cron') }
  it { expect(chef_run).to include_recipe('chef-client::delete_validation') }

  context 'with default attributes' do
    it { expect(chef_run).to include_recipe('ubuntu::default') }
    it { expect(chef_run).to include_recipe('ceph::apt') }

    it 'converges successfully' do
      chef_run
    end
  end

  context "with node['platform'] = 'redhat' AND node['platform_version'] = '7.1'" do
    cached(:chef_run) { Chef::SoloRunner.new(platform: 'redhat', version: '7.1').converge(described_recipe) }
    it { expect(chef_run).to include_recipe('yum::default') }
    it { expect(chef_run).to include_recipe('yum-epel::default') }
    it { expect(chef_run).to include_recipe('ceph::rpm') }

    it 'converges successfully' do
      chef_run
    end
  end

  context "with node['platform'] = 'centos' AND node['platform_version'] = '7.1'" do
    cached(:chef_run) { Chef::SoloRunner.new(platform: 'centos', version: '7.1').converge(described_recipe) }
    it { expect(chef_run).to include_recipe('yum::default') }
    it { expect(chef_run).to include_recipe('yum-epel::default') }
    it { expect(chef_run).to include_recipe('yum-centos::default') }
    it { expect(chef_run).to include_recipe('ceph::rpm') }

    it 'converges successfully' do
      chef_run
    end
  end
end
