#!/bin/sh
grep $1":00:00 "$2 0310_Dealer_schedule | awk '{print $1,$2, $5,$6}'
