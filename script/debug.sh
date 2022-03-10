#!/bin/bash
# run this script as root

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
fi

if [ "$1" != "" ]; then
  export MY_PWD="$1"
else
  export MY_PWD="123"
fi

export MY_USER="sonarqube"
chmod +x ./install.sh

sudo adduser $MY_USER --gecos ' '
sudo usermod -aG sudo $MY_USER
source install.sh



