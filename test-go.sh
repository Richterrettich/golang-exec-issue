#!/bin/bash

for i in $@
do
    echo "running test on $i"
	echo
    docker run \
		-it \
		--volume ${PWD}/strange-exit-code:/usr/local/bin/strange-exit-code:z \
		--rm \
		$i \
		/usr/local/bin/strange-exit-code
	echo
done