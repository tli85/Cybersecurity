#!/bin/bash

if [ ! -d ~/research ] 
then 
mkdir ~/research
fi

if [ -f ~/research/sys_info.txt ]
then
rm ~/research/sys_info.txt
fi

