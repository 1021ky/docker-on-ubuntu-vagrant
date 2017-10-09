# -*- mode: ruby -*-
# vi: set ft=ruby :

# set for using vagrant without --provider=docker
ENV["VAGRANT_DEFAULT_PROVIDER"] ||= "docker"

Vagrant.configure("2") do |config|
  # host <=> vagrant
  config.vm.network "private_network", ip: "192.168.50.5"
    config.vm.provider "docker" do |d|
      d.build_dir="."
      d.vagrant_vagrantfile = "ubuntu-vagrant/Vagrantfile"
      d.vagrant_machine = "ubuntu-vagrant"
      # hyperviser -> docker
      d.ports = ['8080:80']
      d.remains_running = true
      d.volumes=["/vagrant-apachelog:/usr/local/apache2/logs", 
                 "/vagrant-varlog:/var/log",
                 "/vagrant-htdocs:/usr/local/apache2/htdocs",
                ]
   end  
end
