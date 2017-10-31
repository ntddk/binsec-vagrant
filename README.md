# binsec-vagrant
Easy to use [BINSEC](http://binsec.gforge.inria.fr/) Vagrant image.

## Quick Start

```sh
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.1 virtualbox-dkms vagrant
vagrant up
```

