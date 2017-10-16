# docker-on-ubuntu-vagrant
run docker with vagrant provider through remote docker host on ubuntu

## prerequirement
install the following tools
- vagrant (>=1.6)
- virtualbox
- powershell(>=3.0 on only windows)

## run docker
on root directory, ```vagrant up```

*on first time, needs much time for install box images and docker tools

## stop docker
on root directory, run ```vagrant halt```

## destroy docker container
on root directory, run ```vagrant destroy```

## before shutdown PC
stop docker and move ubuntu-vagrant dicrectory, run ```vagrant halt```


