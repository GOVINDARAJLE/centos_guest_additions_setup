#!/bin/bash
yum -y install epel-release


yum -y update
yum -y upgrade

yum install make gcc kernel-headers kernel-devel perl dkms bzip2 -y 

export KERN_DIR=/usr/src/kernels/$(uname -r)

mount -r /dev/cdrom /media

cd /media/

./VBoxLinuxAdditions.run



