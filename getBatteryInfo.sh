#!/bin/bash

switch=$1

# Convert switch to lowercase
switch=$(echo $switch | tr '[:upper:]' '[:lower:]')

msg=""

# if switch contains p
if [[ $switch == *p* ]]; then
    # Get battery percentage
    batteryPercentage=$(ioreg -brc AppleSmartBattery | grep '"CurrentCapacity' | grep -o '[0-9]\+' | head -n1)
    msg="$msg $batteryPercentage%"
fi

# if switch contains t
if [[ $switch == *t* ]]; then
    # Get battery time (minutes)
    batteryTime=$(ioreg -brc AppleSmartBattery | grep '"TimeRemaining' | grep -o '[0-9]\+' | head -n1)
    
    hours=$(($batteryTime / 60))
    minutes=$(($batteryTime % 60))
    
    # if msg not empty
    if [[ $msg != "" ]]; then
        msg="$msg -"
    fi
    
    msg="$msg About $hours hours and $minutes minutes remaining"
fi

if [[ $msg == "" ]]; then
    batteryPercentage=$(ioreg -brc AppleSmartBattery | grep '"CurrentCapacity' | grep -o '[0-9]\+' | head -n1)
    msg="$msg $batteryPercentage% -"
    
    batteryTime=$(ioreg -brc AppleSmartBattery | grep '"TimeRemaining' | grep -o '[0-9]\+' | head -n1)
    
    hours=$(($batteryTime / 60))
    minutes=$(($batteryTime % 60))
    
    msg="$msg About $hours hours and $minutes minutes remaining"
fi

echo $msg