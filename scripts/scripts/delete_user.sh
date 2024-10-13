#!/bin/bash

USERNAME=$(whiptail --inputbox "Enter the username to delete" 8 39 --title "Delete User" 3>&1 1>&2 2>&3)

if [ -n "$USERNAME" ]; then
    userdel -r "$USERNAME"
    whiptail --msgbox "User $USERNAME deleted successfully" 8 45
else
    whiptail --msgbox "User deletion failed" 8 45
fi
