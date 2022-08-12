#!/bin/sh

echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"
echo "----------------Installation TWRP Redmi 2--------------------"
echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"
echo "-------------------------------------------------------------"

adb kill-server
adb start-server
check=$(adb devices)

echo 
echo 
echo 
echo "--------Checking your device-----------"
echo 
if [ $(echo ${check##*device} | wc -w) -ne 0 ] ; then
    echo "Debug mode is not enabled. Make sure to activate it"
    echo 
    echo "--------Checking fastboot mode-----------"
    check=$(fastboot devices)
    if [ ${#check} -eq 0 ] ; then
        echo "> Check that your smartphone is properly connected"
    fi
fi


adb reboot bootloader

echo --------------Flashing TWRP-------------

fastboot erase recovery

echo

fastboot flash recovery recovery.img

echo

fastboot boot recovery.img
