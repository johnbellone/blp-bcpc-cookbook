require 'spec_helper'

describe_recipe 'blp-bcpc::headnode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::base') }
  it { expect(chef_run).to include_recipe('blp-bcpc::worknode') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-chef-server') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-pdns') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-rabbitmq') }
end
