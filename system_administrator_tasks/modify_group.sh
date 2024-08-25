#!/bin/bash

GROUPNAME=$(whiptail --inputbox "Enter the group name to modify" 8 39 --title "Modify Group" 3>&1 1>&2 2>&3)
NEWGROUPNAME=$(whiptail --inputbox "Enter the new group name" 8 39 --title "Modify Group" 3>&1 1>&2 2>&3)

if [ -n "$GROUPNAME" ] && [ -n "$NEWGROUPNAME" ]; then
    groupmod -n "$NEWGROUPNAME" "$GROUPNAME"
    whiptail --msgbox "Group $GROUPNAME renamed to $NEWGROUPNAME" 8 45
else
    whiptail --msgbox "Group modification failed" 8 45
fi
