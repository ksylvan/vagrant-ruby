# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant configuration for hacking on ruby code.
# Grabs the ruby GIT repo, compiles it and installs in the VM.
#
Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  ARCH=32
  # ARCH=64
  config.vm.box = "precise#{ARCH}"
  config.vm.box_url = "http://files.vagrantup.com/precise#{ARCH}.box"

  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.hostname = "ruby-dev"
  config.vm.provision :shell, :inline => "sudo apt-get update --fix-missing"
  config.vm.provision :puppet do |p|
    p.manifests_path = "manifests"
    p.manifest_file = "init.pp"
  end
  #config.vm.provision :shell, :path => "setup.sh"

end
