# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.vm.define 'default' do |node|
    node.vm.hostname = 'gregoriomelo'
    node.vm.network :private_network, ip: '192.168.42.42'
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.extra_vars = { ansible_python_interpreter: "/usr/bin/python3" }
    ansible.sudo = true
  end
end
