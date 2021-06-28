#!/bin/bash

echo
echo
echo "On the date (MMDD):" $3

if [[ $4 == "B"* ]];
then
    echo -e "The time (HH:MM:SS AM/PM) and the name of the Blackjack Dealer is:\n"
    grep -w "$1" ./$3_Dealer_schedule | grep -w -i "$2" | awk -F" " '{print $1, $2, "   ", $3, $4}'

elif [[ $4 == "R"* ]];
then
    echo -e "The time (HH:MM:SS AM/PM) and the name of the Roulette Dealer is:\n"
    grep -w "$1" ./$3_Dealer_schedule | grep -w -i "$2" | awk -F" " '{print $1, $2, "   ", $5, $6}'

elif [[ $4 == "T"* ]];
then
    echo -e "The time (HH:MM:SS AM/PM) and the name of the Texas Hold_EM Dealer is:\n"
    grep -w "$1" ./$3_Dealer_schedule | grep -w -i "$2" | awk -F" " '{print $1, $2, "   ", $7, $8}'

fi

echo
echo


