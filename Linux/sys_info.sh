#!/bin/bash
echo "System Information as of" $(date)
echo  $(uname)
echo $(ip -o address)
echo $(hostname)
