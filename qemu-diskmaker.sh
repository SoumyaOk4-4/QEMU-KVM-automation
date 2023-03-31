#!/bin/bash/

cd
cd '/run/media/<user_name>/<your_harddrive_name>/<folder_to_store_vm>'

sudo echo 'Enter OS name: '
read name

echo 'Enter Disk space: '
read space

qemu-img create -f qcow2 ${name}.qcow2 ${space}G

sudo virt-manager
