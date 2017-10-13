# -*- mode: ruby -*-
# vi: set ft=ruby :

# TODO: set environment variable export DOCKER_HOST=tcp://127.0.0.1:2375 before use

# set for using vagrant without --provider=docker
ENV["VAGRANT_DEFAULT_PROVIDER"] ||= "docker"

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://{proxy_ip}:{proxy_port}"
    config.proxy.https    = "http://{proxy_ip}:{proxy_port}"
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end

  # host <=> vagrant
  config.vm.provider "docker" do |d|
    d.force_host_vm = true
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
