#!/bin/bash
# Install packages for Vagrant instance

# Install the latest chef
curl -L https://chef.io/chef/install.sh | sudo bash

# Update ubuntu packages
sudo apt-get update

# Install RVM
curl -sSL https://rvm.io/mpapis.asc | gpg --import
curl -sSL https://get.rvm.io | bash -s stable --ruby

vagrant_bashrc=/home/vagrant/.bashrc
echo 'export PATH="$PATH:$HOME/.rvm/bin"' >> $vagrant_bashrc
source $vagrant_bashrc 

cd /home/vagrant/wired7-demo
gem install bundler
