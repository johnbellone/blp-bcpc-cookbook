require 'spec_helper'

describe_recipe 'blp-bcpc::default' do
  cached(:chef_run) { Chef::SoloRunner..converge(described_recipe) }
  it { expect(chef_run).to include_recipe('blp-bcpc::default') }
  it { expect(chef_run).to include_recipe('ceph::mon') }
  it { expect(chef_run).to include_recipe('ceph::radosgw') }
  it { expect(chef_run).to include_recipe('pdns::recursor') }
  it { expect(chef_run).to include_recipe('rabbitmq-cluster::slave') }

  context 'with default attributes' do
    it 'converges successfully' do
      chef_run
    end
  end
end
