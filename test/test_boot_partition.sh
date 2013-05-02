#!/bin/bash

# Launch it from your working directory

cp ./test/in_cmdline.txt /tmp/cmdline.txt

./boot_partition.sh 3 test

diff /tmp/cmdline.txt ./test/out_cmdline.txt >/dev/null 2>&1
if [ $? -eq 0 ]
then
    echo "Test Ok"
else
    echo "Fail!!!!!!!"
fi
