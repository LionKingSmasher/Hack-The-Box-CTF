#!/bin/bash

qemu-system-x86_64 \
    -m 128M \
    -nographic \
    -kernel ./bzImage \
    -append 'console=ttyS0 loglevel=3 oops=panic panic=1 kaslr' \
    -monitor /dev/null \
    -initrd ./edit.cpio.gz  \
    -cpu qemu64 \
    -smp cores=2

