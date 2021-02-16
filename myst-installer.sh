#!/bin/sh

if (whoami != root)
    then echo "You need to execute this script as root (superuser)."
    exit
fi

echo "Downloading Myst Network..."
sudo add-apt-repository ppa:mysteriumnetwork/node
sudo apt-get update
sudo apt install myst

echo "Installing Myst..."
sudo -E bash -c "$(curl -s https://raw.githubusercontent.com/mysteriumnetwork/node/master/install.sh)"
echo "Myst installed!"


echo Node is on: $(curl https://ifconfig.me/):4449