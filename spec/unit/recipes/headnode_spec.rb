require 'spec_helper'

describe_recipe 'blp-bcpc::headnode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::worknode') }
end
