require 'spec_helper'

describe_recipe 'blp-bcpc::worknode' do
  it { expect(chef_run).to include_recipe('blp-bcpc::default') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_apache') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_ceph') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_chef') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_firewall') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_ldap') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_logstash') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_pdns') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_psql') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_ssh') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_rabbitmq') }
  it { expect(chef_run).to include_recipe('blp-bcpc::_zabbix') }
end
