#!/bin/bash

GROUPNAME=$(whiptail --inputbox "Enter the group name to delete" 8 39 --title "Delete Group" 3>&1 1>&2 2>&3)

if [ -n "$GROUPNAME" ]; then
    groupdel "$GROUPNAME"
    whiptail --msgbox "Group $GROUPNAME deleted successfully" 8 45
else
    whiptail --msgbox "Group deletion failed" 8 45
fi
