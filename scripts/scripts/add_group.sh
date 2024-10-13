#!/bin/bash

GROUPNAME=$(whiptail --inputbox "Enter the group name" 8 39 --title "Add Group" 3>&1 1>&2 2>&3)

if [ -n "$GROUPNAME" ]; then
    groupadd "$GROUPNAME"
    whiptail --msgbox "Group $GROUPNAME added successfully" 8 45
else
    whiptail --msgbox "Group addition failed" 8 45
fi
