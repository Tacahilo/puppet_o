# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'centos-6.4'
  config.vm.box_url = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box'

  config.vm.define :puppet_server do |ps_config|
    ps_config.vm.hostname = 'server.puppet.local'

    ps_config.vm.synced_folder '.', '/vagrant'

    ps_config.vm.network :forwarded_port, guest: 80, host: 8080
    ps_config.vm.network :private_network, ip: '10.0.0.100'
  end
end
