# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.synced_folder "src/", "/vagrant"

  config.vm.provision "shell", inline: "sudo /vagrant/install.sh"
end
