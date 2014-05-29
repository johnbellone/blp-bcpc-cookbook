Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true

  config.vm.define :bootstrap, primary: true do |guest|
    guest.vm.network :private_network, ip: '33.33.33.10'
    guest.vm.provision :chef_solo do |chef|
      chef.run_list = ['blp-bcpc::bootstrap']
    end
  end
end
