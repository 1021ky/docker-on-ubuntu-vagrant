# docker-on-ubuntu-vagrant
run docker with vagrant provider through remote docker host on ubuntu

## prerequirement
install the following tools
- vagrant (>=1.9.4 but 1.9.5-2.0 doesn't work on windows)
- virtualbox
- powershell(>=3.0 on only windows)

## run docker
on root directory, ```vagrant up```

*on first time, needs much time for install box images and docker tools

## stop docker
on root directory, run ```vagrant halt```

## destroy docker container
on root directory, run ```vagrant destroy```

## change syncfolder
change following two files. 
- ./ubuntu-vagrant/Vagranfile: config.vm.synced_folder {OS dir}, {proxyVM dir}
- ./Vagrantfile: config.vm.synced_folder {proxyVM dir}, {docker container dir}

on root directory, run following commands.

```cd ubuntu-vagrant```

```vagrant reload```

```cd ..```

```vagrant reload```

## [notice] before shutdown PC
stop docker and run following commands.

```cd ubuntu-vagrant```

 ```vagrant halt```

