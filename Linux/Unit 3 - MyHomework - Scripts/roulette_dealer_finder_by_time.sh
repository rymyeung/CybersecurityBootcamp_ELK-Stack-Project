#!/bin/bash

echo
echo
echo "On the date (MMDD):" $1 
echo -e "The time (HH:MM:SS AM/PM) and the name of the Roulette Dealer is:\n"
grep -w "$2" ./$1_Dealer_schedule | grep -w -i "$3" | awk -F" " '{print $1, $2, "   ", $5, $6}'
echo
echo

