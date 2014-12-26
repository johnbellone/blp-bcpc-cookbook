require 'spec_helper'

describe_recipe 'blp-bcpc::bootnode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::default') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_cobbler') }
end
