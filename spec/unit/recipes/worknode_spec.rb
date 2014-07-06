require 'spec_helper'

describe_recipe 'blp-bcpc::worknode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::base') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-ceph') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-chef') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-ldap') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-logstash') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-psql') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-ssh') }
  it { expect(chef_run).to include_recipe('blp-bcpc::configure-zabbix') }
end
