#!/bin/bash

GROUPS=$(awk -F: '$3 >= 1000 {print $1}' /etc/group)
whiptail --msgbox "Groups:\n$GROUPS" 20 60
