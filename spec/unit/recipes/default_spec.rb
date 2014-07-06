require 'spec_helper'

describe_recipe 'blp-bcpc::default' do
  it { expect(chef_run).to include_recipe('chef-sugar::default') }
  it { expect(chef_run).to include_recipe('chef-vault::default') }
end
