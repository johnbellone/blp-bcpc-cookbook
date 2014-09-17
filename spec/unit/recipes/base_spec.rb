require 'spec_helper'

describe_recipe 'blp-bcpc::base' do
  context 'with ubuntu' do
    let(:chef_run) { ChefSpec::Runner.new(ubuntu_attributes).converge(described_recipe) }
    it { expect(chef_run).to include_recipe('blp-bcpc::default') }
    it { expect(chef_run).to include_recipe('ubuntu::default') }
    it { expect(chef_run).to include_recipe('ceph::apt') }
    it { expect(chef_run).to include_recipe('ntp::default') }
    it { expect(chef_run).to include_recipe('selinux::disabled') }
  end

  context 'with redhat' do
    let(:chef_run) { ChefSpec::Runner.new(redhat_attributes).converge(described_recipe) }
    it { expect(chef_run).to include_recipe('blp-bcpc::default') }
    it { expect(chef_run).to include_recipe('ubuntu::default') }
    it { expect(chef_run).to include_recipe('ceph::apt') }
    it { expect(chef_run).to include_recipe('ntp::default') }
    it { expect(chef_run).to include_recipe('selinux::disabled') }
  end
end
