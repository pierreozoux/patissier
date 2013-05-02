#!/bin/bash
# I know it's a dirty script... But it works :)

if [ "$2" == "test" ]; then 
  TEST=true
else
  TEST=false
fi


if $TEST; then 
  folder="/tmp"
else
  folder="/boot"
fi

cmdline=$(echo $folder/cmdline.txt)

PartitionNumber=$1

# Sorry for this uglyness, but this is the only way to make the command work
# on mac and linux....

sed -e "s/mmcblk0p[0-9]/mmcblk0p$PartitionNumber/g" -i~ $cmdline
