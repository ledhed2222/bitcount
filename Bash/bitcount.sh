#!/bin/bash
BITS=64

input=$1
if [[ -z "$input" ]]
then
  echo "You must enter a number!"
  exit 1
fi

if ! [[ $input =~ ^-?[0-9]+$ ]]
then
  echo "${input} is not a number!"
  exit 1
fi

count=0
for (( i = 0; i < $BITS; i++ ))
do
  if (( $input & 1 ))  
  then
    let "count += 1"
  fi
  let "input = input >> 1"
done
echo $count
