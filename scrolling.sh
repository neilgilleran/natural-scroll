#!/bin/bash
#title           :scrolling.sh
#description     :This script will work in conjunction with separte alias's to alter the scrolling behaviour of a mouse/pointer device on a centos/rhel *nix system
#author		     :nrg
#date            :06.02.2020
#version         :0.1
#usage           :how to undo/redo reverse scroll on the mouse:
#usage run ./scrolling.sh 0 to set natural scroll
#usage run ./scrolling.sh * to set unnatural scroll


#We need to get the following vars: $x_id and $x_list_num

#we will use an arg to set the $config variable
arg=$1

#this will get x_id
x_id=`xinput list | grep -e '↳ Logitech Unifying Device. Wireless PID' | awk {'print $8'} | head -1 | cut -c4-5`

#this will get x_list_num
x_list_num=`xinput list-props 10 | grep "Scrolling Distance" | awk '{print $4}' |  sed -e 's/(\(.*\)):/\1/'`

if [ $arg -eq 0 ]; then
   echo "Natural scroll set, -1 -1 -1"
   conf="-1 -1 -1 "
else
   echo "Unnatural scroll set, 1 1 1"
   conf="1 1 1 "
fi

echo $x_id 
echo $x_list_num 
echo $conf

#natual scroll is the following:
`xinput set-prop $x_id $x_list_num $conf`

echo "Enjoy scrolling..."

##finally create an alias for it
#put this in your ~/.bashrc file
#alias unnatural_scroll='/home/neil/Documents/./scrolling.sh 1'
#alias natural_scroll='/home/neil/Documents/./scrolling.sh 0'