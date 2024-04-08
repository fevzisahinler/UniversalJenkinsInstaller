#!/bin/bash

echo "How would you like to install Jenkins? docker/linux"
read install_type

if [ "$install_type" == "docker" ]; then
 echo "Enter the mount path to use in the Docker container for Jenkins:"
 read mount_path
 ansible-playbook -i inventory/host.ini main.yml -e "e mount_path=$mount_path"
else
 ansible-playbook -i inventory/host.ini main.yml -e "install_type=$install_type"
fi
