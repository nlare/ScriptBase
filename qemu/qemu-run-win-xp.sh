#!/bin/bash
qemu-system-x86_64 \
	-name win_xp_prof_sp3
   	-L Bios \
   	-vga qxl \
   	-enable-kvm \
   	-cpu host,kvm=on \
	-smp cores=1,threads=1,sockets=1 \
   	-m 1024 \
   	-drive file=/net/NAS/qemu_img/win_xp_prof_sp3.img \
	-soundhw es1370 \
	-cdrom /net/NAS/Images/virtio-win-0.1.102.iso \
	-net nic,macaddr=08:00:27:7a:8f:c9,model=rtl8139 \
	-net user,net=192.168.10.0/24 \
   	-spice port=5900,addr=127.0.0.1,disable-ticketing
	#	-net tap,ifname=net0b,script=no,downscript=no
#	-netdev user,id=vmnic -device virtio-net,netdev=vmnic \
