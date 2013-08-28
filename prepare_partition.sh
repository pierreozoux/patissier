# Draft 


Memory split

fdisk /dev/mmcblk0

n
p
3
3788800
+6G


n
p
4
16371712
+6G

w

reboot

sudo mkfs.ext4 /dev/mmcblk0p3
mkdir /mnt/cooked
sudo mount /dev/mmcblk0p3 /mnt/cooked/

install ruby
install chef

sudo cp -ax / /mount/wheezy/
vi /mount/wheezy/etc/fstab
