#!/bin/bash
IMAGE_DIR="/home/abdallah/Documents/YOCTO/build/tmp/deploy/images/qemuarm"
IMAGE="example-image-qemuarm-20230927091655.rootfs.tar.bz2"

select option in Flash Erase
do 
	case ${option} in 
	Flash)
	        echo " ----------- flashing right now ----------- "
                time sudo dd if=${IMAGE_DIR}/${IMAGE} of=/dev/sda bs=300M
		break	
	;;
	Erase)
		echo " ----------- erasing right now ----------- "
		sudo umount /dev/sda1
		sudo umount /dev/sda2
                time sudo dd if=/dev/zero of=/dev/sda bs=6000 count=1000
	break
	;;
	*)
		echo "usage 1) for flash     2) for erase "
	;;
	esac
		
done 
