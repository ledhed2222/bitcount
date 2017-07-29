#!/bin/bash
input=$1
if [[ -z "$input" ]]
then
	echo "You must enter a number!"
	exit
fi
count=0
for i in {0..31}
do
	if (( $input & 1 ))  
	then
		let "count += 1"
	fi
	let "input = input >> 1"
done
echo $count
