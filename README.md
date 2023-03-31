# QEMU-KVM-automation
This script will help you to create a qemu/kvm virtual machine on your external hard drive

### Requirements:
- Make sure that QEMU/KVM is already installed on your linux machine

### If they're not installed then copy paste this commands
- Update your system first
``` 
#First update your machine with below command
#--------------------------------------------------------------------------------------------

#For Debian based Distros like Ubuntu, Mint
sudo apt update && sudo apt upgrade -y

#For Arch based Distros like Manjaro, Arco
pacman -Syyu --needed

#For Fedora
sudo dnf update

#For Gentoo 
sudo emerge --sync && sudo emerge -uDN --with-bdeps=y @world

#For OpenSUSE
sudo zypper refresh && sudo zypper update

#For Void
sudo xbps-install -Su 

#For Alpine
sudo apk update && sudo apk upgrade

#----------------------------------------------------------------------------------------------
```
### Then copy paste this commands for installing all QEMU/KVM dependencies
```
#----------------------------------------------------------------------------------------------------
#For Debian based Distros like Ubuntu, Mint
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For Arch based Distros like Manjaro, Arco
sudo pacman -S --needed qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For Fedora
sudo dnf install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For Gentoo 
sudo emerge qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For OpenSUSE
sudo zypper qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For Void
sudo xbps-install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#For Alpine
sudo apk add qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

#--------------------------------------------------------------------------------------------------------

```
### Then install this script file 
- Edit it's `<user_name>/<your_harddrive_name>/<folder_to_store_vm>` to your user_name and external hard-drive name

~~cd '/run/media/<user_name>/<your_harddrive_name>/<folder_to_store_vm>'~~
```
#As per **john** and his **VM** folder inside **1TB** external harddisk...
cd '/run/media/john/1.0TB/VM'
```
``` 
sudo chmod +x qemu-diskmaker.sh #this is make the file executable

bash qemu-diskmaker.sh
```
- Give it root permission to run the QEMU/KVM and all set!!!
