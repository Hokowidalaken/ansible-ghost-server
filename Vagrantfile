# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = "ghostblog"
  config.vm.network "forwarded_port", guest: 2368, host: 2368
  
  config.vm.provision "ansible" do |ansible| 
    ansible.playbook = "playbook.yml"
    ansible.verbose = '<vv></vv>'
  end
end
