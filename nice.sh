#!/bin/bash

time nice -n -20 su -c "dd if=/dev/zero of=/tmp/otus1.txt bs=2000 count=1M" &  time nice -n 18 su -c "dd if=/dev/zero of=/tmp/otus2.txt bs=2000 count=1M" &



#Результат

#1048576+0 records in
#1048576+0 records out
#2097152000 bytes (2.1 GB, 2.0 GiB) copied, 65.1354 s, 32.2 MB/s

#real    1m5.240s
#user    0m0.503s
#sys     0m2.711s

#1048576+0 records in
#1048576+0 records out
#2097152000 bytes (2.1 GB, 2.0 GiB) copied, 69.3112 s, 30.3 MB/s

#real    1m10.066s
#user    0m0.718s
#sys     0m3.499s
