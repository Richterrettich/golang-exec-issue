#!/bin/bash

for i in "centos:7.7.1908" "centos:7.6.1810"
do
    echo "running test on $i"
    echo 
    for j in $(ls verification)
    do 
        docker run \
            -it \
            --volume ${PWD}/verification/$j:/usr/local/bin/verify:z \
            --rm \
            $i \
            /usr/local/bin/verify
        echo
    done
   
done