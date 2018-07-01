#!/bin/bash

function msg {
  echo "${1}"
}

msg "installing pip"
yum -y install epel-release
yum -y install python-pip

pip --version

msg "installing python dev tools"
yum -y install python-devel
yum -y groupinstall 'development tools'

msg "installing virtualenv"
pip install virtualenv

msg "installing gunicorn and flask in virtualenv"
mkdir /var/appenv
(
  cd /var/appenv;
  virtualenv myprojenv;
  source myprojenv/bin/activate;
  pip install gunicorn flask;
  deactivate;
)

msg "complete"
