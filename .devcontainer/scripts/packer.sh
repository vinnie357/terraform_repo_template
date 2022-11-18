#!/bin/bash
echo "---installing packer---"
packerVersion="1.8.4"
sudo wget https://releases.hashicorp.com/packer/$packerVersion/packer_"$packerVersion"_linux_amd64.zip
sudo unzip ./packer_"$packerVersion"_linux_amd64.zip -d /usr/local/bin/
sudo rm ./packer_"$packerVersion"_linux_amd64.zip
echo "---packer done---"
