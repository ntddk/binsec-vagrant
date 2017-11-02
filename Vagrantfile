# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "v0rtex/xenial64"
  config.vm.network "forwarded_port", guest: 5570, host: 5570
  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = 8192
     vb.name = "BINSEC"
     vb.cpus = 2
  end
  
  config.vm.provision "shell", privileged: false, path: "bootstrap.sh"
  config.vm.provision "shell", privileged: false, path: "binsec.sh"
end

