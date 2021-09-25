#!/bin/bash
#Input Date($1) and Time($2)
#Output roulette dealer for specific time

Str=$2

subStr1=${Str:0:2}
subStr2=${Str:2:1}

if [ $subStr2 = a ] || [ $subStr2 = A ]
then 
	subStr3="AM"
else
	subStr3="PM"
fi
grep $subStr1":00:00 "$subStr3 $1_Dealer_schedule | awk '{print $1,$2, $5,$6}'

