require 'spec_helper'

describe_recipe 'blp-bcpc::bootnode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::base') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-cobbler') }
end
