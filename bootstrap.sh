#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" creates=/usr/local/Homebrew

brew install git ansible

sudo easy_install pip
sudo pip install paramiko PyYAML Jinja2 httplib2 six pycrypto

ansible-playbook -i /dev/null devenv.yml --ask-vault-pass -K
