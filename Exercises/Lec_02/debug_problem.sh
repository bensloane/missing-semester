#! /bin/bash

num_runs=0
while [ 1 ]; do
	./problem.sh >>/tmp/missing/out.txt 2>>/tmp/missing/err.txt
	if [[ $? -ne 0 ]]; then
		cat /tmp/missing/out.txt
		cat /tmp/missing/err.txt
		echo $num_runs
		break
	fi
	let num_runs=num_runs+1
done
