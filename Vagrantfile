Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.box = ENV.fetch('VAGRANT_BOX', 'opscode-ubuntu-12.04')

  config.vm.provider :virtualbox do |vb, override|
    vb.gui = true unless ENV['VAGRANT_HEADLESS']

    vb.customize ['modifyvm', :id, '--nictype2', '82543GC']
    vb.customize ['modifyvm', :id, '--memory', ENV.fetch('BCPC_VM_MEM', 1536)]
    vb.customize ['modifyvm', :id, '--cpus', ENV.fetch('BCPC_VM_CPU', 1)]

    %w(largepages nestedpaging vtxvpid hwvirtex ioapic).each do |name|
      vb.customize ['modifyvm', :id, "--#{name}", 'on']
    end

    unless ENV['VAGRANT_BOX']
      override.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box'
    end
  end

  config.vm.provider :vmware_fusion do |vx, override|
    vx.gui = true unless ENV['VAGRANT_HEADLESS']
    vx.vmx['memsize'] = ENV.fetch('BCPC_VM_MEM', 1536)
    vx.vmx['numvpus'] = ENV.fetch('BCPC_VM_CPU', 1)

    unless ENV['VAGRANT_BOX']
      override.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/vmware/opscode_ubuntu-12.04_chef-provisionerless.box'
    end
  end

  config.vm.define :bootnode, primary: true do |guest|
    guest.vm.hostname = 'bcpc-bootnode'
    guest.vm.network :forwarded_port, guest: 80, host: 8080

    guest.vm.network :private_network, {
      ip: '10.0.100.3',
      netmask: '255.255.255.0',
      adapter_ip: '10.0.100.2'
    }

    guest.vm.network :private_network, {
      ip: '172.16.100.3',
      netmask: '255.255.255.0',
      adapter_ip: '172.16.100.2'
    }

    guest.vm.network :private_network, {
      ip: '192.168.100.3',
      netmask: '255.255.255.0',
      adapter_ip: '192.168.100.2'
    }

    guest.vm.provision :chef_solo do |chef|
      chef.run_list = [ 'recipe[blp-bcpc::bootnode]' ]
      chef.json = { }
    end
  end
end
