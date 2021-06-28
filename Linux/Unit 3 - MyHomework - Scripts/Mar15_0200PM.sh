#!/bin/bash

grep -w "02:00:00 PM" ./0315_Dealer_schedule | awk -F" " '{print $1, $2, "   ", $5, $6}' >> Dealers_working_during_losses
