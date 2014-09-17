require 'spec_helper'

describe_recipe 'blp-bcpc::default' do
  context 'with ubuntu 12.04' do
    it { expect(chef_run).to include_recipe('chef-sugar::default') }
    it { expect(chef_run).to include_recipe('chef-vault::default') }
    it { expect(chef_run).to include_recipe('chef-metal::default') }
  end

  context 'with redhat 6.5' do
    let(:chef_run) { ChefSpec::Runner.new(platform: 'redhat', version: '6.5').converge(described_recipe) }
    it { expect(chef_run).to include_recipe('chef-sugar::default') }
    it { expect(chef_run).to include_recipe('chef-vault::default') }
    it { expect(chef_run).to include_recipe('chef-metal::default') }
  end
end
