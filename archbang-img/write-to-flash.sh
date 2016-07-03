#!/bin/bash

index=1;

sudo fdisk -l | grep Disk
echo -n "Enter flash drive [ex. /dev/sdb,/dev/sdc]: "
read drive

echo "ArchBang image will be write to $drive, all data in flash drive will be erased!"
echo -n "Erase $drive bootloader? {y,n}: "

read choose

if [ "$choose" = "y" ]; then 
	echo "Erasing ..."
#	sudo umount $drive*
	for i in {1..4}; do sudo umount $drive$i; done
	sudo dd if=/dev/zero of=$drive bs=446 count=1
else
#elif [ "$choose" != "y" ]; then
	echo "Using exist bootloader..."
fi

echo -n "Write new partition table to the $drive? {y,n}: "

read choose

if [ "$choose" = "y" ]; then 
	echo "Writing ..."
	(echo n; echo p; echo "1"; echo ""; echo ""; echo w) | sudo fdisk $drive
	sudo partprobe
	sudo mkfs -t ext4 $drive$index
else
#elif [ "$choose" != "y" ]; then
	echo "Using exist partition table..."
fi

IMAGE="archbang-last.img"
GRUBCFG="grub.cfg"
DRIVESIZE=`lsblk --output SIZE -b $drive$index | awk "NR == 2"`
IMGSIZE=`du -b $IMAGE | awk '{print $1}'`

if [ ! -e "$IMAGE" ]; then
	echo "No source image in script directory! Downloading... "
#	wget --tries 10  -o download.log

else
	echo "Size of $drive$index is $DRIVESIZE"
	echo "Size of $IMAGE is $IMGSIZE"

	diff=$(echo "scale=0;($DRIVESIZE-$IMGSIZE)/(10^6)" | bc -l)

	echo "Begin escalation of image to size of flash drive... Writing $diff MB"
	dd if=/dev/zero bs=1MB count=$diff >> $IMAGE
	e2fsck -f $IMAGE
	resize2fs $IMAGE
fi

echo -n "Write image to flash disk?{y,n}: "

read choose

if [ "$choose" = "y" ]; then
	echo "Writing to $drive$index with dd..."
	sudo dd if=$IMAGE of=$drive bs=1MB 
	echo "End of writing."
	
else
	echo "Image not was wrote to flash drive."
fi

echo -n "Write grub to flash drive?{y,n}: "

read choose

if [ "$choose" = "y" ]; then

	if [ ! -e "$GRUBCFG" ]; then
		echo "Cannot write grub.cfg!"
	else
		sudo grub-install $drive
		if [ ! -d "mountdir" ]; then
			mkdir mountdir
		fi
		sudo umount $drive*
		sudo mount -t ext4 $drive$index mountdir
		sudo cp -f grub.cfg /boot/grub/grub.cfg
		sudo umount $drive$index
	fi
else
	echo "Grub will not installed."
fi


